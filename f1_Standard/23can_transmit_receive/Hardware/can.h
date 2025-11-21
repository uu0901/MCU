#ifndef __MYCAN_H
#define __MYCAN_H

extern CanRxMsg MyCAN_RxMsg;
extern uint8_t MyCAN_RxFlag;

void MyCAN_Init(void);
void MyCAN_Transmit(CanTxMsg *TxMessage);
uint8_t MyCAN_ReceiveFlag(void);
void MyCAN_Receive(CanRxMsg *RxMessage);
#endif
