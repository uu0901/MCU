#include "stm32f10x.h"                  // Device header
#include "Delay.h"
#include "OLED.h"
#include "MPU6050.h"
#include "Serial.h"
#include "Timer.h"

float Pitch, Roll, Yaw;
uint8_t config_data[3] = {
    0x04,   // SMPLRT_DIV = 4 → 采样率 = 1kHz/(4+1) = 200Hz
    0x03,   // CONFIG: DLPF = 10Hz
    0x18    // GYRO_CONFIG: ±2000°/s 量程
};
// 存储读回的数据
uint8_t read_back[3];
#define MPU6050_ADDR 0x68
void MPU6050_Write_Test(void)
{
    Serial_Printf("开始测试 MPU6050 多字节写入功能...\n");

    // Step 1: 调用你的写函数，写入3个字节
    uint8_t result = MPU6050_Write_Len(MPU6050_ADDR, 0x19, 3, config_data);

    if (result != 0) {
        Serial_Printf("写入失败！返回错误码: %d\n", result);
        return;
    }

    Serial_Printf("多字节写入成功！等待100ms稳定...\n");
    Delay_ms(100);  // 简单延时

    // Step 2: 读回这3个寄存器验证
    MPU6050_Read_Len(MPU6050_ADDR, 0x19, 3, read_back);

    Serial_Printf("寄存器读回值: 0x%02X, 0x%02X, 0x%02X\n",
           read_back[0], read_back[1], read_back[2]);

    // Step 3: 比较是否与写入值一致
    if (read_back[0] == config_data[0] &&
        read_back[1] == config_data[1] &&
        read_back[2] == config_data[2]) {
        Serial_Printf("测试通过！写入与读回数据一致。\n");
    } else {
        Serial_Printf("测试失败！数据不一致。\n");
    }
}

int main(void)
{
    OLED_Init();
    Serial_Init();
	MPU6050_DMPInit();
	Timer_Init();
		
	OLED_ShowString(0, 0, "MPU6050", OLED_8X16);
	
    while(1)
    {
		OLED_Printf(0, 16, OLED_8X16, "Pitch:%+06.1f", Pitch);
		OLED_Printf(0, 32, OLED_8X16, "Roll :%+06.1f", Roll);
		OLED_Printf(0, 48, OLED_8X16, "Yaw  :%+06.1f", Yaw);
		OLED_Update();
		
//		MPU6050_Write_Test();
    }
}

/**
  * @brief  TIM2定时中断函数，复制到main
  * @param  无
  * @retval 无
  */
void TIM2_IRQHandler(void)
{
	if(TIM_GetITStatus(TIM2, TIM_IT_Update) == SET)    //判断是否为定时器TIM2更新中断
	{
		MPU6050_ReadDMP(&Pitch, &Roll, &Yaw);
		TIM_ClearITPendingBit(TIM2, TIM_IT_Update);    //清除定时器TIM2更新中断标志位 
	}
}
