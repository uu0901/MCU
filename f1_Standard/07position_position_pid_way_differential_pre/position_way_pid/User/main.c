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
要解决的问题：普通PID的微分项对误差进行微分，当目标值大幅度跳变时，误差也会瞬间大幅度跳变，
这会导致微分项突然输出一个很大的调控力，如果系统的目标值频繁大幅度切换，则此时的微分项不利于系统稳定

微分先行实现思路：将对误差的微分替换为对实际值的微分
普通PID的微分项输出：
dout(k)=K_d?(error(k)?error(k?1))
微分先行PID的微分项输出：
dout(k)=?K_d?(actual(k)?actual(k?1))

*/
float Target, Actual, Out;		//目标，实际，输出
float Kp, Ki, Kd;				//比例，积分，微分
float Error0, Error1, ErrorInt;//本次误差，上次误差，误差积分
float DifOut, Actual1;
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
			
			Actual1 = Actual;
			Actual += encoderAGet();
			
			Error1 = Error0;
			Error0 = Target - Actual;
			
			if (Ki != 0)
			{
				ErrorInt += Error0;
			}
			else
			{
				ErrorInt = 0;
			}
			
//			DifOut = Kd * (Error0 - Error1);
//误差 = 目标 - 实际；
//目标=0 误差 = -实际
//目标不等于0 误差 = -实际+ 目标（偏移）
//求微分，只看变化趋势看斜率。所以加不加偏移都可以求微分
//因此把对误差的积分，替换为对实际值的微分也可以实现微分项的作用，同时对实际值的微分可以不受目标值切换的影响，（因为我们舍去了偏移）
			DifOut = - Kd * (Actual - Actual1);
			
			Out = Kp * Error0 + Ki * ErrorInt + DifOut;
			
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