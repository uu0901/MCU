#include "stm32f10x.h"                  // Device header

void MyCAN_Init(void)
{
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN1, ENABLE);
	
	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	
	CAN_InitTypeDef CAN_InitStructure;
	CAN_InitStructure.CAN_Mode = CAN_Mode_LoopBack;
	CAN_InitStructure.CAN_Prescaler = 48;		//分频系数
	CAN_InitStructure.CAN_BS1 = CAN_BS1_2tq;	//BS1位时序的PTS+PBS1
	CAN_InitStructure.CAN_BS2 = CAN_BS2_3tq;	//BS2位时序的PBS2					波特率 = 36M / 48 / (1 + 2 + 3) = 125K
	CAN_InitStructure.CAN_SJW = CAN_SJW_2tq;	//SJW再同步补偿宽度	
	CAN_InitStructure.CAN_NART = DISABLE;		//NART禁止自动重传，CAN总线默认是自动重传，所以这里叫不自动重传， 1不自动重传，0自动重传
	CAN_InitStructure.CAN_TXFP = DISABLE;		//TXFP发送邮箱优先级，1先请求先发送，0优先级由报文标识符来决定，标识符值小的先发送（标识符值相等时，邮箱号小的报文先发送）
	CAN_InitStructure.CAN_RFLM = DISABLE;		//RFLM接收FIFO锁存，1，接收FIFO锁定，FIFO溢出时，新收到的报文会被丢弃；0，禁用FIFO锁定，FIFO溢出时，FIFO中最后收到的报文被新报文覆盖
	CAN_InitStructure.CAN_AWUM = DISABLE;		//AWUM自动唤醒，1，自动唤醒，一旦检测到CAN总线活动，硬件就自动清零SLEEP，唤醒CAN外设；0，手动唤醒，软件清零SLEEP，唤醒CAN外设
	CAN_InitStructure.CAN_TTCM = DISABLE;		//TTCM时间触发通信，1，开启时间触发通信功能；0，关闭时间触发通信功能
	CAN_InitStructure.CAN_ABOM = DISABLE;		//ABOM离线自动恢复，1，开启离线自动恢复，进入离线状态后，就自动开启恢复过程；0，关闭离线自动恢复，软件必须先请求进入然后再退出初始化模式，随后恢复过程才被开启
	CAN_Init(CAN1, &CAN_InitStructure);
	
	/*
	16位列表模式：
				ID1 CAN_FilterIdHigh
				ID2 CAN_FilterIdLow
				ID3 CAN_FilterMaskIdHigh
				ID4 CAN_FilterMaskIdLow
	16位屏蔽模式：
				ID1 CAN_FilterIdHigh 屏蔽位 CAN_FilterMaskIdHigh
				ID2 CAN_FilterIdLow	 屏蔽位 CAN_FilterMaskIdLow
	32位列表模式：
				ID1	CAN_FilterIdHigh    和 CAN_FilterIdLow	    组合在一起存入32位ID
				ID2 CAN_FilterMaskIdHigh和 CAN_FilterMaskIdLow	组合在一起存入32位ID
	32位屏蔽模式：
				ID1	   CAN_FilterIdHigh    和 CAN_FilterIdLow	    组合在一起存入32位ID
				屏蔽位 CAN_FilterMaskIdHigh和 CAN_FilterMaskIdLow
	*/
	CAN_FilterInitTypeDef CAN_FilterInitStructure;
	CAN_FilterInitStructure.CAN_FilterNumber = 0;
	
	uint32_t ID = (0x12345600u << 3) | 0x4;//0x12345600~0x123456FF
	CAN_FilterInitStructure.CAN_FilterIdHigh = ID >> 16;
	CAN_FilterInitStructure.CAN_FilterIdLow = ID;
	
	uint32_t Mask = (0x1FFFFF00u << 3) | 0x4 | 0x2;
	CAN_FilterInitStructure.CAN_FilterMaskIdHigh = Mask >> 16;
	CAN_FilterInitStructure.CAN_FilterMaskIdLow = Mask;
	
	CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
	CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdMask;
	CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_Filter_FIFO0;
	CAN_FilterInitStructure.CAN_FilterActivation = ENABLE;
	CAN_FilterInit(&CAN_FilterInitStructure);
}

// void MyCAN_Transmit(uint32_t ID, uint8_t Length, uint8_t *Data)
// {
// 	CanTxMsg TxMessage;
// 	TxMessage.StdId = ID;
// 	TxMessage.ExtId = ID;
// 	TxMessage.IDE = CAN_Id_Standard;		//CAN_ID_STD 标准格式
// 	TxMessage.RTR = CAN_RTR_Data;		    //数据帧
// 	TxMessage.DLC = Length;
// 	for (uint8_t i = 0; i < Length; i ++)
// 	{
// 		TxMessage.Data[i] = Data[i];
// 	}
	
// 	uint8_t TransmitMailbox = CAN_Transmit(CAN1, &TxMessage);
	
// 	uint32_t Timeout = 0;
// 	while (CAN_TransmitStatus(CAN1, TransmitMailbox) != CAN_TxStatus_Ok)
// 	{
// 		Timeout ++;
// 		if (Timeout > 100000)
// 		{
// 			break;
// 		}
// 	}
// }
void MyCAN_Transmit(CanTxMsg *TxMessage)
{
	uint8_t TransmitMailbox = CAN_Transmit(CAN1, TxMessage);
	
	uint32_t Timeout = 0;
	while (CAN_TransmitStatus(CAN1, TransmitMailbox) != CAN_TxStatus_Ok)
	{
		Timeout ++;
		if (Timeout > 100000)
		{
			break;
		}
	}
}
uint8_t MyCAN_ReceiveFlag(void)
{
	if (CAN_MessagePending(CAN1, CAN_FIFO0) > 0)
	{
		return 1;
	}
	return 0;
}

// void MyCAN_Receive(uint32_t *ID, uint8_t *Length, uint8_t *Data)
// {
// 	CanRxMsg RxMessage;
// 	CAN_Receive(CAN1, CAN_FIFO0, &RxMessage);
	
// 	if (RxMessage.IDE == CAN_Id_Standard)
// 	{
// 		*ID = RxMessage.StdId;
// 	}
// 	else
// 	{
// 		*ID = RxMessage.ExtId;
// 	}
	
// 	if (RxMessage.RTR == CAN_RTR_Data)
// 	{
// 		*Length = RxMessage.DLC;
// 		for (uint8_t i = 0; i < *Length; i ++)
// 		{
// 			Data[i] = RxMessage.Data[i];
// 		}
// 	}
// 	else
// 	{
// 		//...
// 	}
// }
void MyCAN_Receive(CanRxMsg *RxMessage)
{
	CAN_Receive(CAN1, CAN_FIFO0, RxMessage);
}
