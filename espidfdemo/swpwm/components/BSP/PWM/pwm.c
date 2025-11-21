#include "pwm.h"
/**
* @brief 初始化 PWM
* @param resolution： PWM 占空比分辨率
* freq： PWM 信号频率
* @retval 无
*/
void pwmInit(uint8_t resolution, uint16_t freq)
{
    /* 配置 LEDC 定时器 */
    ledc_timer_config_t ledc_timer = {
    .duty_resolution = resolution, /* PWM 占空比分辨率 */
    .freq_hz = freq, /* PWM 信号频率 */
    .speed_mode = LEDC_LOW_SPEED_MODE, /* 定时器模式 */
    .timer_num = LEDC_PWM_TIMER, /* 定时器序号 */
    .clk_cfg = LEDC_AUTO_CLK, /* LEDC 时钟源 */
    };
    ledc_timer_config(&ledc_timer); /* 配置定时器 */
    /* 配置 LEDC 通道 */
    ledc_channel_config_t ledc_channel ={
    .gpio_num = LEDC_PWM_CH0_GPIO, /* LED 控制器通道对应引脚 */
    .speed_mode = LEDC_LOW_SPEED_MODE, /* LEDC 高速模式 */
    .channel = LEDC_PWM_CH0_CHANNEL, /* LEDC 控制器通道号 */
    .intr_type = LEDC_INTR_DISABLE, /* LEDC 失能中断 */
    .timer_sel = LEDC_PWM_TIMER, /* 定时器序号 */
    .duty = 0, /* 占空比值 */
    };
    ledc_channel_config(&ledc_channel); /* 配置 LEDC 通道 */
}
/*
    分辨率 = 8 bit → 可取值范围：0～255

    分辨率 = 10 bit → 可取值范围：0～1023

    分辨率 = 12 bit → 可取值范围：0～4095

*/
/**
* @brief PWM 占空比设置
* @param duty： PWM 占空比
* @retval 无
*/
void pwmSetDuty(uint16_t duty)
{
    ledc_set_duty(LEDC_LOW_SPEED_MODE,LEDC_PWM_CH0_CHANNEL,duty);/* 设置占空比 */
    ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_PWM_CH0_CHANNEL); /* 更新占空比 */
}