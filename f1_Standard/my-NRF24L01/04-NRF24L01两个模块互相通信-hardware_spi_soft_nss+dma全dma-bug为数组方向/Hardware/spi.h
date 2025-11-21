#ifndef __MY_SPI_H
#define __MY_SPI_H

#include <stdint.h>

/* 基础SPI功能 */
void MySPI_Init(void);
void MySPI_W_SS(uint8_t BitValue);
void MySPI_Start(void);
void MySPI_Stop(void);
uint8_t MySPI_SwapByte(uint8_t ByteSend);

/* 多字节传输（轮询） */
void MySPI_SendMultiBytes(uint8_t *pData, uint16_t size);
void MySPI_ReceiveMultiBytes(uint8_t *pData, uint16_t size);
void MySPI_TransmitReceiveMultiBytes(uint8_t *pTxData, uint8_t *pRxData, uint16_t size);//全双工

/* DMA传输 */
void MySPI_DMA_Send(uint8_t *pData, uint16_t size);
void MySPI_DMA_Receive(uint8_t *pData, uint8_t *pDummy, uint16_t size);
void MySPI_DMA_TransmitReceive(uint8_t *pTxData, uint8_t *pRxData, uint16_t size);//全双工

#endif /* __MY_SPI_H */

