#ifndef _WDT_H
#define _WDT_H

#include "esp_timer.h"
#include "esp_system.h" /* for esp_restart() */
#include "esp_attr.h"   /* for IRAM_ATTR macro */

/* 声明看门狗中断处理函数, 在 wdt.c 中定义 */
void IRAM_ATTR wdt_isr_handler(void *arg);

void wdt_init(uint64_t tps);
void restart_timer(uint64_t timeout);
#endif // WDT_H