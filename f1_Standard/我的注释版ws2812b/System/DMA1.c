#include "stm32f10x.h"


/* 定义一个函数指针，用来存放用户注册的 DMA 中断回调函数 */
void (*DMA1_Handler)(void);


/**
  * @brief  DMA1 通道2 初始化
  * @param  MemoryBaseAddr 内存首地址（PWM 占空比缓冲区）
  * @note   这里配置 DMA 把内存里的 PWM 数据传输到 TIM2->CCR1
  */

/* 
1. STM32F103 的 DMA 概念

DMA 控制器：DMA1

DMA 通道：DMA1 有 7 个通道，每个通道只能被某些特定的外设触发。

映射关系：芯片手册（RM0008）里写死了，比如 TIM2 的不同事件对应不同的 DMA 通道。
*/
void DMA1_Init(uint32_t MemoryBaseAddr)
{
    /* 开启 DMA1 时钟 */
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);
	
    /* 复位 DMA1_Channel2 的配置 */
    DMA_DeInit(DMA1_Channel2);
	
    DMA_InitTypeDef DMA_InitStructure;
    DMA_InitStructure.DMA_PeripheralBaseAddr = (uint32_t)(&TIM2->CCR1); // 外设地址 = TIM2_CCR1 (PWM 占空比寄存器)
    DMA_InitStructure.DMA_MemoryBaseAddr = MemoryBaseAddr;              // 内存地址 = PWM 数据数组首地址
    DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralDST;                  // 方向 = 内存 -> 外设
    DMA_InitStructure.DMA_BufferSize = 0;                               // 数据传输个数，先设 0，运行时再配置
    DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;    // 外设地址不自增 (始终写入 TIM2_CCR1)
    DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;             // 内存地址自增 (逐个取 PWM 数据)
    DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord; // 外设数据宽度 = 16位
    DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;         // 内存数据宽度 = 16位
    DMA_InitStructure.DMA_Mode = DMA_Mode_Normal;                       // 普通模式 (传输一次就结束)
    DMA_InitStructure.DMA_Priority = DMA_Priority_Medium;               // 优先级中等
    DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;                        // 非内存到内存
    DMA_Init(DMA1_Channel2, &DMA_InitStructure);
	
    /* 配置 NVIC，使能 DMA1 通道2 中断 */
    NVIC_InitTypeDef NVIC_InitStructure;
    NVIC_InitStructure.NVIC_IRQChannel = DMA1_Channel2_IRQn;            // 中断通道号
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;           // 抢占优先级
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;                  // 子优先级
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;                     // 使能
    NVIC_Init(&NVIC_InitStructure);
	
    /* 开启 DMA 传输完成中断 */
    DMA_ITConfig(DMA1_Channel2, DMA_IT_TC, ENABLE);
	
    /* 使能 DMA 通道2 */
    DMA_Cmd(DMA1_Channel2, ENABLE);
}


/**
  * @brief  注册 DMA 中断服务函数
  * @param  IRQHandler 用户传入的函数指针
  */
void DMA1_SetIRQHandler(void (*IRQHandler)(void))
{
    DMA1_Handler = IRQHandler;
}


/**
  * @brief  启动 DMA，传输指定数量的数据
  * @param  DataNumber 要传输的数据数量
  */
void DMA1_Start(uint16_t DataNumber)
{
    DMA_Cmd(DMA1_Channel2, DISABLE);                // 先关闭 DMA
    DMA_SetCurrDataCounter(DMA1_Channel2, DataNumber); // 配置传输数据数量
    DMA_Cmd(DMA1_Channel2, ENABLE);                 // 重新开启 DMA，开始传输
}


/**
  * @brief  DMA1 通道2 中断服务函数
  * @note   当传输完成 (TC) 时调用用户注册的回调函数
  */
void DMA1_Channel2_IRQHandler(void)
{
    if(DMA_GetFlagStatus(DMA1_FLAG_TC2))  // 判断是否传输完成
    {
        DMA1_Handler();                   // 调用用户注册的中断处理函数
        DMA_ClearFlag(DMA1_FLAG_TC2);     // 清除传输完成标志
    }
}
