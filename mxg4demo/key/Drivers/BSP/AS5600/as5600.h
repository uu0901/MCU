#ifndef __AS5600_H__
#define __AS5600_H__

#include "main.h"
#include <stdio.h>
#include "i2c.h"

#define PI								3.14159265358979f
#define AS5600_ADDRESS                  0x36 << 1	    //设备从地址
#define Write_Bit                 		0	   			//写标记
#define Read_Bit                  		1    			//读标记
#define Angle_Hight_Register_Addr 		0x0C 			//寄存器高位地址
#define Angle_Low_Register_Addr   		0x0D 			//寄存器低位地址
#define DATA_SIZE 						2 				// 每次读取2字节数据

extern uint8_t data[2];
extern float angleWithoutCircle;
extern float angleWithCircle;
extern int fullRotations;
void as5600SetZeroPosition(void);
void as5600ReadDMA(uint8_t regAddress, uint8_t* pData, uint16_t Size);
#endif
