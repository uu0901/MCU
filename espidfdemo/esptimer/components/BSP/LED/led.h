#ifndef _LED_H
#define _LED_H

/* 引脚定义 */
#include "driver/gpio.h"   // 加这个才能用 GPIO_NUM_x, gpio_set_level 等

#define LED_GPIO_PIN GPIO_NUM_1 /* LED1 连接的 GPIO 端口 */
#define LED_GPIO_PIN2 GPIO_NUM_2 /* LED2 连接的 GPIO 端口（新添加） */
/* 引脚的输出的电平状态 */
enum GPIO_OUTPUT_STATE
{
    PIN_RESET,
    PIN_SET
};
/* LED 单独端口定义：LED0 和 LED1 */
#define LED0_GPIO_PIN LED_GPIO_PIN
#define LED1_GPIO_PIN LED_GPIO_PIN2

/* 单独控制 LED0 / LED1 的宏（设置电平） */
#define LED0_SET(x) do { gpio_set_level(LED0_GPIO_PIN, (x) ? PIN_SET : PIN_RESET); } while(0)
#define LED1_SET(x) do { gpio_set_level(LED1_GPIO_PIN, (x) ? PIN_SET : PIN_RESET); } while(0)

/* 单独翻转 LED0 / LED1 的宏 */
#define LED0_TOGGLE() do { gpio_set_level(LED0_GPIO_PIN, !gpio_get_level(LED0_GPIO_PIN)); } while(0)
#define LED1_TOGGLE() do { gpio_set_level(LED1_GPIO_PIN, !gpio_get_level(LED1_GPIO_PIN)); } while(0)

/* 函数声明 */
void led_init(void); /* 初始化 LED */

#endif