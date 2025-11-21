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
#include "mqtt.h"
#include "freertos/queue.h"

QueueHandle_t mqtt_msg_queue = NULL;  // 消息队列句柄
void ws2812bTask(void* param);
void mqttReceiveControlTask(void* param);
void mqttSendControlTask(void* param);
/**
* @brief 程序入口
* @param 无
* @retval 无
*/

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
    rc = xTaskCreatePinnedToCore(mqttReceiveControlTask,"mqttReceiveControlTask",4096,NULL,3,NULL,1);
     if (rc != pdPASS) {
        printf("Failed to create mqttReceiveControlTask\n");
        while (1) { vTaskDelay(pdMS_TO_TICKS(1000)); }
    }
    rc = xTaskCreatePinnedToCore(mqttSendControlTask,"mqttSendControlTask",4096,NULL,3,NULL,1);
     if (rc != pdPASS) {
        printf("Failed to create mqttSendControlTask\n");
        while (1) { vTaskDelay(pdMS_TO_TICKS(1000)); }
    }
    mqtt_msg_queue = xQueueCreate(20, sizeof(mqtt_msg_t));
    if (mqtt_msg_queue == NULL) {
        printf("创建 MQTT 消息队列失败！\n");
    }

    // 启动 Wi‑Fi 并在获得 IP 后再启动 MQTT
    wifi_init_sta();
}
void ws2812bTask(void* param)
{
    while(1)
    {
        // ws2812b_rainbow(led_strip);
        vTaskDelay(pdMS_TO_TICKS(30));
    }
}
void mqttReceiveControlTask(void* param)
{
    mqtt_msg_t received_msg;
    // 等待 MQTT 初始化完成再发送消息，避免大量 "MQTT客户端未初始化!" 日志
    while (!mqtt_is_ready()) {
        vTaskDelay(pdMS_TO_TICKS(500));
    }
    printf("mqttReceiveControlTask 启动成功\n");
    while(1)
    {
        // 等待接收队列消息，超时 500ms
        if (xQueueReceive(mqtt_msg_queue, &received_msg, pdMS_TO_TICKS(500))) {
            //mqtt回调队列发送出来的信息mqtt_msg_queue，这里是通过定义received_msg去接收
            printf("mqttReceiveControlTask 收到 MQTT 消息: [%s] %s\n", received_msg.topic, received_msg.data);
            // 根据主题和内容执行相应操作
            if (strcmp(received_msg.topic, MQTT_TOPIC_RCONTROL) == 0) {
                if (strcmp(received_msg.data, "ledon") == 0) {
                    printf("执行点灯操作\n");
                    ws2812b_RGBOn(led_strip, 0, 0, 255); // 点亮蓝色LED
                } else if (strcmp(received_msg.data, "ledoff") == 0) {
                    printf("执行关灯操作\n");
                    ws2812b_Off(led_strip); // 关闭LED
                }
            }
        }
        vTaskDelay(pdMS_TO_TICKS(100));
    }
}
void mqttSendControlTask(void* param)
{
    // 等待 MQTT 初始化完成再发送消息，避免大量 "MQTT客户端未初始化!" 日志
    while (!mqtt_is_ready()) {
        vTaskDelay(pdMS_TO_TICKS(500));
    }
    printf("mqttSendTask 发送任务启动成功\n");
    while(1)
    {
        mqtt_publish_message(MQTT_TOPIC_SCONTROL, "Hello from ESP32S3!");
        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}