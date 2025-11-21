#include "led.h"
/**
* @brief 初始化 PWM
* @param resolution： PWM 占空比分辨率
* freq: PWM 信号频率
* @retval 无
*/

/*
| 分辨率（bit） | 最大占空比值（最大可设置 duty）  | 可取值范围（含 0）   |
| -------- | ------------------- | ------------ |
| 8-bit    | 2⁸ − 1 = **255**    | 0 ～ 255      |
| 10-bit   | 2¹⁰ − 1 = **1023**  | 0 ～ 1023     |
| 12-bit   | 2¹² − 1 = **4095**  | 0 ～ 4095     |
| 13-bit   | 2¹³ − 1 = **8191**  | 0 ～ 8191     |
| 14-bit   | 2¹⁴ − 1 = **16383** | 0 ～ 16383    |


*/
void pwm_init(uint8_t resolution, uint16_t freq)
{
    /* 配置 LEDC 定时器 */
    ledc_timer_config_t ledc_timer = {
    .duty_resolution = resolution, /* PWM 占空比分辨率 */
    .freq_hz = freq, /* PWM 信号频率 */
    .speed_mode = LEDC_PWM_MODE, /* 定时器模式 */
    .timer_num = LEDC_PWM_TIMER, /* 定时器序号 */
    .clk_cfg = LEDC_AUTO_CLK, /* LEDC 时钟源 */
    };
    ledc_timer_config(&ledc_timer); /* 配置定时器 */
    /* 配置 LEDC 通道 */
    ledc_channel_config_t ledc_channel = {
    .gpio_num = LEDC_PWM_CH0_GPIO, /* LED 控制器通道对应引脚 */
    .speed_mode = LEDC_PWM_MODE, /* LEDC 高速模式 */
    .channel = LEDC_PWM_CH0_CHANNEL, /* LEDC 控制器通道号 */
    .intr_type = LEDC_INTR_DISABLE, /* LEDC 失能中断 */
    .timer_sel = LEDC_PWM_TIMER, /* 定时器序号 */
    .duty = 0, /* 占空比值 */
    };
    ledc_channel_config(&ledc_channel); /* 配置 LEDC 通道 */
    ledc_fade_func_install(0); /* 使能渐变（该函数不可或缺） */
}
/**
* @brief PWM 占空比设置
* @param duty： PWM 占空比
* @retval 无
*/
void pwm_set_duty(uint16_t duty)
{
    //到设置的占空比duty
    ledc_set_fade_with_time(LEDC_PWM_MODE,
                            LEDC_PWM_CH0_CHANNEL,
                            duty,//8000
                            LEDC_PWM_FADE_TIME); /* 设置占空比以及渐变时长 */
    ledc_fade_start(LEDC_PWM_MODE,
                    LEDC_PWM_CH0_CHANNEL,
                    LEDC_FADE_NO_WAIT); /* 开始渐变 */

    //占空比设置最低
    ledc_set_fade_with_time(LEDC_PWM_MODE,
                            LEDC_PWM_CH0_CHANNEL,
                            0,//0
                            LEDC_PWM_FADE_TIME); /* 设置占空比以及渐变时长 */
    ledc_fade_start(LEDC_PWM_MODE,
                    LEDC_PWM_CH0_CHANNEL,
                    LEDC_FADE_NO_WAIT); /* 开始渐变 */
}