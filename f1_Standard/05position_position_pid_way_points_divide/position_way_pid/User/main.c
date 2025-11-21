#include "stm32f10x.h"                  // Device header
#include "Delay.h"
#include "OLED.h"
#include "Key.h"
#include "Timer.h"
#include "led.h"
#include "Serial.h"
#include "string.h"
#include "adc.h"
#include "motor.h"
#include "encoder.h"
#include <math.h>
uint16_t Num1;
uint16_t Num2;

int16_t A_Speed, B_Speed;
int16_t A_Location, B_Location;

extern LED_TypeDef g_leds[MAX_LED_COUNT];
void serialTest(void);
void ledTest(void);
void keyTest(void);
void adcTest(void);
void motorTest(void);
void encoderTest(void);

/*
要解决的问题：积分项作用一般位于调控后期，用来消除持续的误差，调控前期一般误差较大且不需要积分项作用，
如果此时仍然进行积分，则调控进行到后期时，积分项可能已经累积了过大的调控力，这会导致超调
积分分离实现思路：对误差大小进行判断，如果误差绝对值小于指定阈值，则加入积分项作用，反之，则直接将误差积分清零或不加入积分项作用
*/
float Target, Actual, Out;		//目标，实际，输出
float Kp, Ki, Kd;				//比例，积分，微分
float Error0, Error1, ErrorInt;//本次误差，上次误差，误差积分
//调节ki和kd，加了ki会出现超调
//实际值和目标值之间有较小的误差，主要原因是，误差太小，误差*kp是p项输出的力，这个力太小，无法驱动电机转动
//解决：误差持续产生时，输出的调控力要增大，这样才能确保误差消失，这就是积分项的作用，加了ki可以解决误差和输出力不足，但会出现超调，超调是积分项导致的，并且加kd没办法解决超调
//定速控制用pi控制器，不会超调，虽然i项也积累了很大的力。但是最终要维持速度稳定，需要对抗摩擦力，而i项累计的力正好抵消摩擦力，所以速度就会直接恒定下来
//定位控制的积分项工作过程：首先目标大于实际，误差过大，p项输出正的很大的力，i项逐渐积累一个正向的力，随后实际值逐渐靠近目标值，直到实际值=目标值，误差为0,p项不输出力了，而i项
//i项之前一直都在积累一个正向的力，当实际值=目标值时，i项刚达到最大的正向驱动力，而定位控制，想要位置恒定是不需要输出力的，如果i项还在输出力那电机就会转动，位置就不可能恒定
//所以此时的实际位置必然超过目标值，超过目标后，误差为负数，p项立马输出反向的力，而i项仍然输出正向调控力，只不过现在是反向积累了。用来抵消之前累计过大的正向驱动力，当正反积分抵消后
//实际值重新和目标重合此时p项输出0.i项。经过一正一反的累计也抵消了，也输出0这样最终的目标才能固定。超调的面积实际=前面的面积。、
//误差比较小pid控制器，误差太大，使用pd控制器把i项分离出去不用了
//0.12,0.08,0.10
int main(void)
{

	/*
	PA13	JTMS/SWDIO
	PA14	JTCK/SWCLK
	PA15	JTDI
	PB3		JTDO
	PB4		NJTRST
	*/	
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO|RCC_APB2Periph_GPIOA|RCC_APB2Periph_GPIOB, ENABLE);	 //使能相应接口的时钟，以及RCC_APB2Periph_AFIO
	// GPIO_PinRemapConfig(GPIO_Remap_SWJ_Disable, ENABLE);//完全禁用SWD及JTAG 
	GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable, ENABLE);     //禁用JTAG


	oledInit();
	ledInit();
	keyInit();
	timerInit(72 - 1, 1000 -1);

	serialInit(115200);
	serialPrintf("start\r\n");

	adcInit();
	
	motorABInit();
	encoderAInit();
	encoderBInit();

	oledShowString(0, 48, "Hello,世界", OLED_8X16);
	oledUpdate();
	delayMs(3000);
	oledClear();

#if HEX_MODE == 1 || STRING_MODE ==1
	oledShowString(0, 0, "TxPacket", OLED_8X16);
	oledShowString(0, 32, "RxPacket", OLED_8X16);
#endif
	while (1)
	{
		oledUpdate();

		// serialTest();
		// ledTest();
		// keyTest();
		// adcTest();
		// encoderTest();
     	// motorTest();
		oledShowString(0, 0, "Speed Control", OLED_8X16);

		Kp = adcGetValue(1) / 4095.0 * 2;
		Ki = adcGetValue(2) / 4095.0 * 2;
		Kd = adcGetValue(3) / 4095.0 * 2;
		Target = adcGetValue(4) / 4095.0 * 2640 - 1320;//目标
		oledPrintf(0, 16, OLED_8X16, "Kp:%4.2f", Kp);
		oledPrintf(0, 32, OLED_8X16, "Ki:%4.2f", Ki);
		oledPrintf(0, 48, OLED_8X16, "Kd:%4.2f", Kd);
		
		oledPrintf(64, 16, OLED_8X16, "Tar:%+04.0f", Target);
		oledPrintf(64, 32, OLED_8X16, "Act:%+04.0f", Actual);
		oledPrintf(64, 48, OLED_8X16, "Out:%+04.0f", Out);
		serialPrintf("%f,%f,%f\r\n", Target, Actual, Out);
	}
}
void TIM1_UP_IRQHandler(void)
{
	static uint16_t Count;
	static uint16_t heartCount;
	if (TIM_GetITStatus(TIM1, TIM_IT_Update) == SET)
	{
		keyTick();
		ledTick();
		Count ++;
		heartCount++;
		if(heartCount >= 500) 
		{
			heartCount = 0;
			ledSetMode(&g_leds[0], LED_MODE_ON);
		}
		else
		{
			ledSetMode(&g_leds[0], LED_MODE_OFF);
		}
		if (Count >= 40)
		{
			Count = 0;
			
			Actual += encoderAGet();
			
			Error1 = Error0;
			Error0 = Target - Actual;
			
			//方式1：误差积分+积分分离
			//这里可以不加对ki！=0的判断，因为积分饱会导致执行器的输出最大，执行器输出最大，误差就会超过积分分离阈值，误差超过阈值，积分清0，积分就会立刻退出饱和，所以积分分离有一定的抗积分饱和，不过想要正在的对付积分饱和，最好是加积分限幅
			//积分分离的阈值，可以先使用pd控制器，用手去转动电机，看看实际的误差波动最大范围是多少，然后这个误差范围就是积分分离的阈值
//			if (Ki != 0)
			if (fabs(Error0) < 50)
			{
				ErrorInt += Error0;
			}
			else//误差积分清0后，i项自然就不会有输出了相当于把i项分离出去了
			{
				ErrorInt = 0;
			}
			Out = Kp * Error0 + Ki * ErrorInt + Kd * (Error0 - Error1);
			
			//方式2：判断误差决定是否加入积分作用（另外定义变量C）
			// ErrorInt += Error0;
			// static uint8_t C;
			// if (fabs(Error0) < 50)
			// {
			// 	C = 1;
			// }
			// else
			// {
			// 	C = 0;
			// }
			// Out = Kp * Error0 + C * Ki * ErrorInt + Kd * (Error0 - Error1);

			if (Out > 100) {Out = 100;}
			if (Out < -100) {Out = -100;}
			
			motorA_setPwm(Out);
		}
		
		TIM_ClearITPendingBit(TIM1, TIM_IT_Update);
	}
}


// void TIM1_UP_IRQHandler(void)
// {
// 	static uint16_t Count;
// 	if (TIM_GetITStatus(TIM1, TIM_IT_Update) == SET)
// 	{
// /*keyTest用*/
// 		keyTick();
// /*keyTest用*/
// /*ledTest用*/
// 		ledTick();
// /*ledTest用*/
// /*encoderTest用*/
// 		Count ++;
// 		if (Count >= 40)//40ms
// 		{
// 			Count = 0;

// 			A_Speed = encoderAGet();
// 			B_Speed = encoderBGet();
// 			A_Location += A_Speed;
// 			B_Location += B_Speed;
// 		}
// /*encoderTest用*/
// 	}
// 	TIM_ClearITPendingBit(TIM1, TIM_IT_Update);
// }


void serialTest(void)
{
#if HEX_MODE == 1
		if (serialGetRxFlag() == 1)
		{
			serialPrintf("run\r\n");
			oledShowHexNum(0, 48, serialRxPacket[0], 2, OLED_8X16);
			oledShowHexNum(32, 48, serialRxPacket[1], 2, OLED_8X16);
			oledShowHexNum(64, 48, serialRxPacket[2], 2, OLED_8X16);
			oledShowHexNum(96, 48, serialRxPacket[3], 2, OLED_8X16);
		}
		if(keyCheck(KEY_1,KEY_SINGLE))
		{
			serialTxPacket[0] = 0x01;
			serialTxPacket[1] = 0x02;
			serialTxPacket[2] = 0x03;
			serialTxPacket[3] = 0x04;
			oledShowHexNum(0, 16, serialTxPacket[0], 2, OLED_8X16);
			oledShowHexNum(32, 16, serialTxPacket[1], 2, OLED_8X16);
			oledShowHexNum(64, 16, serialTxPacket[2], 2, OLED_8X16);
			oledShowHexNum(96, 16, serialTxPacket[3], 2, OLED_8X16);
			serialSendPacket(0xFF, 0XFE, serialTxPacket, 4);
		}
#endif

#if STRING_MODE == 1
		if (serialGetRxFlag() == 1)
		{
			oledShowString(0, 48, "                ", OLED_8X16);
			oledShowString(0, 48, serialRxPacket, OLED_8X16);
			
			if (strcmp(serialRxPacket, "LED_ON") == 0)
			{
				serialSendString("LED_ON_OK\r\n");
				oledShowString(0, 16, "                ", OLED_8X16);
				oledShowString(0, 16, "LED_ON_OK", OLED_8X16);
			}
			else if (strcmp(serialRxPacket, "LED_OFF") == 0)
			{
				serialSendString("LED_OFF_OK\r\n");
				oledShowString(0, 16, "                ", OLED_8X16);
				oledShowString(0, 16, "LED_OFF_OK", OLED_8X16);
			}
			else
			{
				serialSendString("ERROR_COMMAND\r\n");
				oledShowString(0, 16, "                ", OLED_8X16);
				oledShowString(0, 16, "ERROR_COMMAND", OLED_8X16);
			}
		}

#endif
}
void ledTest(void)
{
//	ledSetMode(&g_leds[0], LED_MODE_OFF);
//	ledSetMode(&g_leds[1], LED_MODE_OFF);  
//	ledSetMode(&g_leds[2], LED_MODE_OFF);  
//	ledSetMode(&g_leds[3], LED_MODE_OFF);  
//	ledSetMode(&g_leds[4], LED_MODE_OFF);

//	delayMs(500);
	// ledSetMode(&g_leds[0], LED_MODE_ON);
	// ledSetMode(&g_leds[1], LED_MODE_ON);  
	// ledSetMode(&g_leds[2], LED_MODE_ON);  
	// ledSetMode(&g_leds[3], LED_MODE_ON);  
	// ledSetMode(&g_leds[4], LED_MODE_ON);
//	delayMs(500);
	
	ledSetMode(&g_leds[0], LED_MODE_BLINK_FAST);
	ledSetMode(&g_leds[1], LED_MODE_BLINK_FAST);  
	ledSetMode(&g_leds[2], LED_MODE_BLINK_FAST);  
	ledSetMode(&g_leds[3], LED_MODE_BLINK_FAST);  
	ledSetMode(&g_leds[4], LED_MODE_BLINK_FAST);
}
void keyTest(void)
{
//按键按住不放测试，有点类似重复，但重复是有规律的进行判断按键，这里则不是，只要按下就会进入if
	// if (keyCheck(KEY_1, KEY_HOLD))
	// {
	// 	serialPrintf("KEY1_HOLD\r\n");
	// }
	// if (keyCheck(KEY_2, KEY_HOLD))
	// {
	// 	serialPrintf("KEY2_HOLD\r\n");
	// }
	// if (keyCheck(KEY_3, KEY_HOLD))
	// {
	// 	serialPrintf("KEY3_HOLD\r\n");
	// }
	// if (keyCheck(KEY_4, KEY_HOLD))
	// {
	// 	serialPrintf("KEY4_HOLD\r\n");
	// }

//按键弹起测试	 		 
	// if (keyCheck(KEY_1, KEY_UP))
	// {
	// 	serialPrintf("KEY1_UP\r\n");
	// }
	// if (keyCheck(KEY_2, KEY_UP))
	// {
	// 	serialPrintf("KEY2_UP\r\n");
	// }
	// if (keyCheck(KEY_3, KEY_UP))
	// {
	// 	serialPrintf("KEY3_UP\r\n");
	// }
	// if (keyCheck(KEY_4, KEY_UP))
	// {
	// 	serialPrintf("KEY4_UP\r\n");
	// }
	
//按键按下测试	 
	// if (keyCheck(KEY_1, KEY_DOWN))
	// {
	// 	serialPrintf("KEY1_DOWN\r\n");
	// }
	// if (keyCheck(KEY_2, KEY_DOWN))
	// {
	// 	serialPrintf("KEY2_DOWN\r\n");
	// }
	// if (keyCheck(KEY_3, KEY_DOWN))
	// {
	// 	serialPrintf("KEY3_DOWN\r\n");
	// }
	// if (keyCheck(KEY_4, KEY_DOWN))
	// {
	// 	serialPrintf("KEY4_DOWN\r\n");
	// }
	
//按键单击测试
	// if (keyCheck(KEY_1, KEY_SINGLE))
	// {
	// 	serialPrintf("KEY1_SINGLE\r\n");
	// }
	// if (keyCheck(KEY_2, KEY_SINGLE))
	// {
	// 	serialPrintf("KEY2_SINGLE\r\n");
	// }
	// if (keyCheck(KEY_3, KEY_SINGLE))
	// {
	// 	serialPrintf("KEY3_SINGLE\r\n");
	// }
	// if (keyCheck(KEY_4, KEY_SINGLE))
	// {
	// 	serialPrintf("KEY4_SINGLE\r\n");
	// }

//按键双击测试	 		 
	// if (keyCheck(KEY_1, KEY_DOUBLE))
	// {
	// 	serialPrintf("KEY1_DOUBLE\r\n");
	// }
	// if (keyCheck(KEY_2, KEY_DOUBLE))
	// {
	// 	serialPrintf("KEY2_DOUBLE\r\n");
	// }
	// if (keyCheck(KEY_3, KEY_DOUBLE))
	// {
	// 	serialPrintf("KEY3_DOUBLE\r\n");
	// }
	// if (keyCheck(KEY_4, KEY_DOUBLE))
	// {
	// 	serialPrintf("KEY4_DOUBLE\r\n");
	// }

//按键长按测试	 	 
	//  if (keyCheck(KEY_1, KEY_LONG))
	//  {
	// 	 serialPrintf("KEY1_LONG\r\n");
	//  }
	//  if (keyCheck(KEY_2, KEY_LONG))
	//  {
	// 	 serialPrintf("KEY2_LONG\r\n");
	//  }
	//  if (keyCheck(KEY_3, KEY_LONG))
	//  {
	// 	 serialPrintf("KEY3_LONG\r\n");
	//  }
	//  if (keyCheck(KEY_4, KEY_LONG))
	//  {
	// 	 serialPrintf("KEY4_LONG\r\n");
	//  }
		 
//按键重复测试	 
	 if (keyCheck(KEY_1, KEY_REPEAT))
	 {
		 serialPrintf("KEY1_REPEAT\r\n");
	 }
	 if (keyCheck(KEY_2, KEY_REPEAT))
	 {
		 serialPrintf("KEY2_REPEAT\r\n");
	 }
	 if (keyCheck(KEY_3, KEY_REPEAT))
	 {
		 serialPrintf("KEY3_REPEAT\r\n");
	 }
	 if (keyCheck(KEY_4, KEY_REPEAT))
	 {
		 serialPrintf("KEY4_REPEAT\r\n");
	 }
}
void adcTest(void)
{
	oledPrintf(0, 0, OLED_8X16, "RP1:%04d", adcGetValue(1));
	oledPrintf(0, 16, OLED_8X16, "RP2:%04d", adcGetValue(2));
	oledPrintf(0, 32, OLED_8X16, "RP3:%04d", adcGetValue(3));
	oledPrintf(0, 48, OLED_8X16, "RP4:%04d  ", adcGetValue(4));
}
void motorTest(void)
{
	motorA_setPwm(50);
	motorB_setPwm(50);
}
void encoderTest(void)
{
	oledPrintf(0, 0, OLED_8X16, "Speed:%+05d", A_Speed);
	oledPrintf(0, 16, OLED_8X16, "Location:%+05d", A_Location);
	oledPrintf(0, 32, OLED_8X16, "Speed:%+05d", B_Speed);
	oledPrintf(0, 48, OLED_8X16, "Location:%+05d", B_Location);
}