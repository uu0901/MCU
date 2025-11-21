#include "stm32f10x.h"                  // Device header
#include "MyI2C.h"
#include "MPU6050_Reg.h"


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
										   

#define MPU6050_ADDRESS		0xD0		//MPU6050的I2C从机地址

/**
  * 函    数：MPU6050写寄存器
  * 参    数：RegAddress 寄存器地址，范围：参考MPU6050手册的寄存器描述
  * 参    数：Data 要写入寄存器的数据，范围：0x00~0xFF
  * 返 回 值：无
  */
void MPU6050_WriteReg(uint8_t RegAddress, uint8_t Data)
{
	MyI2C_Start();						//I2C起始
	MyI2C_SendByte(MPU6050_ADDRESS);	//发送从机地址，读写位为0，表示即将写入
	MyI2C_ReceiveAck();					//接收应答
	MyI2C_SendByte(RegAddress);			//发送寄存器地址
	MyI2C_ReceiveAck();					//接收应答
	MyI2C_SendByte(Data);				//发送要写入寄存器的数据
	MyI2C_ReceiveAck();					//接收应答
	MyI2C_Stop();						//I2C终止
}

/**
  * 函    数：MPU6050读寄存器
  * 参    数：RegAddress 寄存器地址，范围：参考MPU6050手册的寄存器描述
  * 返 回 值：读取寄存器的数据，范围：0x00~0xFF
  */
uint8_t MPU6050_ReadReg(uint8_t RegAddress)
{
	uint8_t Data;
	
	MyI2C_Start();						//I2C起始
	MyI2C_SendByte(MPU6050_ADDRESS);	//发送从机地址，读写位为0，表示即将写入
	MyI2C_ReceiveAck();					//接收应答
	MyI2C_SendByte(RegAddress);			//发送寄存器地址
	MyI2C_ReceiveAck();					//接收应答
	
	MyI2C_Start();						//I2C重复起始
	MyI2C_SendByte(MPU6050_ADDRESS | 0x01);	//发送从机地址，读写位为1，表示即将读取
	MyI2C_ReceiveAck();					//接收应答
	Data = MyI2C_ReceiveByte();			//接收指定寄存器的数据
	MyI2C_SendAck(1);					//发送应答，给从机非应答，终止从机的数据输出
	MyI2C_Stop();						//I2C终止
	
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
uint8_t MPU6050_Write_Len(uint8_t Addr, uint8_t Reg, uint8_t Len, uint8_t *Buf)
{
    MyI2C_Start();
	MyI2C_SendByte((Addr << 1) | 0x00);    //发送器件地址+写命令
	if(MyI2C_ReceiveAck())    //等待应答
	{
		MyI2C_Stop();
		return 1;
	}
    MyI2C_SendByte(Reg);	  //写寄存器地址
    if(MyI2C_ReceiveAck())    //等待应答
	{
		MyI2C_Stop();
		return 1;
	}
	while(Len--)
	{
		MyI2C_SendByte(*Buf++);    //发送数据
		if(MyI2C_ReceiveAck())     //等待ACK
		{
			MyI2C_Stop();
			return 1;
		}
	}
    MyI2C_Stop();
	return 0;
} 

/**
  * @brief  MPU6050指定地址连续读字节函数
  * @param  Addr 器件地址
  * @param  Reg  寄存器地址
  * @param  Len  要读取的数据长度
  * @param  Buf  读取数据的存储区
  * @retval 返回0表示正常，其他表示失败
  */
uint8_t MPU6050_Read_Len(uint8_t Addr, uint8_t Reg, uint8_t Len, uint8_t *Buf)
{
	MyI2C_Start();
	MyI2C_SendByte((Addr << 1) | 0x00);    //发送器件地址+写命令
	if(MyI2C_ReceiveAck())
	{
		MyI2C_Stop();
		return 1;
	}
	MyI2C_SendByte(Reg);      //写寄存器地址
	if(MyI2C_ReceiveAck())    //等待应答
	{
		MyI2C_Stop();
		return 1;
	}
	MyI2C_Start();
	MyI2C_SendByte((Addr << 1) | 0x01);    //发送器件地址+读命令
	if(MyI2C_ReceiveAck())    //等待应答
	{
		MyI2C_Stop();
		return 1;
	}
	while(Len--)
	{
		*Buf++ = MyI2C_ReceiveByte();    //读数据
		if(Len)  {MyI2C_SendAck(0);}     //发送ACK
		else     {MyI2C_SendAck(1);}     //发送nACK	
	}
	MyI2C_Stop();
	return 0;
}
/**
  * 函    数：MPU6050初始化
  * 参    数：无
  * 返 回 值：无
  */
void MPU6050_Init(void)
{
	MyI2C_Init();									//先初始化底层的I2C
	
	/*MPU6050寄存器初始化，需要对照MPU6050手册的寄存器描述配置，此处仅配置了部分重要的寄存器*/
	MPU6050_WriteReg(MPU6050_PWR_MGMT_1, 0x01);		//电源管理寄存器1，取消睡眠模式，选择时钟源为X轴陀螺仪
	MPU6050_WriteReg(MPU6050_PWR_MGMT_2, 0x00);		//电源管理寄存器2，保持默认值0，所有轴均不待机
	MPU6050_WriteReg(MPU6050_SMPLRT_DIV, 0x09);		//采样率分频寄存器，配置采样率
	MPU6050_WriteReg(MPU6050_CONFIG, 0x06);			//配置寄存器，配置DLPF
	MPU6050_WriteReg(MPU6050_GYRO_CONFIG, 0x18);	//陀螺仪配置寄存器，选择满量程为±2000°/s
	MPU6050_WriteReg(MPU6050_ACCEL_CONFIG, 0x18);	//加速度计配置寄存器，选择满量程为±16g
}

/**
  * 函    数：MPU6050获取ID号
  * 参    数：无
  * 返 回 值：MPU6050的ID号
  */
uint8_t MPU6050_GetID(void)
{
	return MPU6050_ReadReg(MPU6050_WHO_AM_I);		//返回WHO_AM_I寄存器的值
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
	uint8_t res = 0;
    
	MyI2C_Init();
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
