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
#include "pid.h"
#include "can.h"
#include "nrf24l01.h"
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

int16_t Speed, Location;

PID_t Inner = {
	.Kp = 0.3,
	.Ki = 0.3,
	.Kd = 0,
	.OutMax = 100,
	.OutMin = -100,
};

PID_t Outer = {
	.Kp = 0.3,
	.Ki = 0,
	.Kd = 0.4,
	.OutMax = 20,
	.OutMin = -20,
};

// CanTxMsg TxMsgArray[] = {
// /*   StdId     ExtId         IDE             RTR        DLC         Data[8]          */
// 	{0x555, 0x00000000, CAN_Id_Standard, CAN_RTR_Data,   4, {0x11, 0x22, 0x33, 0x44}},
// 	{0x000, 0x12345678, CAN_Id_Extended, CAN_RTR_Data,   4, {0xAA, 0xBB, 0xCC, 0xDD}},
// 	{0x666, 0x00000000, CAN_Id_Standard, CAN_RTR_Remote, 0, {0x00, 0x00, 0x00, 0x00}},
// 	{0x000, 0x0789ABCD, CAN_Id_Extended, CAN_RTR_Remote, 0, {0x00, 0x00, 0x00, 0x00}},
// };


// uint8_t pTxMsgArray = 0;


CanTxMsg TxMsg_Request_Remote = {
	.StdId = 0x300,
	.ExtId = 0x00000000,
	.IDE = CAN_Id_Standard,
	.RTR = CAN_RTR_Remote,
	.DLC = 0,
	.Data = {0x00}
};

CanTxMsg TxMsg_Request_Data = {
	.StdId = 0x3FF,
	.ExtId = 0x00000000,
	.IDE = CAN_Id_Standard,
	.RTR = CAN_RTR_Data,
	.DLC = 0,
	.Data = {0x00}
};

CanRxMsg RxMsg;

uint8_t SendFlag;								//发送标志位
uint8_t SendSuccessCount, SendFailedCount;		//发送成功计次，发送失败计次

uint8_t ReceiveFlag;							//接收标志位
uint8_t ReceiveSuccessCount, ReceiveFailedCount;//接收成功计次，接收失败计次
int main(void)
{
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
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

	MyCAN_Init();

	NRF24L01_Init();

	oledShowString(0, 48, "Hello,世界", OLED_8X16);
	oledUpdate();
	delayMs(3000);
	oledClear();

	oledShowString(0, 0, "T:000-000-0", OLED_8X16);//格式为：T:发送成功计次-发送失败计次-发送标志位
	oledShowString(0, 32, "R:000-000-0", OLED_8X16);//格式为：R:接收成功计次-接收失败计次-接收标志位
	oledUpdate();

	/*初始化测试数据，此处值为任意设定，便于观察实验现象*/
	NRF24L01_TxPacket[0] = 0x00;
	NRF24L01_TxPacket[1] = 0x01;
	NRF24L01_TxPacket[2] = 0x02;
	NRF24L01_TxPacket[3] = 0x03;


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

		// oledShowString(0, 0, "2*PID Control", OLED_8X16);

		// if (keyCheck(KEY_1, KEY_SINGLE))
		// {
		// 	// serialPrintf("KEY1_SINGLE\r\n");
		// 	Inner.Target += 10;
		// }
		// if (keyCheck(KEY_2, KEY_SINGLE))
		// {
		// 	// serialPrintf("KEY2_SINGLE\r\n");
		// 	Inner.Target -= 10;
		// }
		// if (keyCheck(KEY_3, KEY_SINGLE))
		// {
		// 	// serialPrintf("KEY3_SINGLE\r\n");
		// 	Inner.Target = 0;
		// }
		
		// Inner.Kp = adcGetValue(1) / 4095.0 * 2;
		// Inner.Ki = adcGetValue(2) / 4095.0 * 2;
		// Inner.Kd = adcGetValue(3) / 4095.0 * 2;
		// Inner.Target = adcGetValue(4) / 4095.0 * 300 - 150;
		
		// oledPrintf(0, 16, OLED_8X16, "Kp:%4.2f", Inner.Kp);
		// oledPrintf(0, 32, OLED_8X16, "Ki:%4.2f", Inner.Ki);
		// oledPrintf(0, 48, OLED_8X16, "Kd:%4.2f", Inner.Kd);
		
		// oledPrintf(64, 16, OLED_8X16, "Tar:%+04.0f", Inner.Target);
		// oledPrintf(64, 32, OLED_8X16, "Act:%+04.0f", Inner.Actual);
		// oledPrintf(64, 48, OLED_8X16, "Out:%+04.0f", Inner.Out);
		
		// serialPrintf("%f,%f,%f\r\n", Inner.Target, Inner.Actual, Inner.Out);


		// Outer.Kp = adcGetValue(1) / 4095.0 * 2;
		// Outer.Ki = adcGetValue(2) / 4095.0 * 2;
		// Outer.Kd = adcGetValue(3) / 4095.0 * 2;
		
		// Outer.Target = adcGetValue(4) / 4095.0 * 2640 - 1320;
		
		// oledPrintf(0, 16, OLED_8X16, "Kp:%4.2f", Outer.Kp);
		// oledPrintf(0, 32, OLED_8X16, "Ki:%4.2f", Outer.Ki);
		// oledPrintf(0, 48, OLED_8X16, "Kd:%4.2f", Outer.Kd);
		
		// oledPrintf(64, 16, OLED_8X16, "Tar:%+04.0f", Outer.Target);
		// oledPrintf(64, 32, OLED_8X16, "Act:%+04.0f", Outer.Actual);
		// oledPrintf(64, 48, OLED_8X16, "Out:%+04.0f", Outer.Out);
		// serialPrintf("%f,%f,%f\r\n", Outer.Target, Outer.Actual, Outer.Out);
	
		// oledShowString(0, 0, "Rx:", OLED_8X16);
		// oledShowString(0, 16, "Tim:", OLED_8X16);
		// oledShowString(0, 32, "Tri:", OLED_8X16);
		// oledShowString(0, 48, "Req:", OLED_8X16);


		// /*请求部分*/
		// if (keyCheck(KEY_1, KEY_SINGLE))
		// {
		// 	// serialPrintf("KEY1_SINGLE\r\n");
		// 	MyCAN_Transmit(&TxMsg_Request_Remote);
		// }
		// if (keyCheck(KEY_2, KEY_SINGLE))
		// {
		// 	// serialPrintf("KEY2_SINGLE\r\n");
		// 	MyCAN_Transmit(&TxMsg_Request_Data);
		// }
		// /*接收部分*/
		// if (MyCAN_ReceiveFlag())
		// {
		// 	MyCAN_Receive(&RxMsg);
		// 	if (RxMsg.RTR == CAN_RTR_Data)
		// 	{
		// 		/*收到定时数据帧*/
		// 		if (RxMsg.StdId == 0x100 && RxMsg.IDE == CAN_Id_Standard)
		// 		{
		// 			oledShowHexNum(32, 16, RxMsg.Data[0], 2, OLED_8X16);
		// 			oledShowHexNum(56, 16, RxMsg.Data[1], 2, OLED_8X16);
		// 			oledShowHexNum(80, 16, RxMsg.Data[2], 2, OLED_8X16);
		// 			oledShowHexNum(104, 16, RxMsg.Data[3], 2, OLED_8X16);
		// 		}
				
		// 		/*收到触发数据帧*/
		// 		if (RxMsg.StdId == 0x200 && RxMsg.IDE == CAN_Id_Standard)
		// 		{
		// 			oledShowHexNum(32, 32, RxMsg.Data[0], 2, OLED_8X16);
		// 			oledShowHexNum(56, 32, RxMsg.Data[1], 2, OLED_8X16);
		// 			oledShowHexNum(80, 32, RxMsg.Data[2], 2, OLED_8X16);
		// 			oledShowHexNum(104, 32, RxMsg.Data[3], 2, OLED_8X16);
		// 		}
				
		// 		/*收到请求数据帧*/
		// 		if (RxMsg.StdId == 0x300 && RxMsg.IDE == CAN_Id_Standard)
		// 		{
		// 			oledShowHexNum(32, 48, RxMsg.Data[0], 2, OLED_8X16);
		// 			oledShowHexNum(56, 48, RxMsg.Data[1], 2, OLED_8X16);
		// 			oledShowHexNum(80, 48, RxMsg.Data[2], 2, OLED_8X16);
		// 			oledShowHexNum(104, 48, RxMsg.Data[3], 2, OLED_8X16);
		// 		}
		// 	}
		// }
		if (keyCheck(KEY_1, KEY_SINGLE))
		{
			// serialPrintf("KEY1_SINGLE\r\n");
			/*变换测试数据，便于观察实验现象*/
			/*实际项目中，可以将待发送的数据赋值给NRF24L01_TxPacket数组*/
			NRF24L01_TxPacket[0] ++;
			NRF24L01_TxPacket[1] ++;
			NRF24L01_TxPacket[2] ++;
			NRF24L01_TxPacket[3] ++;
			
			/*调用NRF24L01_Send函数，发送数据，同时返回发送标志位，方便用户了解发送状态*/
			/*发送标志位与发送状态的对应关系，可以转到此函数定义上方查看*/
			SendFlag = NRF24L01_Send();
			
			if (SendFlag == 1)			//发送标志位为1，表示发送成功
			{
				SendSuccessCount ++;	//发送成功计次变量自增
			}
			else						//发送标志位不为1，即2/3/4，表示发送不成功
			{
				SendFailedCount ++;		//发送失败计次变量自增
			}
			
			oledShowNum(16, 0, SendSuccessCount, 3, OLED_8X16);	//显示发送成功次数
			oledShowNum(48, 0, SendFailedCount, 3, OLED_8X16);		//显示发送失败次数
			oledShowNum(80, 0, SendFlag, 1, OLED_8X16);			//显示最近一次的发送标志位
			
			/*显示发送数据*/
			oledShowHexNum(0, 16, NRF24L01_TxPacket[0], 2, OLED_8X16);
			oledShowHexNum(24, 16, NRF24L01_TxPacket[1], 2, OLED_8X16);
			oledShowHexNum(48, 16, NRF24L01_TxPacket[2], 2, OLED_8X16);
			oledShowHexNum(72, 16, NRF24L01_TxPacket[3], 2, OLED_8X16);
			
			/*TX字符串闪烁一次，表明发送了一次数据*/
			oledShowString(112, 0, "TX", OLED_8X16);
			oledUpdate();
			delayMs(100);
			oledShowString(112, 0, "  ", OLED_8X16);
			oledUpdate();
		}
		/*主循环内循环执行NRF24L01_Receive函数，接收数据，同时返回接收标志位，方便用户了解接收状态*/
		/*接收标志位与接收状态的对应关系，可以转到此函数定义上方查看*/
		ReceiveFlag = NRF24L01_Receive();
		
		if (ReceiveFlag)				//接收标志位不为0，表示收到了一个数据包
		{
			if (ReceiveFlag == 1)		//接收标志位为1，表示接收成功
			{
				ReceiveSuccessCount ++;	//接收成功计次变量自增
			}
			else	//接收标志位不为0也不为1，即2/3，表示此次接收产生了错误，错误接收的数据不应该使用
			{
				ReceiveFailedCount ++;	//接收失败计次变量自增
			}
			
			oledShowNum(16, 32, ReceiveSuccessCount, 3, OLED_8X16);	//显示接收成功次数
			oledShowNum(48, 32, ReceiveFailedCount, 3, OLED_8X16);	//显示接收失败次数
			oledShowNum(80, 32, ReceiveFlag, 1, OLED_8X16);		//显示最近一次的接收标志位
			
			/*显示接收数据*/
			oledShowHexNum(0, 48, NRF24L01_RxPacket[0], 2, OLED_8X16);
			oledShowHexNum(24, 48, NRF24L01_RxPacket[1], 2, OLED_8X16);
			oledShowHexNum(48, 48, NRF24L01_RxPacket[2], 2, OLED_8X16);
			oledShowHexNum(72, 48, NRF24L01_RxPacket[3], 2, OLED_8X16);
			
			/*RX字符串闪烁一次，表明接收到了一次数据*/
			oledShowString(112, 32, "RX", OLED_8X16);
			oledUpdate();
			delayMs(100);
			oledShowString(112, 32, "  ", OLED_8X16);
			oledUpdate();
		}
	}
}
void TIM1_UP_IRQHandler(void)
{
	// static uint16_t Count1, Count2;
	static uint16_t heartCount, timingCount;
	if (TIM_GetITStatus(TIM1, TIM_IT_Update) == SET)
	{
		keyTick();
		ledTick();
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
		timingCount ++;
		if(timingCount >= 1000)
		{
			timingCount = 0;
		}
		// Count1 ++;
		// if (Count1 >= 40)
		// {
		// 	Count1 = 0;
			
		// 	Speed = encoderAGet();
		// 	Location += Speed;
			
		// 	Inner.Actual = Speed;
			
		// 	PID_Update(&Inner);
			
		// 	motorA_setPwm(Inner.Out);
		// }
		
		// Count2 ++;
		// if (Count2 >= 40)
		// {
		// 	Count2 = 0;
			
		// 	Outer.Actual = Location;
			
		// 	PID_Update(&Outer);
			
		// 	Inner.Target = Outer.Out;
		// }
		
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