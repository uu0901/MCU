#ifndef PWM_H
#define PWM_H
#include "driver/ledc.h"

/* 引脚以及重要参数定义 */
#define LEDC_PWM_TIMER LEDC_TIMER_1 /* 使用定时器 1 */
#define LEDC_PWM_CH0_GPIO GPIO_NUM_4 /* LED 控制器通道对应 GPIO */
#define LEDC_PWM_CH0_CHANNEL LEDC_CHANNEL_1 /* LED 控制器通道号 */

void pwmInit(uint8_t resolution, uint16_t freq);
void pwmSetDuty(uint16_t duty);
#endif // PWM_H