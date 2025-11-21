#ifndef _ESPTIMER_H
#define _ESPTIMER_H

#include "esp_timer.h"
#include "led.h"
/* 函数声明 */
void esptim_int_init(uint64_t tps); /* 初始化初始化高分辨率定时器 */
void esptim_callback(void *arg); /* 定时器回调函数 */
#endif