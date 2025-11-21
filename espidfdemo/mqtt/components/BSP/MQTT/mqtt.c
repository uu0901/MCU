#include "mqtt.h"

// mqtt.c
// 简单的 MQTT over WSS 示例实现（基于 esp-mqtt）
// 负责：
//  - 初始化并启动 MQTT 客户端
//  - 处理 MQTT 事件（连接/断开/订阅/收到消息等）
//  - 提供发布接口 mqtt_publish_message()
//  - 提供 wifi_init_sta()，在获取 IP 后启动 MQTT


// 全局 MQTT 客户端句柄：当非 NULL 时表示客户端已初始化
static esp_mqtt_client_handle_t mqtt_client = NULL;  // 全局变量，用于存储MQTT客户端句柄


// MQTT 事件处理函数
// 由 esp-mqtt 在不同事件发生时调用（例如连接/断开/订阅/收到数据）
static void mqtt_event_handler(void *handler_args, esp_event_base_t base, int32_t event_id, void *event_data) {
    esp_mqtt_event_handle_t event = event_data;
    switch ((esp_mqtt_event_id_t)event_id) {
        case MQTT_EVENT_CONNECTED:
            // 成功连接到 broker
            printf("MQTT已连接!\n");
            // 应用层在连接后通常会订阅所需的主题（使用 mqtt.h 中的宏）
            esp_mqtt_client_subscribe(event->client, MQTT_TOPIC_RCONTROL, 0);
            // esp_mqtt_client_subscribe(event->client, MQTT_TOPIC_STATUS, 0);
            // 可选：发送上线/状态消息
            esp_mqtt_client_publish(event->client, MQTT_TOPIC_STATUS, "设备上线", 0, 1, 0);
            break;
        case MQTT_EVENT_DISCONNECTED:
            // 连接断开（可能会自动重连，取决于配置）
            printf("MQTT连接断开!\n");
            break;
        case MQTT_EVENT_SUBSCRIBED:
            // 订阅返回成功
            printf("MQTT主题订阅成功!\n");
            break;
        case MQTT_EVENT_DATA:
            // 收到消息，注意 topic/data 并非 NUL 终止，需使用长度打印
            printf("回调收到主题: %.*s\n", event->topic_len, event->topic);
            printf("回调收到内容: %.*s\n", event->data_len, event->data);

            mqtt_msg_t msg;
            memset(&msg, 0, sizeof(msg));

            // 注意复制时不添加 '\0' 越界
            int topic_len = event->topic_len < sizeof(msg.topic) - 1 ? event->topic_len : sizeof(msg.topic) - 1;
            int data_len = event->data_len < sizeof(msg.data) - 1 ? event->data_len : sizeof(msg.data) - 1;
            //copy topic 和 data 到 mqtt_msg_t 结构体
            memcpy(msg.topic, event->topic, topic_len);
            memcpy(msg.data, event->data, data_len);

            //队列创建成功后，发送消息msg到队列
            if (mqtt_msg_queue) {
                xQueueSend(mqtt_msg_queue, &msg, 0);  // 发送到消息队列（非阻塞）
            }
            break;
        case MQTT_EVENT_ERROR:
            // 出错时可检查 event->error_handle 以获取更多细节
            printf("MQTT发生错误!\n");
            break;
        default:
            break;
    }
}

// 初始化并启动 MQTT 客户端
//  - 使用 esp_mqtt_client_init 创建客户端实例
//  - 注册事件处理函数 mqtt_event_handler
//  - 启动客户端（连接动作在后台进行）
void mqttInit(void)
{
    esp_mqtt_client_config_t mqtt_cfg = {
        .broker = {
            .address = {
                .uri = MQTT_BROKER_URI,
                .port = MQTT_BROKER_PORT,
            }

        },
        .session = {
            .disable_keepalive = false,
            .keepalive = 60
        },
        .network = {
            .disable_auto_reconnect = false
        },
        .credentials = {
            .client_id = MQTT_CLIENT_ID,   // ✅ 设置客户端ID
            // .username = "your_username",   // 可选
            // .authentication.password = "your_password", // 可选
        }
    };

    mqtt_client = esp_mqtt_client_init(&mqtt_cfg);
    esp_mqtt_client_register_event(mqtt_client, ESP_EVENT_ANY_ID, mqtt_event_handler, NULL);
    esp_mqtt_client_start(mqtt_client);
}

// 通过 MQTT 发布消息（封装）
// 参数:
//  - topic: 主题字符串
//  - message: 消息体字符串
// 如果客户端未准备好，会静默降频打印提示
void mqtt_publish_message(const char* topic, const char* message)
{
    if (mqtt_client) {
        int msg_id = esp_mqtt_client_publish(mqtt_client, topic, message, 0, 1, 0);
        // printf("发送消息到主题 %s: %s (msg_id=%d)\n", topic, message, msg_id);
    } else {
        // 如果还未初始化，低频率打印一次以减少日志噪音
        static int warn_count = 0;
        if (warn_count < 3) {
            printf("MQTT客户端未初始化!\n");
        }
        warn_count++;
    }
}

// 返回 MQTT 客户端是否已初始化（true 表示可以安全调用发布）
bool mqtt_is_ready(void)
{
    return mqtt_client != NULL;
}


static const char *TAG = "main";

// IP 获取成功回调：打印 IP 并在网络可用时启动 MQTT 客户端
static void on_got_ip(void* arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    ip_event_got_ip_t* event = (ip_event_got_ip_t*) event_data;
    ESP_LOGI(TAG, "Got IP: " IPSTR, IP2STR(&event->ip_info.ip));
    // 网络准备好后再启动 MQTT（避免在无网络时初始化）
    mqttInit();
}

// 处理 Wi‑Fi 事件：在 STA 启动时连接，断线时尝试重连
static void wifi_event_handler(void* arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    if (event_id == WIFI_EVENT_STA_START) {
        esp_wifi_connect();
    } else if (event_id == WIFI_EVENT_STA_DISCONNECTED) {
        ESP_LOGW(TAG, "Wi-Fi disconnected, reconnecting...");
        esp_wifi_connect();
    }
}

// 初始化 Station 模式 Wi‑Fi 并注册事件回调
// 该函数会：
//  - 初始化网络接口与事件循环
//  - 初始化 Wi‑Fi 驱动并配置 SSID/Password
//  - 注册 WIFI_EVENT 和 IP_EVENT 的回调
//  - 启动 Wi‑Fi
void wifi_init_sta(void)
{
    esp_netif_init();
    esp_event_loop_create_default();
    esp_netif_create_default_wifi_sta();

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));

    esp_event_handler_instance_t instance_any_id;
    esp_event_handler_instance_t instance_got_ip;
    ESP_ERROR_CHECK(esp_event_handler_instance_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, NULL, &instance_any_id));
    ESP_ERROR_CHECK(esp_event_handler_instance_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &on_got_ip, NULL, &instance_got_ip));

    wifi_config_t wifi_config = {
        .sta = {
            .ssid = WIFI_SSID,
            .password = WIFI_PASS,
            /* Setting a password implies station will connect to all security modes, but you can
             * set threshold or pmf options here if required.
             */
        },
    };

    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &wifi_config));
    ESP_ERROR_CHECK(esp_wifi_start());
}
/*
    跳过wss证书验证：
    idf.py menuconfig   # 取消 ESP_TLS_INSECURE
    Component config → ESP-TLS

    使用方向键导航到 "Allow potentially insecure options"
    按空格键选中该选项（使方括号中出现 * 号）
    选中后，可能会出现新的选项
    如果出现了新的选项，请查看是否有类似"Skip certificate verification"或"Insecure verification"的选项
    保存配置（按 S 键）并退出（按 Q 键）
*/
