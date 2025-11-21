#include "esp8266.h"
#include "string.h"
#include "stdio.h"
#include "stdarg.h"


uint32_t uart_time = 0;
char Lock[20];     // 保存 func3 的字符串数据
char Switch2[20];  // 保存 func4 的字符串数据

char RECS[250];      // 接收缓冲区
uint16_t i = 0;      // 接收索引
//ESP订阅阿里云的信息，ESP通过串口传递给STM32,32进行解析，此函数在串口中断时调用
void CommandAnalyse(void)//ESP订阅阿里云的信息，ESP通过串口传递给STM32进行解析
{
    if (strncmp(RECS, "+MQTTSUBRECV:", 13) == 0) // 判断是否是ESP传来的订阅信息
    {
        uint8_t i = 0; // 将接收到的数组重新从0开始扫描

        while (RECS[i] != '\0') // 数组还没到结束标志\0
        {
            i++;

            // 判断是否匹配 func3
            if (strncmp(&RECS[i], func3, strlen(func3)) == 0)
            {
                // 找到冒号
                while (RECS[i] != '\0' && RECS[i] != ':')
                    i++;

                if (RECS[i] == ':')
                {
                    i++; // 跳过冒号
                    uint8_t j = 0;

                    // 复制字符串直到 \r \n 或结束
                    while (RECS[i] != '\0' && RECS[i] != '\r' && RECS[i] != '\n' && j < sizeof(Lock) - 1)
                    {
                        Lock[j++] = RECS[i++];
                    }
                    Lock[j] = '\0'; // 添加字符串结束符
                }
            }

            // 判断是否匹配 func4
            if (strncmp(&RECS[i], func4, strlen(func4)) == 0)
            {
                while (RECS[i] != '\0' && RECS[i] != ':')
                    i++;

                if (RECS[i] == ':')
                {
                    i++; // 跳过冒号
                    uint8_t j = 0;

                    while (RECS[i] != '\0' && RECS[i] != '\r' && RECS[i] != '\n' && j < sizeof(Switch2) - 1)
                    {
                        Switch2[j++] = RECS[i++];
                    }
                    Switch2[j] = '\0';
                }
            }
        }
    }
}

// ====================== 串口发送封装 ======================
void esp8266Send(UART_HandleTypeDef *huart, char* format, ...) 
{
    char buf[128] = {0};
    va_list ap;
    va_start(ap, format);
    vsprintf(buf, format, ap);
    va_end(ap);
    HAL_UART_Transmit(huart, (uint8_t*)buf, strlen(buf), 100);
}

// ====================== UART中断接收 ======================
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
    if (huart == &huart2)  // 判断是否来自 USART2
    {
        if (i < sizeof(RECS) - 1)
        {
            i++;
            // 检测是否接收到 '\r\n'
            if (i >= 2 && (RECS[i-2] == '\r' && RECS[i-1] == '\n'))
            {
                RECS[i-2] = '\0'; // 字符串结束符
                RECS[i-1] = '\0'; // 字符串结束符
                i = 0;             // 重置索引
                CommandAnalyse();  // 调用解析函数
            }
        }
        else
        {
            // 防止溢出
            i = 0;
        }
        // 继续接收下一个字节
        HAL_UART_Receive_IT(&huart2, (uint8_t *)&RECS[i], 1);
    }
}

// ====================== MQTT 消息解析函数 ======================
void extract_mqtt_info(const char *str, char *topic, char *message)
{
    const char *p_topic_start = strchr(str, '"');
    if (!p_topic_start) return;
    const char *p_topic_end = strchr(p_topic_start + 1, '"');
    if (!p_topic_end) return;

    size_t topic_len = p_topic_end - p_topic_start - 1;
    if (topic_len > 9) topic_len = 9;
    strncpy(topic, p_topic_start + 1, topic_len);
    topic[topic_len] = '\0';

    // 找 data_length
    const char *p_len = strchr(p_topic_end + 1, ',');
    if (!p_len) return;
    int data_len = atoi(p_len + 1);

    // 找消息体开始
    const char *p_msg_start = strchr(p_len + 1, ',');
    if (!p_msg_start) return;
    p_msg_start++;

    if (data_len > 9) data_len = 9;
    strncpy(message, p_msg_start, data_len);
    message[data_len] = '\0';
}

// ====================== 主流程 ======================
void esp8266_run(void)
{
    HAL_UART_Receive_IT(&huart2, (uint8_t *)&RECS, 1);
    LCD_ShowString(0, 0, "ESP Init", WHITE, BLACK, 16, 0);

    // 1. 重启
    esp8266Send(&huart2, "AT+RST\r\n");
    HAL_Delay(2000);

    // 2. 关闭回显
    esp8266Send(&huart2, "ATE0\r\n");
    HAL_Delay(500);

    // 3. WiFi模式
    esp8266Send(&huart2, "AT+CWMODE=1\r\n");
    LCD_ShowString(0, 16, "Mode=1", GREEN, BLACK, 16, 0);
    HAL_Delay(1000);

    // 4. 连接WiFi
    esp8266Send(&huart2, "AT+CWJAP=\"" WIFI_SSID "\",\"" WIFI_PASSWORD "\"\r\n");
    LCD_ShowString(0, 32, "WiFi...", WHITE, BLACK, 16, 0);
    HAL_Delay(7000);

    // 5. 配置MQTT
    esp8266Send(&huart2, "AT+MQTTUSERCFG=0,1,\"%s\",\"%s\",\"%s\",0,0,\"\"\r\n",
                MQTT_CLIENT_ID, MQTT_USERNAME, MQTT_PASSWORD);
    LCD_ShowString(0, 48, "MQTT CFG", WHITE, BLACK, 16, 0);
    HAL_Delay(2000);

    // 6. 连接MQTT
    esp8266Send(&huart2, "AT+MQTTCONN=0,\"%s\",%d,1\r\n", MQTT_SERVER_IP, MQTT_PORT);
    LCD_ShowString(0, 64, "MQTT Conn...", WHITE, BLACK, 16, 0);
    HAL_Delay(4000);

    // 7. 订阅
    esp8266Send(&huart2, "AT+MQTTSUB=0,\"%s\",1\r\n", MQTT_SUB_TOPIC);
    LCD_ShowString(0, 80, "Sub OK", WHITE, BLACK, 16, 0);
    HAL_Delay(2000);

    LCD_ShowString(0, 96, "MQTT Ready", GREEN, BLACK, 16, 0);

    // ========== 循环发布 ==========
    uint32_t lastTick = 0;
    uint32_t i = 0;
    while (1)
    {
        if (uwTick - lastTick >= 1000)
        {
            lastTick = uwTick;
            i++;
            esp8266Send(&huart2, "AT+MQTTPUB=0,\"%s\",\"%lu\",0,0\r\n", MQTT_PUB_TOPIC, i);
            LCD_ShowString(0, 112, "PUB:", WHITE, BLACK, 16, 0);
            LCD_ShowIntNum(50, 112, i, 4, GREEN, BLACK, 16);
        }

//        uart_process();
    }
}

// ====================== 串口内容处理 ======================
//void uart_process(void)
//{
//    if (uart_index == 0) return;
//    if (uwTick - uart_time > 150)
//    {
//        uart_buffer[uart_index] = '\0';
//        LCD_ShowString(0, 224, (char*)uart_buffer, GREEN, BLACK, 16, 0);

//        if (strstr((char*)uart_buffer, "+MQTTSUBRECV"))
//        {
//            char topic[10];
//            char message[10];
//            extract_mqtt_info((char*)uart_buffer, topic, message);

//			
//            LCD_ShowString(0, 192, "SUB MSG", YELLOW, BLACK, 16, 0);
//			LCD_Fill(0,208,240,224,BLACK);
//            LCD_ShowString(0, 208, topic, GREEN, BLACK, 16, 0);
//            LCD_ShowString(80, 208, message, GREEN, BLACK, 16, 0);
//        }
//        else if (strstr((char*)uart_buffer, "OK"))
//        {
//            LCD_ShowString(0, 192, "OK", GREEN, BLACK, 16, 0);
//        }
//        else if (strstr((char*)uart_buffer, "ERROR"))
//        {
//            LCD_ShowString(0, 192, "ERR", RED, BLACK, 16, 0);
//        }
//        else if (strstr((char*)uart_buffer, "MQTT CONNECTED"))
//        {
//            LCD_ShowString(0, 176, "MQTT OK", GREEN, BLACK, 16, 0);
//        }

//        // 清空缓冲
//        memset(uart_buffer, 0, sizeof(uart_buffer));
//        uart_index = 0;
//        huart2.pRxBuffPtr = uart_buffer;
//    }
//}
