#include "stm32f10x.h"
/* 
1. WS2812B 的时序要求
WS2812B 的通信协议是 单线时序编码，核心在于 一个 bit 总宽度固定（约 1.25 µs，对应 800 kHz），再通过高电平持续时间来区分 0 和 1：
一个 bit 总周期：约 1.25 µs
“0”：高电平 ~0.35 µs，低电平 ~0.9 µs
“1”：高电平 ~0.7 µs，低电平 ~0.6 µs
2. 为什么是 90
假设你 STM32F103 的 APB1 定时器时钟 = 72 MHz（常见配置，TIM2 在 APB1 上，倍频后等于 72 MHz）。
计数器每个 tick：1 / 72 MHz ≈ 13.89 ns
如果周期设置成 90，则定时器周期时间：
𝑇 =90/72 MHz=1.25𝜇𝑠
这刚好对应 WS2812B 一个 bit 的时间。
所以 Period = 90-1 就是为了产生 1.25 µs 的 PWM 基本周期。
3. 如何对应高低电平
接下来，CCR1 就控制 PWM 高电平占比：
如果 CCR1 = 30 → 高电平时间 = (30 / 90) × 1.25 µs ≈ 0.42 µs（接近逻辑 0）
如果 CCR1 = 60 → 高电平时间 = (60 / 90) × 1.25 µs ≈ 0.83 µs（接近逻辑 1）
所以在 DMA 填充 CCR 值时，你就把“0”和“1”分别映射成不同的占空比。
*/
void TIM2_Init(void)
{
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2,ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);

	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA,&GPIO_InitStructure);

	TIM_DeInit(TIM2);
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
	TIM_TimeBaseStructure.TIM_Period = 90-1;
	TIM_TimeBaseStructure.TIM_Prescaler = 0;
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
	TIM_TimeBaseInit(TIM2, &TIM_TimeBaseStructure);
	
	TIM_OCInitTypeDef TIM_OCInitStructure;
	TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
	TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
	TIM_OCInitStructure.TIM_Pulse = 0;
	TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
	TIM_OC1Init(TIM2, &TIM_OCInitStructure);
	
	TIM_CtrlPWMOutputs(TIM2, ENABLE);
	
	TIM_DMAConfig(TIM2,TIM_DMABase_CCR1,TIM_DMABurstLength_1Transfer);//配置 DMA 每次把数据写到 TIM2->CCR1，只更新这一个寄存器。
	TIM_DMACmd(TIM2,TIM_DMA_Update,ENABLE);
	
	TIM_Cmd(TIM2, DISABLE);
}

void TIM2_Cmd(FunctionalState NewState)
{
	TIM_Cmd(TIM2, NewState);
}

void TIM2_SetCompare1(uint16_t Value)
{
	TIM_SetCompare1(TIM2,Value);
}
