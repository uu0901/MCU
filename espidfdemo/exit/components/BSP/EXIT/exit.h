#ifndef _EXIT_H_
#define _EXIT_H_

#include "driver/gpio.h"   // 加这个才能用 GPIO_NUM_x, gpio_set_level 等
#include "esp_attr.h"   // 包含IRAM_ATTR的定义
#include "led.h"   // 包含IRAM_ATTR的定义
/* 引脚定义 */
#define BOOT_INT_GPIO_PIN GPIO_NUM_0
/*IO 操作*/
#define BOOT gpio_get_level(BOOT_INT_GPIO_PIN)
/* 函数声明 */
void exit_init(void); /* 外部中断初始化程序 */

#endif