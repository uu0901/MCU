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
#include "pwm.h"
void ws2812bTask(void* param);
void pwmTask(void* param);
/**
* @brief 程序入口
* @param 无
* @retval 无
*/
bool flag = true;
void app_main(void)
{
    esp_err_t ret = nvs_flash_init(); /* 初始化 NVS */
    BaseType_t rc;

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
    rc = xTaskCreatePinnedToCore(ws2812bTask,"ws2812bTask",4096,NULL,3,NULL,1);
     if (rc != pdPASS) {
        printf("Failed to create rgb_task\n");
        while (1) { vTaskDelay(pdMS_TO_TICKS(1000)); }
    }
    pwmInit(8, 5000); /* 初始化 PWM，8 位分辨率，5kHz 频率 */
    rc = xTaskCreatePinnedToCore(pwmTask,"pwmTask",4096,NULL,3,NULL,1);
     if (rc != pdPASS) {
        printf("Failed to create pwmTask\n");
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
void pwmTask(void* param)
{
    while(1)
    {
        if(flag == true)
        {
            for (uint16_t duty = 0; duty <= 255; duty++) 
            {   
                pwmSetDuty(duty); /* 设置 PWM 占空比 */
                vTaskDelay(pdMS_TO_TICKS(10)); /* 延时 10 毫秒 */
            }
            flag = false;
        }
        else if(flag == false)
        {
            for (uint16_t duty = 255; duty > 0; duty--) 
            {
                pwmSetDuty(duty); /* 设置 PWM 占空比 */
                vTaskDelay(pdMS_TO_TICKS(10)); /* 延时 10 毫秒 */
            }
            flag = true;
        }
    }
}