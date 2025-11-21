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
    led_init(); /* 初始化 LED */
    while(1)
    {
        LED_TOGGLE();
        vTaskDelay(pdMS_TO_TICKS(500));
        printf("Tick rate = %d Hz, tick period = %ld ms\n", configTICK_RATE_HZ, portTICK_PERIOD_MS);// sdkconfig文件可以配置tick（RTOS 时钟节拍 CONFIG_FREERTOS_HZ
    }
}