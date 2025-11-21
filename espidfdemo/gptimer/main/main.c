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
#include "key.h"
#include "uart.h"
#include "gptimer.h"
void ws2812bTask(void* param);
void keyTask(void* param);
void uartTask(void* param);
void gptimerTask(void* param);
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
    led_init();
    key_init();
    if (configure_led() == NULL) 
    {
        printf("configure_led failed, aborting ws2812 demo\n");
        while (1) 
        { 
            vTaskDelay(pdMS_TO_TICKS(1000)); 
        }
    }
    BaseType_t rc;
    rc = xTaskCreatePinnedToCore(ws2812bTask,"ws2812bTask",4096,NULL,3,NULL,1);
    if (rc != pdPASS)
    {
        printf("Failed to create ws2812bTask\n");
        while (1) 
        { 
            vTaskDelay(pdMS_TO_TICKS(1000)); 
        }
    }

    rc = xTaskCreatePinnedToCore(keyTask,"keyTask",4096,NULL,3,NULL,1);
    if (rc != pdPASS) 
    {
        printf("Failed to create keyTask\n");
        while (1)
        {
            vTaskDelay(pdMS_TO_TICKS(1000)); 
        }
    }
    usart_init(115200); /* 初始化串口 */
    rc = xTaskCreatePinnedToCore(uartTask,"uartTask",4096,NULL,3,NULL,1);
    if (rc != pdPASS) 
    {
        printf("Failed to create uartTask\n");
        while (1)
        {
            vTaskDelay(pdMS_TO_TICKS(1000)); 
        }
    }
    gptim_int_init(100, 1000000); /* 初始化通用定时器 */
    rc = xTaskCreatePinnedToCore(gptimerTask,"gptimerTask",4096,NULL,3,NULL,1);
    if (rc != pdPASS) 
    {
        printf("Failed to create gptimerTask\n");
        while (1)
        {
            vTaskDelay(pdMS_TO_TICKS(1000)); 
        }
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
void keyTask(void* param)
{
    uint8_t key;
    while(1)
    {
        key = key_scan(0); /* 获取键值 */
        switch (key)
        {
            case BOOT_PRES: /* BOOT 被按下 */
            {
                LED0_TOGGLE(); /* LED 状态翻转 */
                break;
            }
            default:
            {
                break;
            }
        }
        vTaskDelay(pdMS_TO_TICKS(10));
    }
}
void uartTask(void* param)
{
    uint8_t len = 0;
    uint16_t times = 0;
    unsigned char data[RX_BUF_SIZE] = {0};
    while(1)
    {
        /* 获取环形缓冲区数据长度 */
        uart_get_buffered_data_len(USART_UX, (size_t*) &len);
        if (len > 0) /* 判断数据长度 */
        {
            memset(data, 0, RX_BUF_SIZE); /* 对缓冲区清零 */
            printf("\n 您发送的消息为:\n");
            uart_read_bytes(USART_UX, data, len, 100); /* 读数据 */
            uart_write_bytes(USART_UX,(const char*)data,strlen((const char*)data)); /* 写数据 */
        }
        else
        {
            times++;
            if (times % 5000 == 0)
            {
                printf("\n 正点原子 ATK-DNESP32-S3 开发板 串口实验\n");
                printf("正点原子@ALIENTEK\n\n\n");
            }
            if (times % 200 == 0)
            {
                printf("请输入数据，以回车键结束\n");
            }
            if (times % 30 == 0)
            {
                LED0_TOGGLE();
            }
            vTaskDelay(10);
        }
    }
}
void gptimerTask(void* param)
{
    uint8_t record;
    gptimer_event_t g_tim_evente;
    while(1)
    {
        record = 1;
        /* 打印通用定时器发生一次计数事件后获取到的值 */
        if (xQueueReceive(queue, &g_tim_evente, 2000))
        {
            ESP_LOGI("GPTIMER_ALARM","定时器报警, 计数值： %llu", g_tim_evente.event_count);
            record--;
        }
        else
        {
            ESP_LOGW("GPTIMER_ALARM", "错过一次计数事件");
        }
    }
    vQueueDelete(queue);
}