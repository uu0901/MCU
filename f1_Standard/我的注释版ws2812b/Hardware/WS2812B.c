#include "stm32f10x.h"
#include "TIM2.h"
#include "DMA1.h"

#define WS2812B_LED_QUANTITY	32

uint32_t WS2812B_Buf[WS2812B_LED_QUANTITY];	// 存放每个 LED 的颜色 (0xGGRRBB)
uint16_t WS2812B_Bit[24*WS2812B_LED_QUANTITY+1];// 存放展开后的 PWM 占空比序列
uint8_t WS2812B_Flag;// 用来标记传输是否完成
/*
WS2812B_Buf[]：逻辑缓冲区，每个元素是一个 24bit 颜色值 (GRB 格式)。
WS2812B_Bit[]：物理缓冲区，展开后的 PWM 占空比数组。一个 LED 需要 24 bit，所以数组大小 = 24 × LED数量 + 1。
WS2812B_Flag：DMA 传输完成标志位。
前 24 个元素 → 代表 24bit 的颜色数据
最后 1 个元素 → 写 0，占空比为 0，保证 PWM 输出为低电平
+1 不是多出来一个颜色 bit，而是留一个位置给 复位低电平。
这是 WS2812B 时序里必不可少的一部分，否则 LED 可能会不刷新或者颜色乱掉。
*/
void WS2812B_IRQHandler(void);

void WS2812B_Init(void)
{
	DMA1_SetIRQHandler(WS2812B_IRQHandler); // 注册 DMA 中断回调函数
    DMA1_Init((uint32_t)(&WS2812B_Bit));    // 配置 DMA，把数据搬到 TIM2->CCR1
    TIM2_Init();                            // 初始化 TIM2 (PWM + DMA 请求)
}

void WS2812B_ClearBuf(void)
{
	uint8_t i;
	for(i=0;i<WS2812B_LED_QUANTITY;i++)
	{
		WS2812B_Buf[i]=0x000000;// 全部清零
	}
}

void WS2812B_SetBuf(uint32_t Color)
{
	uint8_t i;
	for(i=0;i<WS2812B_LED_QUANTITY;i++)
	{
		WS2812B_Buf[i]=Color;// 所有 LED 设为同一种颜色
	}
}

void WS2812B_UpdateBuf(void)
{
    uint8_t i,j;
    for(j=0;j<WS2812B_LED_QUANTITY;j++) // 遍历每个 LED
    {
        for(i=0;i<24;i++) // 遍历每一位 每个 LED 的颜色用 24 位二进制表示，逐位判断输出 PWM 是“高占空比”还是“低占空比”。
        {
			/* 
			WS2812B_Buf[j]：存放第 j 颗 LED 的颜色值（0xGGRRBB 格式）。

			0x800000：一个 24-bit 掩码，最高位是 1（二进制 1000 0000 0000 0000 0000 0000）。

			>> i：逐步右移，依次取出 24 位数据。

			i=0 → 最高位（G7）。

			i=23 → 最低位（B0）。

			&：与运算，如果该位是 1，就进入 if 分支。
			*/
            if(WS2812B_Buf[j] & (0x800000 >> i)) // 判断当前 bit 是否为1
                WS2812B_Bit[j*24+i+1] = 60; // “1” → 占空比大（~0.83µs）
				/* 
				WS2812B_Bit[0] 这个位置被预留出来，专门放“Reset 占空比”（通常是 0）。

				真正的有效数据从 WS2812B_Bit[1] 开始写。


				+1 就是为这个 Reset 位置准备的。

				如果有 1 个 LED，本来是 24 个数据，现在是 25 个。

				WS2812B_Bit[0] → Reset 占空比（DMA最后一个传输值）。

				WS2812B_Bit[1..24] → 第 1 个 LED 的数据。

				WS2812B_Bit[25..48] → 第 2 个 LED 的数据。

				以此类推。

				WS2812B_Bit[0] = 0 → 让总线拉低，提供 >50 µs 的 Reset 窗口。

				WS2812B_Bit[1..24] → 第 1 个 LED 的数据位，每个 bit 用占空比 30（0.4µs）或 60（0.8µs）表示。

				WS2812B_Bit[25..48] → 第 2 个 LED 的数据位。


				WS2812B_Bit[0] = 0 → DMA 在一开始输出一个低电平，保证传输起点正确。

				TIM2_SetCompare1(0) → DMA 传输结束后强制再拉低，保证传输终点进入 Reset。

				可以这么理解：

				Bit[0] = 0 → 起始 Reset。

				SetCompare1(0) → 结束 Reset。

				WS2812B_Bit[0] 是0是因为

				DMA_DeInit(DMA1_Channel2) → 硬件寄存器复位，不会影响数组内容。
				所以 DMA 初始化并不会帮你清零 WS2812B_Bit[]。

				因为 WS2812B_Bit[] 定义在函数外（全局区），编译器会把它放在 .bss 段，程序启动时由 C 运行库清零。

				这样 Bit[0] 在整个运行过程中保持为 0，正好被 DMA 用来产生 Reset 低电平。

				后续的 UpdateBuf() 只改 Bit[1..]，不会破坏这个 Reset。
				*/
            else
                WS2812B_Bit[j*24+i+1] = 30; // “0” → 占空比小（~0.42µs）
        }
    }
    
    DMA1_Start(24*WS2812B_LED_QUANTITY+1); // 启动 DMA，传输 N 个数据
    TIM2_Cmd(ENABLE); // 启动 TIM2
    
    while(WS2812B_Flag==0); // 等待传输完成
    WS2812B_Flag=0;
}

void WS2812B_IRQHandler(void)
{
	TIM2_SetCompare1(0);// 确保输出低电平，进入复位时间
	/*
	DMA 把数组传输完以后：

	定时器可能还会保持着 最后一次 CCR1 的值（比如 30 或 60）。

	如果保持高电平，会让 WS2812B 误判信号。

	所以在中断里，手动调用：

	TIM2_SetCompare1(0);


	立即把 CCR1 改成 0 → 保证输出管脚进入 稳定低电平。

	这确保后续的 Reset 时间足够长（因为此时定时器被 DISABLE 停掉了）。

	其实这是两种不同阶段的“低电平”：

	前置的 Bit[0]：让 DMA 传输的第一个周期就是低电平，避免数据开头乱跳。

	后置的 SetCompare1(0)：保证数据发完后灯带得到真正的 Reset 时间。

	所以，WS2812B_Bit[0] = 0 和 TIM2_SetCompare1(0) 不是同一个东西，而是 前后呼应：

	一个在传输 开始，由 DMA 自动完成；

	一个在传输 结束，由中断里手动保证
	*/
	TIM2_Cmd(DISABLE);// 关闭定时器
	WS2812B_Flag=1; // 标记传输完成
}
