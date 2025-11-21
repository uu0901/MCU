/*
 * SPDX-FileCopyrightText: 2010-2022 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: CC0-1.0
 */

#include <stdio.h>
#include <inttypes.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "led.h"
#include "nvs_flash.h"
#include "esp_err.h"
#include "ws2812b.h"
/**
* @brief 程序入口
* @param 无
* @retval 无
*/
void app_main(void)
{
    esp_err_t ret;
    ret = nvs_flash_init(); /* 初始化 NVS */
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND)
    {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    // led_init(); /* 初始化 LED */
    if (configure_led() == NULL) {
        printf("configure_led failed, aborting ws2812 demo\n");
        while (1) { vTaskDelay(pdMS_TO_TICKS(1000)); }
    }
    // 直接运行单像素闪烁测试（该函数内部有循环）
    // ws2812b_single_test(led_strip, 0, 255, 0, 500);
    ws2812b_rainbow(led_strip);
}