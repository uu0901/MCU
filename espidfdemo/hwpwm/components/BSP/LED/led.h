#include "driver/ledc.h"

/* 引脚定义 */
#define LEDC_PWM_TIMER LEDC_TIMER_0 /* 使用定时器 0 */
#define LEDC_PWM_MODE LEDC_LOW_SPEED_MODE/* 模式设定必须使用 LEDC 低速模式 */
#define LEDC_PWM_CH0_GPIO GPIO_NUM_4 /* LED 控制器通道对应 GPIO */
#define LEDC_PWM_CH0_CHANNEL LEDC_CHANNEL_0 /* LED 控制器通道号 */
#define LEDC_PWM_DUTY 8000 /* 渐变的变大最终目标占空比 */
#define LEDC_PWM_FADE_TIME 3000 /* 变化时长 */
/* 函数声明 */
void pwm_init(uint8_t resolution, uint16_t freq);/* 初始化 PWM */
void pwm_set_duty(uint16_t duty); /* PWM 占空比设置 */