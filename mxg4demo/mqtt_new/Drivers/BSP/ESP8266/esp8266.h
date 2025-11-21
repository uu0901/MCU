#ifndef __ESP8266_H
#define __ESP8266_H

#include "usart.h"
#include "stdio.h"
#include "string.h"
#include "stdlib.h"
#include "stdarg.h"

#include "../BSP/LCD/lcd.h"

// WiFi 参数
#define WIFI_SSID       "LDQ"
#define WIFI_PASSWORD   "ldq11223344"
// MQTT 参数
#define MQTT_CLIENT_ID  "666"
#define MQTT_USERNAME   "esp1111"
#define MQTT_PASSWORD   "2222"
// MQTT 服务器
#define MQTT_SERVER_IP  "111.231.116.18"
#define MQTT_PORT       1883
// 订阅话题
#define MQTT_SUB_TOPIC      "LDQ"
// 发布话题
#define MQTT_PUB_TOPIC      "LDQ"
void esp8266_run(void);
void uart_process(void);

const char* func3 = "Switch1";
const char* func4 = "Switch2";
void extract_mqtt_info(const char *str, char *info1, char *info_b);
#endif
