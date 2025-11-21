/*
 *   _           _____        ____  
 *  | |         |  __ \      / __ \ 
 *  | |         | |  | |    | |  | |
 *  | |____     | |__| |    | |__| |
 *  |______|    |_____/      \____/
 *                              \_\
 *  
 * Driver: MySPI.c
 * Author: LDQ
 * Desc:   STM32 SPI Driver with DMA support
 */

#include "stm32f10x.h"
#include "spi.h"

/* 私有函数声明 */
static void SPI_DMA_Init(void);
static void DMA_ClearFlags(uint8_t tx);
static void DMA_WaitComplete(uint8_t tx, uint32_t timeout);

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
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN_FLOATING;   // 浮空输入（推荐）
    GPIO_Init(GPIOA, &GPIO_InitStruct);
    
    /* SPI配置 */
    SPI_InitTypeDef SPI_InitStruct = {
        .SPI_Mode = SPI_Mode_Master,
        .SPI_Direction = SPI_Direction_2Lines_FullDuplex,
        .SPI_DataSize = SPI_DataSize_8b,
        .SPI_FirstBit = SPI_FirstBit_MSB,
        .SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_8, // 提高SPI速度
        .SPI_CPOL = SPI_CPOL_Low,
        .SPI_CPHA = SPI_CPHA_1Edge,
        .SPI_NSS = SPI_NSS_Soft,
        .SPI_CRCPolynomial = 7
    };
    SPI_Init(SPI1, &SPI_InitStruct);
    SPI_Cmd(SPI1, ENABLE);
    
    /* DMA初始化 */
    SPI_DMA_Init();
    
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
    uint32_t timeout = 1000000;
    
    // 等待发送缓冲区空
    while(!SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_TXE)) //0 error 发送寄存器非空 等待
	{
        if (timeout-- == 0) break;
    }
    SPI_I2S_SendData(SPI1, ByteSend);
    
    // 等待接收完成
    timeout = 1000000;
    while(!SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_RXNE))//0 error 接收寄存器空 等待
	{
        if (timeout-- == 0) break;
    }
    return SPI_I2S_ReceiveData(SPI1);
}

/********************** 多字节传输（软件轮询） **********************/

void MySPI_SendMultiBytes(uint8_t *pData, uint16_t size)
{
    while(size--)//5 4 3 2 1
	{
        MySPI_SwapByte(*pData++);//0 1 2 3 4
    }
}

void MySPI_ReceiveMultiBytes(uint8_t *pData, uint16_t size)
{
    while(size--) 
	{
        *pData++ = MySPI_SwapByte(0xFF);
    }
}

void MySPI_TransmitReceiveMultiBytes(uint8_t *pTxData, uint8_t *pRxData, uint16_t size)
{
    while(size--) 
	{
        *pRxData++ = MySPI_SwapByte(*pTxData++);
    }
}

/********************** DMA传输功能 **********************/

/**
  * @brief  清除DMA4种标志位
  * @param  tx: 1=清除TX通道标志, 0=清除RX通道标志
  */

/*
	GLx (全局标志)	通道全局状态	清除所有相关中断
	TCx (传输完成)	数据全部传输完成	避免误判已完成
	HTx (半传输)	传输完成一半	避免残留状态
	TEx (传输错误)	传输发生错误	清除错误状态

	GLx（全局标志）包含TCx/HTx/TEx三个子标志

    清除GLx就等效于同时清除所有子标志

    TX通道：DMA1 Channel3 (SPI1_TX)

    RX通道：DMA1 Channel2 (SPI1_RX)
	
	
	在F1/F4系列中，清除全局标志就足够

	对于H7系列等新型号，可能需要额外清除DMEIFx（直接模式错误标志）

	多通道系统中注意IFCR的写操作是"写1清除"，不影响其他通
*/
static void DMA_ClearFlags(uint8_t tx)
{
    if (tx) 
	{
//        DMA_ClearFlag(DMA1_FLAG_GL3 | DMA1_FLAG_TC3 | DMA1_FLAG_HT3 | DMA1_FLAG_TE3);
//		DMA_ClearFlag(DMA1_FLAG_GL3); // 等效清除TC3/HT3/TE3
		DMA1->IFCR = DMA_IFCR_CGIF3; // 直接操作寄存器
    } 
	else 
	{
//        DMA_ClearFlag(DMA1_FLAG_GL2 | DMA1_FLAG_TC2 | DMA1_FLAG_HT2 | DMA1_FLAG_TE2);
//		DMA_ClearFlag(DMA1_FLAG_GL2); // 等效清除TC2/HT2/TE2
		DMA1->IFCR = DMA_IFCR_CGIF2;
    }
}

/**
  * @brief  等待DMA传输完成并清除传输完成标志位
  * @param  tx: 1=等待TX通道, 0=等待RX通道
  * @param  timeout: 超时计数
  */
static void DMA_WaitComplete(uint8_t tx, uint32_t timeout)
{
    uint32_t flag = tx ? DMA1_FLAG_TC3 : DMA1_FLAG_TC2;//传输完成标志位
    
    while (DMA_GetFlagStatus(flag) == RESET)// RESET未完成等待
	{
        if (timeout-- == 0) 
		{
            // 超时处理
            if (tx) DMA_Cmd(DMA1_Channel3, DISABLE);
            else DMA_Cmd(DMA1_Channel2, DISABLE);
            break;
        }
    }
	//完成 清除标志位
    DMA_ClearFlag(flag);
}

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
    
    // 使能SPI的DMA请求
    SPI_I2S_DMACmd(SPI1, SPI_I2S_DMAReq_Tx | SPI_I2S_DMAReq_Rx, ENABLE);
    
    // 初始禁用DMA通道
    DMA_Cmd(DMA1_Channel3, DISABLE);//TX
    DMA_Cmd(DMA1_Channel2, DISABLE);//RX
    
    // 清除所有DMA标志
    DMA_ClearFlags(1);
    DMA_ClearFlags(0);
}

/**
  * @brief  使用DMA发送数据
  * @param  pData: 数据指针
  * @param  size: 数据大小（字节数）
  */
/*
    在DMA通道使能状态下修改CNDTR等寄存器是无效的（STM32硬件保护机制）

    禁用通道可以确保配置原子性，避免传输过程中出现数据错乱

    清除标志位可防止旧的中断状态影响新传输

	| 操作步骤       | Normal模式必须 | Circular模式建议 |
	|----------------|----------------|------------------|
	| 禁用-配置-使能 | ✓ 强制要求     | ✓ 推荐但不强制   |
	| 清除标志位     | ✓ 必须         | ✓ 必须           |

*/
void MySPI_DMA_Send(uint8_t *pData, uint16_t size)
{
    // 等待SPI空闲
    while(SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_BSY));
    
    // 禁用DMA通道
    DMA_Cmd(DMA1_Channel3, DISABLE);//TX
    
    // 清除标志
    DMA_ClearFlags(1);
    
    // 配置DMA
    DMA1_Channel3->CMAR = (uint32_t)pData;
    DMA1_Channel3->CNDTR = size;
    
    DMA_Cmd(DMA1_Channel3, ENABLE);
    
    // 等待传输完成（带超时）
    DMA_WaitComplete(1, 1000000);//等待DMA发送完成标志，然后清除DMA发送完成标志
    //在Normal模式下，DMA传输完成后会自动关闭通道（硬件自动清除CCR寄存器的EN位）
}

/**
  * @brief  使用DMA接收数据
  * @param  pData: 数据指针
  * @param  size: 数据大小（字节数）
  */
/*
    SPI全双工模式下，RX和TX是同步进行的

    单独禁用一个通道可能导致数据错位

    避免配置过程中产生虚假时钟信号
*/
void MySPI_DMA_Receive(uint8_t *pData, uint8_t *pDummy, uint16_t size)
{
    // 等待SPI空闲
    while(SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_BSY));
    
    // 禁用DMA通道
    DMA_Cmd(DMA1_Channel2, DISABLE);//RX
    DMA_Cmd(DMA1_Channel3, DISABLE);//TX
    
    // 清除标志
    DMA_ClearFlags(0);
    DMA_ClearFlags(1);
    
    // 配置RX DMA
    DMA1_Channel2->CMAR = (uint32_t)pData;
    DMA1_Channel2->CNDTR = size;
    
    // 配置TX DMA（发送0xFF产生时钟）
//    static uint8_t dummy = 0xFF;
    DMA1_Channel3->CMAR = (uint32_t)&pDummy;
    DMA1_Channel3->CNDTR = size + 1;
	
	DMA_Cmd(DMA1_Channel3, ENABLE);//TX
    DMA_Cmd(DMA1_Channel2, ENABLE);//RX

    
    // 等待传输完成（主要等待RX完成）
    DMA_WaitComplete(0, 1000000);//等待DMA接收完成标志，然后清除DMA接收完成标志
      
    // (显式)禁用DMA通道
    DMA_Cmd(DMA1_Channel2, DISABLE);//RX
    DMA_Cmd(DMA1_Channel3, DISABLE);//TX
	
	/*
	接收通道的特殊性：

						虽然RX通道也会自动关闭，但建议显式禁用是因为：

							防止残留数据继续写入内存

							确保下次配置时的确定状态

							接收数据完整性更重要

	发送通道可以不显式禁用的原因：

						TX只是发送固定dummy数据（0xFF）

						即使不立即禁用也不会影响系统

						下次传输前配置时会重新初始化
	*/
}

/**
  * @brief  使用DMA同时发送和接收数据
  * @param  pTxData: 发送数据指针
  * @param  pRxData: 接收数据指针
  * @param  size: 数据大小（字节数）
  */
void MySPI_DMA_TransmitReceive(uint8_t *pTxData, uint8_t *pRxData, uint16_t size)
{
    // 等待SPI空闲
    while(SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_BSY));
    
    // 禁用DMA通道
    DMA_Cmd(DMA1_Channel2, DISABLE);
    DMA_Cmd(DMA1_Channel3, DISABLE);
    
    // 清除标志
    DMA_ClearFlags(0);
    DMA_ClearFlags(1);
    
    // 配置DMA
    DMA1_Channel3->CMAR = (uint32_t)pTxData;
    DMA1_Channel3->CNDTR = size;
    
    DMA1_Channel2->CMAR = (uint32_t)pRxData;
    DMA1_Channel2->CNDTR = size;
    
    
    DMA_Cmd(DMA1_Channel3, ENABLE);
	DMA_Cmd(DMA1_Channel2, ENABLE);
	
    // 等待传输完成（等待RX完成，TX通常会先完成）
    DMA_WaitComplete(0, 1000000);
    /*
	为什么不需要等待TX：

    同步传输特性：

        SPI全双工传输中，TX和RX共享同一个时钟

        每个发送的字节必然对应一个接收的字节

        RX完成意味着TX必定已完成

    DMA工作模式：

        在Normal模式下，TX DMA传输完成会自动停止

        即使TX提前完成，也不会影响RX继续接收
	
	*/
}