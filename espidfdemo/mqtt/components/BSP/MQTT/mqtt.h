#ifndef _MQTT_H_
#define _MQTT_H_

#include "mqtt_client.h"
#include "esp_event.h"
#include "esp_netif.h"
#include "esp_wifi.h"
#include "esp_log.h"
#include "lwip/inet.h"
#include <stdbool.h>



typedef struct {
    char topic[64];
    char data[128];
} mqtt_msg_t;
extern QueueHandle_t mqtt_msg_queue;  // 消息队列句柄
#define WIFI_SSID "zjz-ldq"

#define WIFI_PASS "ldq11223344"

// MQTT 配置（可在此处修改以适配不同 broker 或主题）
#define MQTT_BROKER_URI  "wss://mqtt.fishldq.cloud/mqtt"
#define MQTT_BROKER_PORT 443

// 默认订阅/发布主题
#define MQTT_TOPIC_RCONTROL "device/Rcontrol"
#define MQTT_TOPIC_STATUS  "device/status"
#define MQTT_TOPIC_SCONTROL  "device/Scontrol"

#define MQTT_CLIENT_ID      "ESP32S3"

void mqttInit(void);
void mqtt_publish_message(const char* topic, const char* message);
// 返回 true 表示 MQTT 客户端已初始化并可用
bool mqtt_is_ready(void);
void wifi_init_sta(void);
#endif /* _MQTT_H_ */