/* 
 * my_spi.c - STM32 SPI驱动（支持软件控制/DMA传输）
 * 硬件平台：STM32F10x系列
 * 功能特性：
 *   1. 支持SPI模式0（CPOL=0, CPHA=0）
 *   2. 软件控制SS引脚（NSS）
 *   3. 提供字节/多字节传输接口
 *   4. 支持DMA高效传输
 */

#include "stm32f10x.h"
#include "spi.h"

/* 私有函数声明 */
static void SPI_DMA_Init(void);

/********************** 基础SPI功能 **********************/

/**
  * @brief  SPI写SS引脚电平
  * @param  BitValue: 0-拉低, 1-拉高
  */
void MySPI_W_SS(uint8_t BitValue)
{
    GPIO_WriteBit(GPIOA, GPIO_Pin_4, (BitAction)BitValue);
}

/**
  * @brief  SPI初始化（GPIO、SPI、DMA）
  */
void MySPI_Init(void)
{
    /* 时钟使能 */
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_SPI1, ENABLE);
    
    /* GPIO配置 */
    GPIO_InitTypeDef GPIO_InitStruct = {
        .GPIO_Speed = GPIO_Speed_50MHz,
        .GPIO_Pin = GPIO_Pin_4,
        .GPIO_Mode = GPIO_Mode_Out_PP  // PA4(SS)推挽输出
    };
    GPIO_Init(GPIOA, &GPIO_InitStruct);
    
    GPIO_InitStruct.GPIO_Pin = GPIO_Pin_5 | GPIO_Pin_7;  // SCK/MOSI
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF_PP;         // 复用推挽输出
    GPIO_Init(GPIOA, &GPIO_InitStruct);
    
    GPIO_InitStruct.GPIO_Pin = GPIO_Pin_6;  // MISO
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IPU;           // 上拉输入
    GPIO_Init(GPIOA, &GPIO_InitStruct);
    
    /* SPI配置 */
    SPI_InitTypeDef SPI_InitStruct = {
        .SPI_Mode = SPI_Mode_Master,
        .SPI_Direction = SPI_Direction_2Lines_FullDuplex,
        .SPI_DataSize = SPI_DataSize_8b,
        .SPI_FirstBit = SPI_FirstBit_MSB,
        .SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_128,
        .SPI_CPOL = SPI_CPOL_Low,
        .SPI_CPHA = SPI_CPHA_1Edge,
        .SPI_NSS = SPI_NSS_Soft,
        .SPI_CRCPolynomial = 7
    };
    SPI_Init(SPI1, &SPI_InitStruct);
    SPI_Cmd(SPI1, ENABLE);
    
    /* DMA初始化 */
    // SPI_DMA_Init();
    
    MySPI_W_SS(1);  // 默认SS高电平
}

/**
  * @brief  启动SPI传输（拉低SS）
  */
void MySPI_Start(void)
{
    MySPI_W_SS(0);
}

/**
  * @brief  结束SPI传输（拉高SS）
  */
void MySPI_Stop(void)
{
    MySPI_W_SS(1);
}

/**
  * @brief  SPI单字节交换（阻塞式）
  * @param  ByteSend: 要发送的字节
  * @retval 接收到的字节
  */
uint8_t MySPI_SwapByte(uint8_t ByteSend)
{
    while(!SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_TXE));
    SPI_I2S_SendData(SPI1, ByteSend);
    
    while(!SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_RXNE));
    return SPI_I2S_ReceiveData(SPI1);
}

/********************** 多字节传输（软件轮询） **********************/

void MySPI_SendMultiBytes(uint8_t *pData, uint16_t size)
{
    while(size--) {
        MySPI_SwapByte(*pData++);
    }
}

void MySPI_ReceiveMultiBytes(uint8_t *pData, uint16_t size)
{
    while(size--) {
        *pData++ = MySPI_SwapByte(0xFF);
    }
}

void MySPI_TransmitReceiveMultiBytes(uint8_t *pTxData, uint8_t *pRxData, uint16_t size)
{
    while(size--) {
        *pRxData++ = MySPI_SwapByte(*pTxData++);
    }
}

/********************** DMA传输功能 **********************/

/**
  * @brief  SPI DMA初始化（私有函数）
  */
static void SPI_DMA_Init(void)
{
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);
    
    /* TX DMA配置 (SPI1_TX -> DMA1_Ch3) */
    DMA_InitTypeDef dmaInit = {
        .DMA_PeripheralBaseAddr = (uint32_t)&SPI1->DR,
        .DMA_MemoryBaseAddr = 0,  // 动态设置
        .DMA_DIR = DMA_DIR_PeripheralDST,
        .DMA_BufferSize = 0,       // 动态设置
        .DMA_PeripheralInc = DMA_PeripheralInc_Disable,
        .DMA_MemoryInc = DMA_MemoryInc_Enable,
        .DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte,
        .DMA_MemoryDataSize = DMA_MemoryDataSize_Byte,
        .DMA_Mode = DMA_Mode_Normal,
        .DMA_Priority = DMA_Priority_High,
        .DMA_M2M = DMA_M2M_Disable
    };
    DMA_Init(DMA1_Channel3, &dmaInit);
    
    /* RX DMA配置 (SPI1_RX -> DMA1_Ch2) */
    dmaInit.DMA_DIR = DMA_DIR_PeripheralSRC;
    DMA_Init(DMA1_Channel2, &dmaInit);
    
    SPI_I2S_DMACmd(SPI1, SPI_I2S_DMAReq_Tx | SPI_I2S_DMAReq_Rx, ENABLE);
}

/**
  * @brief  DMA等待传输完成宏
  */
#define DMA_WAIT_TX() while(DMA_GetFlagStatus(DMA1_FLAG_TC3))
#define DMA_WAIT_RX() while(DMA_GetFlagStatus(DMA1_FLAG_TC2))

void MySPI_DMA_Send(uint8_t *pData, uint16_t size)
{
    DMA_WAIT_TX();
    DMA1_Channel3->CMAR = (uint32_t)pData;
    DMA1_Channel3->CNDTR = size;
    DMA_Cmd(DMA1_Channel3, ENABLE);
    DMA_WAIT_TX();
}

void MySPI_DMA_Receive(uint8_t *pData, uint16_t size)
{
    DMA_WAIT_RX();
    DMA1_Channel2->CMAR = (uint32_t)pData;
    DMA1_Channel2->CNDTR = size;
    DMA_Cmd(DMA1_Channel2, ENABLE);
    DMA_WAIT_RX();
}

void MySPI_DMA_TransmitReceive(uint8_t *pTxData, uint8_t *pRxData, uint16_t size)
{
    DMA_WAIT_TX();
    DMA_WAIT_RX();
    
    DMA1_Channel3->CMAR = (uint32_t)pTxData;
    DMA1_Channel3->CNDTR = size;
    DMA1_Channel2->CMAR = (uint32_t)pRxData;
    DMA1_Channel2->CNDTR = size;
    
    /* 必须先启动RX再启动TX */
    DMA_Cmd(DMA1_Channel2, ENABLE);
    DMA_Cmd(DMA1_Channel3, ENABLE);
    
    DMA_WAIT_TX();
    DMA_WAIT_RX();
}