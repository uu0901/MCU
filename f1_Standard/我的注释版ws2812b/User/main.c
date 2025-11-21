/*
	程序名	：	WS2812B彩灯控制
	硬件平台：	STM32F103C8T6最小系统板
	引脚定义：	PA0	->	WS2812B DATA
				PA1	->	Key1
				PA5	->	Key2
				PB1	->	Key3
*/
#include "stm32f10x.h"
#include "RCC.h"
#include "Delay.h"
#include "IO.h"
#include "TIM3.h"
#include "WS2812B.h"
#include "Key.h"
#include "OLED.h"
#include <stdlib.h>

uint8_t KeyNum,MODE=1;

uint8_t UpdateFlag=1;
uint8_t WhiteLight_Brightness;
uint8_t ColorLight_Mode,ColorLight_Flag;
uint16_t ColorLight_Time;

void Close(void);
void WhiteLight(void);
void ColorLight(void);

void MainLoop(void);

void Init(void)
{
	RCC_Init();
	Key_Init();
	WS2812B_Init();
	TIM3_SetIRQHandler(MainLoop);//1ms中断执行mainloop
	TIM3_Init();//1ms
}

int main(void)
{
	Init();//BSP
	while(1)//按键控制
	{
		KeyNum=Key_GetKeyNumber();
		switch(MODE)//上电MODE为1 之后执行状态机
		{
			case 1:Close();break;
			case 2:WhiteLight();break;
			case 3:ColorLight();break;
		}
	}
}

void Close(void)	//MODE=1
{
	/* 按键 */
	if(KeyNum==1)	//WhiteLight->Close
	{
		UpdateFlag=1;/* 关闭ws2812 */
	}
	if(KeyNum==2)	//Close->WhiteLight
	{
		MODE=2;		/* MODE = 2 */
		WhiteLight_Brightness=0;/* 设置亮度标志位*/
		UpdateFlag=1;/* 关闭ws2812 */
		return;
	}
	if(KeyNum==3)	//Close->ColorLight
	{
		MODE=3;		/* MODE = 3 */
		UpdateFlag=1;/* 关闭ws2812 */
		return;
	}


	/* 关闭ws2812 */
	if(UpdateFlag)
	{
		UpdateFlag=0;
		WS2812B_SetBuf(0x000000);
		WS2812B_UpdateBuf();
	}
}

void WhiteLight(void)	//MODE=2
{
	if(KeyNum==1)	//WhiteLight->Close
	{
		MODE=1;
		UpdateFlag=1;
		return;
	}
	if(KeyNum==2)	//WhiteLight->WhiteLight
	{
		WhiteLight_Brightness++;
		WhiteLight_Brightness%=3; /* 0 1 2*/
		UpdateFlag=1;
	}
	if(KeyNum==3)	//WhiteLight->ColorLight
	{
		MODE=3;
		UpdateFlag=1;
		return;
	}
	if(UpdateFlag)
	{
		UpdateFlag=0;
		if(WhiteLight_Brightness==0)
		{
			WS2812B_SetBuf(0x010101);
		}
		if(WhiteLight_Brightness==1)
		{
			WS2812B_SetBuf(0x3F3F3F);
		}
		if(WhiteLight_Brightness==2)
		{
			WS2812B_SetBuf(0xFFFFFF);
		}
		WS2812B_UpdateBuf();
	}
}

void ColorLight_Mode0(void)
{
	static uint8_t i,Color;
	ColorLight_Time=6;

	if(i==0)WS2812B_SetBuf((Color));
	if(i==1)WS2812B_SetBuf((255-Color));
	if(i==2)WS2812B_SetBuf((Color)<<8);
	if(i==3)WS2812B_SetBuf((255-Color)<<8);
	if(i==4)WS2812B_SetBuf((Color)<<16);
	if(i==5)WS2812B_SetBuf((255-Color)<<16);
	if(i==6)WS2812B_SetBuf((Color)|((Color)<<8));
	if(i==7)WS2812B_SetBuf((255-Color)|((255-Color)<<8));
	if(i==8)WS2812B_SetBuf((Color)|((Color)<<16));
	if(i==9)WS2812B_SetBuf((255-Color)|((255-Color)<<16));
	if(i==10)WS2812B_SetBuf(((Color)<<8)|((Color)<<16));
	if(i==11)WS2812B_SetBuf(((255-Color)<<8)|((255-Color)<<16));
	if(i==12)WS2812B_SetBuf(((Color))|((Color)<<8)|((Color)<<16));
	if(i==13)WS2812B_SetBuf(((255-Color))|((255-Color)<<8)|((255-Color)<<16));

	Color++;
	if(Color==0)
	{
		i++;
		i%=14;
	}
}

void ColorLight_Mode1(void)
{
	uint8_t i,RandNum;
	uint32_t G,R,B;
	static uint8_t j;
	ColorLight_Time=20;
	for(i=31;i>0;i--)
	{
		WS2812B_Buf[i]=WS2812B_Buf[i-1];
	}
	
	if(j==0)
	{
		RandNum=rand()%7;
		if(RandNum==0)WS2812B_Buf[0]=0x0000FF;
		if(RandNum==1)WS2812B_Buf[0]=0x00FF00;
		if(RandNum==2)WS2812B_Buf[0]=0xFF0000;
		if(RandNum==3)WS2812B_Buf[0]=0x00FFFF;
		if(RandNum==4)WS2812B_Buf[0]=0xFF00FF;
		if(RandNum==5)WS2812B_Buf[0]=0xFFFF00;
		if(RandNum==6)WS2812B_Buf[0]=0xFFFFFF;
	}
	else if(j<15)
	{
		G=WS2812B_Buf[1]/0x10000%0x100;
		R=WS2812B_Buf[1]/0x100%0x100;
		B=WS2812B_Buf[1]%0x100;
		if(G>20)G-=20;
		if(R>20)R-=20;
		if(B>20)B-=20;
		WS2812B_Buf[0]=(G<<16)|(R<<8)|B;
	}
	else
	{
		WS2812B_Buf[0]=0;
	}
	
	j++;
	j%=50;
}

void ColorLight_Mode2(void)
{
	uint8_t i;
	static uint8_t j;
	ColorLight_Time=20;
	for(i=31;i>0;i--)
	{
		WS2812B_Buf[i]=WS2812B_Buf[i-1];
	}
	if(j==0)WS2812B_Buf[0]=rand()%0x1000000;
	else WS2812B_Buf[0]=WS2812B_Buf[1];
	j++;
	j%=10;
}

void ColorLight_Mode3(void)
{
	uint8_t i;
	ColorLight_Time=500;
	for(i=0;i<32;i++)
	{
		WS2812B_Buf[i]=rand()%0x1000000;
	}
}

void ColorLight(void)	//MODE=3
{
	if(KeyNum==1)	//ColorLight->Close
	{
		MODE=1;
		UpdateFlag=1;
		return;
	}
	if(KeyNum==2)	//ColorLight->WhiteLight
	{
		MODE=2;
		WhiteLight_Brightness=0;
		UpdateFlag=1;
		return;
	}
	if(KeyNum==3)	//ColorLight->ColorLight
	{
		ColorLight_Mode++;
		ColorLight_Mode%=4;
		UpdateFlag=1;
	}
	if(UpdateFlag)
	{
		UpdateFlag=0;
		WS2812B_SetBuf(0x000000);
		WS2812B_UpdateBuf();
	}
	/*
	不是保证模式完整执行完，而是“定时触发下一帧”。

	每个模式（Mode0、1、2、3）内部都有自己的循环变量（比如 i、j、Color），它们决定了效果怎么变化。

	ColorLight_Time 只负责 多长时间调用一次这些变化函数。

	举例：

	ColorLight_Mode0() 里 Color++，配合 ColorLight_Time=6，就是每 6ms LED 颜色渐变一次。

	ColorLight_Mode3() 里直接 rand()，配合 ColorLight_Time=500，就是每 500ms 整体随机刷新一次。

	3. 需要怎么调整？

	你说的很对，ColorLight_Time 需要根据视觉效果来调：

	太小 → 变化太快，看起来闪烁或眼睛跟不上。

	太大 → 变化太慢，效果不明显。

	通常的经验：

	渐变类效果（Mode0）：5~20ms 一次比较合适。

	跑马灯类（Mode1/2）：10~50ms 一次。

	随机闪烁（Mode3）：200~1000ms 一次。

    总结：
	ColorLight_Time 并不是保证整个模式“跑完一圈”，而是 决定每次更新 LED 的节拍。不同模式内部的循环变量保证了“完整效果”，而 ColorLight_Time 只是决定“这首曲子演奏得快还是慢”。
	*/
	if(ColorLight_Flag)
	{
		ColorLight_Flag=0;
		if(ColorLight_Mode==0)
		{
			ColorLight_Mode0();
			WS2812B_UpdateBuf();
		}
		if(ColorLight_Mode==1)
		{
			ColorLight_Mode1();
			WS2812B_UpdateBuf();
		}
		if(ColorLight_Mode==2)
		{
			ColorLight_Mode2();
			WS2812B_UpdateBuf();
		}
		if(ColorLight_Mode==3)
		{
			ColorLight_Mode3();
			WS2812B_UpdateBuf();
		}
	}
}

void MainLoop(void)
{
	static uint16_t LoopCount[2];
	LoopCount[0]++;
	if(LoopCount[0]>=20)
	{
		LoopCount[0]=0;
		Key_Loop();
	}
	LoopCount[1]++;
	if(LoopCount[1]>=ColorLight_Time)
	{
		LoopCount[1]=0;
		ColorLight_Flag=1;
	}
}
