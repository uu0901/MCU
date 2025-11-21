#include "stm32f10x.h"                  // Device header
#include "MPU6050_Reg.h"

#define MPU6050_ADDRESS		0xD0		//MPU6050的I2C从机地址

#include <math.h>
#include "inv_mpu.h"
#include "inv_mpu_dmp_motion_driver.h"
#include "serial.h"

#define DEFAULT_MPU_HZ         (100)            //定义输出速度
#define q30                    1073741824.0f    //q30格式，long转float时的除数
//陀螺仪方向设置
static signed char gyro_orientation[9] = { 1,  0,  0,
                                           0,  1,  0,
                                           0,  0,  1};
float q0 = 1.0f, q1 = 0.0f, q2 = 0.0f, q3 = 0.0f;
unsigned long sensor_timestamp;
short gyro[3], accel[3], sensors;
unsigned char more;
long quat[4];
/**
  * 函    数：MPU6050等待事件
  * 参    数：同I2C_CheckEvent
  * 返 回 值：无
  */
uint8_t  MPU6050_WaitEvent(I2C_TypeDef* I2Cx, uint32_t I2C_EVENT)
{
	uint32_t Timeout;
	Timeout = 10000;									//给定超时计数时间
	while (I2C_CheckEvent(I2Cx, I2C_EVENT) != SUCCESS)	//循环等待指定事件
	{
		Timeout --;										//等待时，计数值自减
		if (Timeout == 0)								//自减到0后，等待超时
		{
			/*超时的错误处理代码，可以添加到此处*/
//			break;										//跳出等待，不等了
			return 0;
		}
	}
	return 1;
}

/**
  * 函    数：MPU6050写寄存器
  * 参    数：RegAddress 寄存器地址，范围：参考MPU6050手册的寄存器描述
  * 参    数：Data 要写入寄存器的数据，范围：0x00~0xFF
  * 返 回 值：无
  */
void MPU6050_WriteReg(uint8_t RegAddress, uint8_t Data)
{
	I2C_GenerateSTART(I2C2, ENABLE);										//硬件I2C生成起始条件
	MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_MODE_SELECT);					//等待EV5
	
	I2C_Send7bitAddress(I2C2, MPU6050_ADDRESS, I2C_Direction_Transmitter);	//硬件I2C发送从机地址，方向为发送
	MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED);	//等待EV6
	
	I2C_SendData(I2C2, RegAddress);											//硬件I2C发送寄存器地址
	MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_BYTE_TRANSMITTING);			//等待EV8
	
	I2C_SendData(I2C2, Data);												//硬件I2C发送数据
	MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_BYTE_TRANSMITTED);				//等待EV8_2
	
	I2C_GenerateSTOP(I2C2, ENABLE);											//硬件I2C生成终止条件
}

/**
  * 函    数：MPU6050读寄存器
  * 参    数：RegAddress 寄存器地址，范围：参考MPU6050手册的寄存器描述
  * 返 回 值：读取寄存器的数据，范围：0x00~0xFF
  */
uint8_t MPU6050_ReadReg(uint8_t RegAddress)
{
	uint8_t Data;
	
	I2C_GenerateSTART(I2C2, ENABLE);										//硬件I2C生成起始条件
	MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_MODE_SELECT);					//等待EV5
	
	I2C_Send7bitAddress(I2C2, MPU6050_ADDRESS, I2C_Direction_Transmitter);	//硬件I2C发送从机地址，方向为发送
	MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED);	//等待EV6
	
	I2C_SendData(I2C2, RegAddress);											//硬件I2C发送寄存器地址
	MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_BYTE_TRANSMITTED);				//等待EV8_2
	
	I2C_GenerateSTART(I2C2, ENABLE);										//硬件I2C生成重复起始条件
	MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_MODE_SELECT);					//等待EV5
	
	I2C_Send7bitAddress(I2C2, MPU6050_ADDRESS, I2C_Direction_Receiver);		//硬件I2C发送从机地址，方向为接收
	MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED);		//等待EV6
	
	I2C_AcknowledgeConfig(I2C2, DISABLE);									//在接收最后一个字节之前提前将应答失能
	I2C_GenerateSTOP(I2C2, ENABLE);											//在接收最后一个字节之前提前申请停止条件
	
	MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_BYTE_RECEIVED);				//等待EV7
	Data = I2C_ReceiveData(I2C2);											//接收数据寄存器
	
	I2C_AcknowledgeConfig(I2C2, ENABLE);									//将应答恢复为使能，为了不影响后续可能产生的读取多字节操作
	
	return Data;
}
/**
  * @brief  MPU6050指定地址连续写字节函数
  * @param  Addr 器件地址
  * @param  Reg  寄存器地址
  * @param  Len  要写入的数据长度
  * @param  Buf  写入数据的存储区
  * @retval 返回0表示正常，其他表示失败
  */
uint8_t MPU6050_Write_Len(uint8_t Addr, uint8_t Reg, uint8_t Len, uint8_t* Buf)
{
    int i=0;
    while( I2C_GetFlagStatus(I2C2, I2C_FLAG_BUSY) );        //等待总线空闲
    I2C_GenerateSTART(I2C2, ENABLE);
    MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_MODE_SELECT);     //检测EV5事件
    
    I2C_Send7bitAddress(I2C2, Addr<<1, I2C_Direction_Transmitter);
    if(MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED) == 0)     //检测EV6事件
    {
		I2C_GenerateSTOP(I2C2, ENABLE);
		return 1;
	}
    I2C_SendData(I2C2, Reg);//发送寄存器地址
    if(MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_BYTE_TRANSMITTING) == 0)     //检测EV8事件
    {
		I2C_GenerateSTOP(I2C2, ENABLE);
		return 1;
	}
    for(i=0;i<Len-1;i++)//len = 8  len - 1 = 7--> 0 ~ 6
    {
        I2C_SendData(I2C2, *Buf);
		//发送数据 0 Buffer0  Buffer ++ -->1  	i
		//发送数据 1 Buffer1  Buffer ++ -->2	i
		//发送数据 2 Buffer2  Buffer ++ -->3	i
		//发送数据 3 Buffer3  Buffer ++ -->4	i
		//发送数据 4 Buffer4  Buffer ++ -->5	i
		//发送数据 5 Buffer5  Buffer ++ -->6	i
		//发送数据 6 Buffer6  Buffer ++ -->7	i
        Buf++;
        if(MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_BYTE_TRANSMITTING) == 0)     //检测EV8事件
		{
			I2C_GenerateSTOP(I2C2, ENABLE);
			return 1;
		}
	}
	//发送数据 i = 7 Buffer7 
    I2C_SendData(I2C2, *Buf);//发送数据
	if(MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_BYTE_TRANSMITTING) == 0)     //检测EV8事件
	{
		I2C_GenerateSTOP(I2C2, ENABLE);
		return 1;
	}
	I2C_GenerateSTOP(I2C2, ENABLE);
	return 0;
}


/**
  * @brief   从MPU6050里面读取一块数据 
  * @param   
  *		@arg pBuffer:存放从EEPROM读取的数据的缓冲区指针
  *		@arg WriteAddr:接收数据的EEPROM的地址
  *     @arg NumByteToWrite:要从EEPROM读取的字节数
  * @retval  无
  */
uint8_t MPU6050_Read_Len(uint8_t Addr, uint8_t Reg, uint8_t Len, uint8_t* Buf)
{
    while( I2C_GetFlagStatus(I2C2, I2C_FLAG_BUSY) );        //等待总线空闲
    I2C_GenerateSTART(I2C2, ENABLE);
    while ( I2C_CheckEvent(I2C2, I2C_EVENT_MASTER_MODE_SELECT) == ERROR);
    
    I2C_Send7bitAddress(I2C2, Addr<<1, I2C_Direction_Transmitter);//指定地址，是写的
    while ( I2C_CheckEvent(I2C2, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED) == ERROR);
    
    /*通过重新设置PE位清除EV6事件 */
    I2C_Cmd(I2C2, ENABLE);
    
    I2C_SendData(I2C2, Reg);
    if(MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_BYTE_TRANSMITTED) == 0)
	{
		I2C_GenerateSTOP(I2C2, ENABLE); // 收到最后一个字节后发送 STOP
		
		return 1;	
	}
    
    I2C_GenerateSTART(I2C2, ENABLE);
    while ( I2C_CheckEvent(I2C2, I2C_EVENT_MASTER_MODE_SELECT) == ERROR);
    
    I2C_Send7bitAddress(I2C2, Addr<<1, I2C_Direction_Receiver);//指定地址，不过是读的，内部会自动把最后的读写位写上，不用手动写。
    if(MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED) == 0)//注意EV6事件的接收以及发送两者是不一样的，跳转到定义仔细观看。
	{
		I2C_GenerateSTOP(I2C2, ENABLE); // 收到最后一个字节后发送 STOP
		return 1;
	}
    /* 读取NumByteToRead个数据*/
    while (Len)//Len = 8
    {
		if (Len == 1)//最后一个字节发送之前就要提前发送非应答和停止，这是硬件IIC的要求
        {
            /* 发送非应答信号 */
            I2C_AcknowledgeConfig(I2C2, DISABLE);
			I2C_GenerateSTOP(I2C2, ENABLE); // 收到最后一个字节后发送 STOP
        }
		
        if(MPU6050_WaitEvent(I2C2, I2C_EVENT_MASTER_BYTE_RECEIVED)==0)
		{
			I2C_GenerateSTOP(I2C2, ENABLE); // 收到最后一个字节后发送 STOP
			return 1;
		}
		
		*Buf = I2C_ReceiveData(I2C2);
		//发送数据 0 Buffer0  Buffer ++ -->1len = 7		 	    8	
		//发送数据 1 Buffer1  Buffer ++ -->2	len = 6	     		7
		//发送数据 2 Buffer2  Buffer ++ -->3	len = 5				6
		//发送数据 3 Buffer3  Buffer ++ -->4	len = 4				5
		//发送数据 4 Buffer4  Buffer ++ -->5	len = 3				4
		//发送数据 5 Buffer5  Buffer ++ -->6	len = 2				3
		//发送数据 6 Buffer6  Buffer ++ -->7	len = 1				2
		//发送数据 7 Buffer6  Buffer ++ -->8	len = 0				1
		/* 存储数据的指针指向下一个地址 */
		Buf++;
		/* 接收数据自减 */
		
	
		Len--; 
		
    }

    I2C_AcknowledgeConfig(I2C2, ENABLE);//最后把应答置1，回复默认的值，方便后续的运用
	return 0;
}

/**
  * 函    数：MPU6050初始化
  * 参    数：无
  * 返 回 值：无
  */
void MPU6050_Init(void)
{
	/*开启时钟*/
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_I2C2, ENABLE);		//开启I2C2的时钟
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);		//开启GPIOB的时钟
	
	/*GPIO初始化*/
	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_OD;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10 | GPIO_Pin_11;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);					//将PB10和PB11引脚初始化为复用开漏输出
	
	/*I2C初始化*/
	I2C_InitTypeDef I2C_InitStructure;						//定义结构体变量
	I2C_InitStructure.I2C_Mode = I2C_Mode_I2C;				//模式，选择为I2C模式
	I2C_InitStructure.I2C_ClockSpeed =400000;				//时钟速度，选择为50KHz
	I2C_InitStructure.I2C_DutyCycle = I2C_DutyCycle_2;		//时钟占空比，选择Tlow/Thigh = 2
	I2C_InitStructure.I2C_Ack = I2C_Ack_Enable;				//应答，选择使能
	I2C_InitStructure.I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;	//应答地址，选择7位，从机模式下才有效
	I2C_InitStructure.I2C_OwnAddress1 = 0x00;				//自身地址，从机模式下才有效
	I2C_Init(I2C2, &I2C_InitStructure);						//将结构体变量交给I2C_Init，配置I2C2
	
	/*I2C使能*/
	I2C_Cmd(I2C2, ENABLE);									//使能I2C2，开始运行
	
	/*MPU6050寄存器初始化，需要对照MPU6050手册的寄存器描述配置，此处仅配置了部分重要的寄存器*/
//	MPU6050_WriteReg(MPU6050_PWR_MGMT_1, 0x01);				//电源管理寄存器1，取消睡眠模式，选择时钟源为X轴陀螺仪
//	MPU6050_WriteReg(MPU6050_PWR_MGMT_2, 0x00);				//电源管理寄存器2，保持默认值0，所有轴均不待机
//	MPU6050_WriteReg(MPU6050_SMPLRT_DIV, 0x09);				//采样率分频寄存器，配置采样率
//	MPU6050_WriteReg(MPU6050_CONFIG, 0x06);					//配置寄存器，配置DLPF
//	MPU6050_WriteReg(MPU6050_GYRO_CONFIG, 0x18);			//陀螺仪配置寄存器，选择满量程为±2000°/s
//	MPU6050_WriteReg(MPU6050_ACCEL_CONFIG, 0x18);			//加速度计配置寄存器，选择满量程为±16g
}


/**
  * 函    数：MPU6050获取ID号
  * 参    数：无
  * 返 回 值：MPU6050的ID号
  */

uint8_t MPU6050_GetID(void)
{
	return MPU6050_ReadReg(MPU6050_WHO_AM_I);		//返回WHO_AM_I寄存器的值//	MPU6050_Read_Len(0x68,MPU6050_PWR_MGMT_1,1, data);
}

/**
  * 函    数：MPU6050获取数据
  * 参    数：AccX AccY AccZ 加速度计X、Y、Z轴的数据，使用输出参数的形式返回，范围：-32768~32767
  * 参    数：GyroX GyroY GyroZ 陀螺仪X、Y、Z轴的数据，使用输出参数的形式返回，范围：-32768~32767
  * 返 回 值：无
  */
void MPU6050_GetData(int16_t *AccX, int16_t *AccY, int16_t *AccZ, 
						int16_t *GyroX, int16_t *GyroY, int16_t *GyroZ)
{
	uint8_t DataH, DataL;								//定义数据高8位和低8位的变量
	
	DataH = MPU6050_ReadReg(MPU6050_ACCEL_XOUT_H);		//读取加速度计X轴的高8位数据
	DataL = MPU6050_ReadReg(MPU6050_ACCEL_XOUT_L);		//读取加速度计X轴的低8位数据
	*AccX = (DataH << 8) | DataL;						//数据拼接，通过输出参数返回
	
	DataH = MPU6050_ReadReg(MPU6050_ACCEL_YOUT_H);		//读取加速度计Y轴的高8位数据
	DataL = MPU6050_ReadReg(MPU6050_ACCEL_YOUT_L);		//读取加速度计Y轴的低8位数据
	*AccY = (DataH << 8) | DataL;						//数据拼接，通过输出参数返回
	
	DataH = MPU6050_ReadReg(MPU6050_ACCEL_ZOUT_H);		//读取加速度计Z轴的高8位数据
	DataL = MPU6050_ReadReg(MPU6050_ACCEL_ZOUT_L);		//读取加速度计Z轴的低8位数据
	*AccZ = (DataH << 8) | DataL;						//数据拼接，通过输出参数返回
	
	DataH = MPU6050_ReadReg(MPU6050_GYRO_XOUT_H);		//读取陀螺仪X轴的高8位数据
	DataL = MPU6050_ReadReg(MPU6050_GYRO_XOUT_L);		//读取陀螺仪X轴的低8位数据
	*GyroX = (DataH << 8) | DataL;						//数据拼接，通过输出参数返回
	
	DataH = MPU6050_ReadReg(MPU6050_GYRO_YOUT_H);		//读取陀螺仪Y轴的高8位数据
	DataL = MPU6050_ReadReg(MPU6050_GYRO_YOUT_L);		//读取陀螺仪Y轴的低8位数据
	*GyroY = (DataH << 8) | DataL;						//数据拼接，通过输出参数返回
	
	DataH = MPU6050_ReadReg(MPU6050_GYRO_ZOUT_H);		//读取陀螺仪Z轴的高8位数据
	DataL = MPU6050_ReadReg(MPU6050_GYRO_ZOUT_L);		//读取陀螺仪Z轴的低8位数据
	*GyroZ = (DataH << 8) | DataL;						//数据拼接，通过输出参数返回
}
/**
  * @brief  DMP初始化函数
  * @param  无
  * @retval 无
  */
void MPU6050_DMPInit(void)
{
	volatile int8_t res = 0;
    
	MPU6050_Init();
    res = mpu_init();
    if(!res)
    {
        serialPrintf("mpu initialization complete ......\r\n");
        
		//设置所需要的传感器
        res = mpu_set_sensors(INV_XYZ_GYRO | INV_XYZ_ACCEL);
        if(!res)
            serialPrintf("mpu_set_sensor complete ......\r\n");
        else
            serialPrintf("mpu_set_sensor come across error ......\r\n");
		
        //设置FIFO
        res = mpu_configure_fifo(INV_XYZ_GYRO | INV_XYZ_ACCEL);
        if(!res)
            serialPrintf("mpu_configure_fifo complete ......\r\n");
        else
            serialPrintf("mpu_configure_fifo come across error ......\r\n");
        
		//设置采样率
        res = mpu_set_sample_rate(DEFAULT_MPU_HZ);
        if(!res)
            serialPrintf("mpu_set_sample_rate complete ......\r\n");
        else
            serialPrintf("mpu_set_sample_rate come across error ......\r\n");
        
		//加载DMP固件
        res = dmp_load_motion_driver_firmware();
        if(!res)
            serialPrintf("dmp_load_motion_driver_firmware complete ......\r\n");
        else
            serialPrintf("dmp_load_motion_driver_firmware come across error ......\r\n");
        
		//设置陀螺仪方向
        res = dmp_set_orientation(inv_orientation_matrix_to_scalar(gyro_orientation));
        if(!res)
            serialPrintf("dmp_set_orientation complete ......\r\n");
        else
            serialPrintf("dmp_set_orientation come across error ......\r\n");
        
		//设置DMP功能
        res = dmp_enable_feature(DMP_FEATURE_6X_LP_QUAT | DMP_FEATURE_TAP |	              
              DMP_FEATURE_ANDROID_ORIENT | DMP_FEATURE_SEND_RAW_ACCEL | DMP_FEATURE_SEND_CAL_GYRO |
              DMP_FEATURE_GYRO_CAL);
        if(!res)
            serialPrintf("dmp_enable_feature complete ......\r\n");
        else
            serialPrintf("dmp_enable_feature come across error ......\r\n");
        
		//设置DMP输出速率(最大不超过200Hz)
        res = dmp_set_fifo_rate(DEFAULT_MPU_HZ);
        if(!res)
            serialPrintf("dmp_set_fifo_rate complete ......\r\n");
        else
            serialPrintf("dmp_set_fifo_rate come across error ......\r\n");
        
		//自检
        res = run_self_test();
        if(!res)
            serialPrintf("mpu_run_self_test complete ......\r\n");
        else
            serialPrintf("mpu_run_self_test come across error ......\r\n");
        
		//使能DMP
        res = mpu_set_dmp_state(1);
        if(!res)
            serialPrintf("mpu_set_dmp_state complete ......\r\n");
        else
            serialPrintf("mpu_set_dmp_state come across error ......\r\n");
    }
    else
    {
        serialPrintf("mpu initialization come across error ......\r\n");
        while(1);
    }
}

/**
  * @brief  获取DMP处理后数据函数
  * @param  Pitch 俯仰角，精度:0.1°，范围:-90.0° ~ +90.0°
  * @param  Roll  横滚角，精度:0.1°，范围:-180.0°~ +180.0°
  * @param  yaw   偏航角，精度:0.1°，范围:-180.0°~ +180.0°
  * @retval 返回0表示正常，其他表示失败
  */
uint8_t MPU6050_ReadDMP(float *Pitch, float *Roll, float *Yaw)
{	
	if(dmp_read_fifo(gyro, accel, quat, &sensor_timestamp, &sensors, &more))  return 1;	
	if(sensors & INV_WXYZ_QUAT)
	{    
        q0 = quat[0] / q30;    //q30格式转换为浮点数
        q1 = quat[1] / q30;
        q2 = quat[2] / q30;
        q3 = quat[3] / q30;
        //计算得到俯仰角、横滚角和偏航角
        *Pitch = asin(-2 * q1 * q3 + 2 * q0 * q2) * 57.3; 	
        *Roll  = atan2(2 * q2 * q3 + 2 * q0 * q1, -2 * q1 * q1 - 2 * q2 * q2 + 1) * 57.3;
        *Yaw   = atan2(2 * q1 * q2 + 2 * q0 * q3, -2 * q2 * q2 - 2 * q3 * q3 + 1) * 57.3;
    }else  return 2;
    return 0;
}
