#ifndef _LED_H
#define _LED_H

/* 引脚定义 */
#include "driver/gpio.h"   // 加这个才能用 GPIO_NUM_x, gpio_set_level 等
#define LED_GPIO_PIN GPIO_NUM_1 /* LED 连接的 GPIO 端口 */
/* 引脚的输出的电平状态 */
enum GPIO_OUTPUT_STATE
{
    PIN_RESET,
    PIN_SET
};
/* LED 端口定义 */
#define LED(x) do { x ? \
                    gpio_set_level(LED_GPIO_PIN, PIN_SET) : \
                    gpio_set_level(LED_GPIO_PIN, PIN_RESET); \
                    } while(0) /* LED 翻转 */
/* LED 取反定义 */
#define LED_TOGGLE() do { gpio_set_level(LED_GPIO_PIN, !gpio_get_level(LED_GPIO_PIN));\
                        } while(0) /* LED 翻转 */
/* 函数声明*/
void led_init(void); /* 初始化 LED */

#endif