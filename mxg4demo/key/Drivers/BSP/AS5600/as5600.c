#include "as5600.h"
#include "math.h"

// 全局变量：用于圈数跟踪
static float anglePrev = 0.0f;           // 上一次读取的角度（弧度）
int fullRotations = 0;            // 累计完整旋转圈数（正负表示方向）
static float zeroOffset = 0.0f;   // 新增：零位偏移量（弧度）

// 全局缓冲区：存储从 AS5600 读取的原始数据（高位+低位）
uint8_t data[2] = {0};

// 全局输出变量：供主程序或其他模块使用
float angleWithoutCircle = 0.0f;  // 单圈角度（0 ~ 2π 弧度）
float angleWithCircle = 0.0f;     // 多圈累计角度（可正可负，单位：弧度）

/**
 * @brief 向 AS5600 写入单个寄存器
 * @param reg: 寄存器地址（如 0x0B 状态寄存器）
 * @param value: 要写入的值
 */
void as5600WriteReg(uint16_t reg, uint8_t value)
{
    HAL_I2C_Mem_Write(&hi2c1, AS5600_ADDRESS, reg, I2C_MEMADD_SIZE_8BIT, &value, 1, 50);
}

/**
 * @brief 向 AS5600 写入多个连续寄存器
 * @param reg: 起始寄存器地址
 * @param value: 指向要写入数据的指针
 * @param len: 数据长度（字节数）
 */
void as5600WriteRegs(uint16_t reg, uint8_t *value, uint16_t len)
{
    HAL_I2C_Mem_Write(&hi2c1, AS5600_ADDRESS, reg, I2C_MEMADD_SIZE_8BIT, value, len, 50);
}

/**
 * @brief 使用 DMA 方式从 AS5600 读取指定寄存器的数据
 * @param regAddress: 起始寄存器地址（如 0x0C 角度高位）
 * @param pData: 接收数据的缓冲区指针
 * @param Size: 要读取的字节数（通常为 2）
 * @note 此函数是非阻塞的，数据就绪后会触发回调
 */
void as5600ReadDMA(uint8_t regAddress, uint8_t* pData, uint16_t Size)
{
    if (HAL_I2C_Mem_Read_DMA(&hi2c1, AS5600_ADDRESS, regAddress, I2C_MEMADD_SIZE_8BIT, pData, Size) != HAL_OK)
    {
        printf("I2C DMA read failed\r\n");
    }
}

/**
 * @brief 阻塞式读取 AS5600 原始角度值（12-bit）
 * @return 12-bit 原始角度值 (0-4095)
 * @note 用于初始化时获取零位，不使用 DMA
 */
uint16_t as5600ReadRawAngleBlocking(void)
{
    uint8_t buffer[2];
    if (HAL_I2C_Mem_Read(&hi2c1, AS5600_ADDRESS, Angle_Hight_Register_Addr, I2C_MEMADD_SIZE_8BIT, buffer, 2, 100) == HAL_OK)
	{
        return (((uint16_t)buffer[0] << 8) | buffer[1]) & 0x0FFF;
    }
    return 0; // 读取失败返回0
}

/**
 * @brief 设置当前角度为零位
 * @note 必须在初始化阶段（启动DMA前）调用
 */
void as5600SetZeroPosition(void)
{
    // 1. 阻塞读取当前原始角度
    uint16_t rawAngle = as5600ReadRawAngleBlocking();
    
    // 2. 计算零位偏移量（弧度）
    zeroOffset = (float)rawAngle * (2.0f * PI) / 4096.0f;
    
    // 3. 重置圈数计数器和上一次角度值
    fullRotations = 0;
    anglePrev = 0.0f;  // 归一化后当前角度应为0
    
    // 4. 更新全局数据缓冲区（使首次DMA回调时数据一致）
    data[0] = (rawAngle >> 4) & 0xFF;  // 高8位
    data[1] = (rawAngle << 4) & 0xFF;  // 低4位（实际低4位在data[1]高4位）
    
    printf("Zero position set: raw=0x%03X, offset=%.4f rad\r\n",  rawAngle, zeroOffset);
}

/**
 * @brief 获取当前单圈角度（不跟踪圈数）
 * @return 角度值（弧度），范围 [0, 2π)
 * @note 原始数据为 12-bit（0~4095），对应 0°~360°
 *       减去零位偏移并归一化到[0, 2π)
 */
float getAngleWithoutTrack(void)
{
    // 组合高位和低位，形成 16-bit 原始值
    int16_t inAngle = ((int16_t)data[0] << 8) | data[1];
    
    // 仅保留低 12 位（AS5600 输出为 12-bit）
    inAngle &= 0x0FFF;
    
    // 转换为弧度：(raw / 4096) * 2π
    float rawAngleRad = (float)inAngle * (2.0f * PI) / 4096.0f;
    
    // 减去零位偏移
    float adjustedAngle = rawAngleRad - zeroOffset;
    
    // 归一化到 [0, 2π)
    adjustedAngle = fmodf(adjustedAngle, 2.0f * PI);
    if (adjustedAngle < 0) {
        adjustedAngle += 2.0f * PI;
    }
    
    return adjustedAngle;
}

/**
 * @brief 获取带圈数跟踪的累计角度（支持多圈）
 * @return 累计角度（弧度），可正可负，无范围限制
 * @note 通过检测角度跳变（>0.8圈）判断是否发生溢出（0→360 或 360→0）
 */
float getAngle(void)
{
    float currentAngle = getAngleWithoutTrack();  // 当前单圈角度（已归一化）      
    float delta = currentAngle - anglePrev;       // 与上一次的角度差

    // 判断是否发生圈数溢出（例如从 6.0 跳到 0.1，或从 0.1 跳到 6.0）
    if (fabsf(delta) > (0.8f * 2.0f * PI)) {
        // 当角度从接近 0 跳到接近 2π（例如 0.1 → 6.2）：
        //   delta > 0，表示逆时针旋转跨过了 0° 点（多转了一圈逆时针）
        //   累计角度应减少 2π → 圈数减 1
        // 当角度从接近 2π 跳到接近 0（例如 6.2 → 0.1）：
        //   delta < 0，表示顺时针旋转跨过了 360° 点（多转了一圈顺时针）
        //   累计角度应增加 2π → 圈数加 1
        fullRotations += (delta > 0) ? -1 : 1;
    }

    // 更新历史角度
    anglePrev = currentAngle;

    // 返回累计角度 = 圈数 × 2π + 当前单圈角度
    return (float)fullRotations * 2.0f * PI + currentAngle;
}

/**
 * @brief I2C DMA 接收完成回调函数
 * @param hi2c: I2C 句柄指针
 * @note 此函数在每次 DMA 成功接收 2 字节角度数据后自动调用
 */
void HAL_I2C_MemRxCpltCallback(I2C_HandleTypeDef *hi2c)
{
    if (hi2c->Instance == I2C1)
    {
		
        // 解析角度并更新全局变量
        angleWithoutCircle = getAngleWithoutTrack();    // 单圈角度（已校准）
        angleWithCircle = getAngle();                   // 多圈累计角度（已校准）

        // 重新启动下一次 DMA 读取，实现连续采集
        as5600ReadDMA(Angle_Hight_Register_Addr, data, DATA_SIZE);
    }
}
