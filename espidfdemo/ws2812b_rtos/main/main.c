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
#include "nvs_flash.h"
#include "esp_err.h"
#include "led.h"
#include "ws2812b.h"
void ws2812bTask(void* param);
/**
* @brief 程序入口
* @param 无
* @retval 无
*/
void app_main(void)
{
    esp_err_t ret = nvs_flash_init(); /* 初始化 NVS */
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND)
    {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    if (configure_led() == NULL) 
    {
        printf("configure_led failed, aborting ws2812 demo\n");
        while (1) { vTaskDelay(pdMS_TO_TICKS(1000)); }
    }
    BaseType_t rc = xTaskCreatePinnedToCore(ws2812bTask,"ws2812bTask",4096,NULL,3,NULL,1);
     if (rc != pdPASS) {
        printf("Failed to create rgb_task\n");
        while (1) { vTaskDelay(pdMS_TO_TICKS(1000)); }
    }
}
void ws2812bTask(void* param)
{
    while(1)
    {
        ws2812b_rainbow(led_strip);
        vTaskDelay(pdMS_TO_TICKS(30));
    }
}