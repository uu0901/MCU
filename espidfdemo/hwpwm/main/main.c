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
void pwmTask(void* param);
/**
* @brief 程序入口
* @param 无
* @retval 无
*/
void app_main(void)
{
    BaseType_t rc;
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
    pwm_init(13, 5000); /* 初始化 PWM */
    
    rc = xTaskCreatePinnedToCore(ws2812bTask,"ws2812bTask",4096,NULL,3,NULL,1);
    if (rc != pdPASS) {
        printf("Failed to create rgb_task\n");
        while (1) { vTaskDelay(pdMS_TO_TICKS(1000)); }
    }
    rc = xTaskCreatePinnedToCore(pwmTask,"pwmTask",4096,NULL,3,NULL,1);
    // pwm_init(13, 5000); /* 初始化 PWM */

    /* 
    这里初始化会出现这个报错
    先创建了两个任务，
    ws2812bTask 立即运行，占用大量内存（WS2812 驱动要 DMA buffer），
    然后再去初始化 LEDC 并调用 ledc_fade_func_install(0)。

    这时候堆内存已经被 WS2812B 占用了大部分，
    ledc_fade_func_install() 内部 malloc 堆区内存失败，
    于是报错：

    E (339) ledc: Fade service not installed
    E (346) ledc: ledc_set_fade_with_time: not enough memory or service not installed
    
    */
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
        pwm_set_duty(LEDC_PWM_DUTY); /* 设置占空比 */
        vTaskDelay(pdMS_TO_TICKS(10));
    }
}