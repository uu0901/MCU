#ifndef _GPTIMER_H
#define _GPTIMER_H

#include "driver/gptimer.h"
#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"
#include "esp_log.h"
#include "esp_err.h"
/* 参数引用 */
typedef struct {
uint64_t event_count;
} gptimer_event_t;
extern QueueHandle_t queue;
/* 函数声明 */
/* resolution 需要能表示较大的微秒值（例如 1000000），使用 uint32_t */
void gptim_int_init(uint16_t counts, uint32_t resolution); /* 初始化通用定时器 */
/* 将 IRAM_ATTR 从头文件声明中移除以避免与定义处的 section 冲突。
	在需要把函数放入 IRAM 的场景里，只在实现处添加 IRAM_ATTR 即可。 */
bool gptimer_callback(gptimer_handle_t timer,
							  const gptimer_alarm_event_data_t *edata,
							  void *user_data); /* 定时器回调函数 */
#endif