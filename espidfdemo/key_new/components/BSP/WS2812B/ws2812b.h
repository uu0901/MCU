#ifndef _WS2812B_H_
#define _WS2812B_H_

#include "led_strip.h"

/* 数据线连接的 GPIO 引脚（注意：GPIO1 通常为 UART0 TX，用作 WS2812 数据线可能与串口冲突） */
#ifndef WS2812B_GPIO_PIN
#define WS2812B_GPIO_PIN     38
#endif

#ifndef WS2812B_LED_NUM
#define WS2812B_LED_NUM      1
#endif

#ifndef WS2812b_RMT_RES_HZ
#define WS2812b_RMT_RES_HZ  (10 * 1000 * 1000)
#endif

#define REFRESH_INTERVAL_STEP 10

extern led_strip_handle_t led_strip;
led_strip_handle_t configure_led(void);

void ws2812b_RGBOn(led_strip_handle_t led_strip,uint8_t r, uint8_t g, uint8_t b);

void ws2812b_HSVOn(led_strip_handle_t led_strip,uint8_t h, uint8_t s, uint8_t v);

void ws2812b_Off(led_strip_handle_t led_strip);

void ws2812b_breath_HSV(led_strip_handle_t led_strip, int h, uint8_t s, int v);

void ws2812b_rainbow(led_strip_handle_t led_strip);
void ws2812b_single_test(led_strip_handle_t led_strip, uint8_t r, uint8_t g, uint8_t b, int delay_ms);
void ws2812b_set_all_hsv(led_strip_handle_t led_strip, int base_h, uint8_t s, uint8_t v);

#endif /* _WS2812B_H_ */
