#include <stdio.h>
#include "esp_err.h"
#include "ws2812b.h"
/**
 * 配置LED灯带的函数
 *
 * 此函数初始化并配置一个LED灯带设备，包括灯带的基本配置和RMT（Remote Control Memory-mapped Timing）配置
 * 它指定了用于控制LED灯带的GPIO引脚、LED的数量、LED模型、颜色格式以及RMT的时钟源、分辨率和内存块大小等参数
 *
 * @return led_strip_handle_t 返回LED灯带的句柄，用于后续的操作如果配置失败，将返回NULL
 */
led_strip_handle_t led_strip;
led_strip_handle_t configure_led(void)
{
    // LED灯带的基本配置
    led_strip_config_t strip_config = {
	    .strip_gpio_num = WS2812B_GPIO_PIN, // 指定WS2812B灯带的GPIO引脚
        .max_leds = WS2812B_LED_NUM,      // 指定灯带上的最大LED数量
        .led_model = LED_MODEL_WS2812,        // 指定LED模型为WS2812
        .color_component_format = LED_STRIP_COLOR_COMPONENT_FMT_GRB, // 指定颜色格式为GRB（绿红蓝）
        .flags = {
            .invert_out = false, // 不反转输出信号
       }
    };

    // RMT配置，用于生成控制LED灯带所需的精确时序
    led_strip_rmt_config_t rmt_config = {
        .clk_src = RMT_CLK_SRC_DEFAULT,        // 使用默认的时钟源
        .resolution_hz = WS2812b_RMT_RES_HZ, // 设置RMT的分辨率
        .mem_block_symbols = 64,               // 每个RMT内存块的符号数
        .flags = {
            .with_dma = false, // 不使用DMA（直接存储访问）传输
        }
    };
 
    // LED灯带的句柄，用于操作灯带

    // 创建并初始化LED灯带设备
    esp_err_t err = led_strip_new_rmt_device(&strip_config, &rmt_config, &led_strip);
    if (err != ESP_OK) {
        printf("led_strip_new_rmt_device failed: %s (%d)\n", esp_err_to_name(err), err);
        return NULL;
    }
    printf("led_strip created OK, gpio=%d\n", WS2812B_GPIO_PIN);
    // 返回LED灯带的句柄
    return led_strip;
}
void ws2812b_RGBOn(led_strip_handle_t led_strip,uint8_t r, uint8_t g, uint8_t b)
{
    if (!led_strip) return;
    esp_err_t err;
    err = led_strip_set_pixel(led_strip, 0, r, g, b);
    if (err != ESP_OK) {
        printf("led_strip_set_pixel failed: %s (%d)\n", esp_err_to_name(err), err);
    }
    err = led_strip_refresh(led_strip);
    if (err != ESP_OK) {
        printf("led_strip_refresh failed: %s (%d)\n", esp_err_to_name(err), err);
    }
}
void ws2812b_HSVOn(led_strip_handle_t led_strip,uint8_t h, uint8_t s, uint8_t v)
{
    if (!led_strip) return;
    esp_err_t err;
    err = led_strip_set_pixel_hsv(led_strip, 0, h, s, v);
    if (err != ESP_OK) {
        printf("led_strip_set_pixel_hsv failed: %s (%d)\n", esp_err_to_name(err), err);
    }
    err = led_strip_refresh(led_strip);
    if (err != ESP_OK) {
        printf("led_strip_refresh failed: %s (%d)\n", esp_err_to_name(err), err);
    }
}
void ws2812b_Off(led_strip_handle_t led_strip)
{
    if (!led_strip) return;
    led_strip_clear(led_strip);
    led_strip_refresh(led_strip);
}
/**
 * @brief 实现WS2812B LED灯带的呼吸效果，使用HSV色彩空间
 *
 * 此函数通过不断改变LED的亮度，实现呼吸效果。它使用HSV色彩空间来设置LED的颜色，
 * 其中H（色相）和S（饱和度）是输入参数，V（亮度）则在函数内部以步进方式递增或递减。
 *
 * @param led_strip LED灯带的句柄，用于标识和操作灯带
 * @param h 色相值，决定灯光的颜色
 * @param s 饱和度，决定颜色的纯度，范围0-255
 * @param v 初始亮度值，此值将在函数中根据呼吸效果的需要进行变化
 */
void ws2812b_breath_HSV(led_strip_handle_t led_strip, int h, uint8_t s, int v)
{
    // 标记亮度是增加还是减少，初始设置为增加
    bool increase = true;
    // 定义亮度变化的步长，值越大，呼吸速度越快
    const int step = 5;  // 调整步长控制呼吸速度
    // 定义亮度的最大值和最小值，以控制呼吸效果的范围
    const int max_v = 100;
    const int min_v = 0;
  
    // 无限循环，实现持续的呼吸效果
    while (1) {
        // 根据increase标志决定亮度是增加还是减少
        v += (increase) ? step : -step;
        // 检查亮度是否超出范围，如果超出，则进行边界值处理并反转亮度变化方向
        if (v >= max_v) {
            v = max_v;
            increase = false;
        } else if (v <= min_v) {
            v = min_v;
            increase = true;
        }
        // 调用函数设置LED的HSV值，此处的v需要根据实际需要映射到0-255的范围
        ws2812b_HSVOn(led_strip,h,s,v);
        // 延时一段时间，以控制呼吸效果的快慢，单位为毫秒
        vTaskDelay(pdMS_TO_TICKS(50));
    }
}
/**
 * @brief 为WS2812B LED灯带生成彩虹效果
 *
 * 该函数通过不断改变LED灯带上的颜色来产生彩虹效果。它使用HSV颜色空间，
 * 并逐渐改变色调值，以实现颜色的平滑过渡。此函数适用于控制连接的WS2812B LED灯带。
 *
 * @param led_strip LED灯带的句柄，用于指定要操作的灯带
 */
void ws2812b_rainbow(led_strip_handle_t led_strip)
{
    // 初始化静态变量h、s、v，分别代表色相、饱和度和亮度
    static int h = 0, s = 255, v = 255;
    // 定义色相变化的步长，决定颜色变化的速度（减小步长可使过渡更平滑）
    const int step = 1;
    int debug_counter = 0;
    // 无限循环，持续改变LED灯带的颜色以产生彩虹效果
    while(1)
    {
        // 为每个 LED 计算不同的色相以生成连续的彩虹，并一次性刷新
        for (int i = 0; i < WS2812B_LED_NUM; ++i) {
            // 每个像素的色相偏移设置较小（例如 10°），以避免相邻像素颜色跳变
            int pixel_h = (h + (i * 10)) % 360;
            esp_err_t err = led_strip_set_pixel_hsv(led_strip, i, pixel_h, s, v);
            if (err != ESP_OK) {
                printf("led_strip_set_pixel_hsv idx=%d failed: %s (%d)\n", i, esp_err_to_name(err), err);
            }
        }
        esp_err_t err = led_strip_refresh(led_strip);
        if (err != ESP_OK) {
            printf("led_strip_refresh failed: %s (%d)\n", esp_err_to_name(err), err);
        }
        // 每隔若干次打印一次状态以便调试而不刷屏
        if ((debug_counter++ % 100) == 0) {
            printf("ws2812b_rainbow base_h=%d\n", h);
        }
        // 增加色相值，以改变颜色
        h += step;
        // 如果色相值超过360，则减去360，保持色相值在有效范围内
        if(h >= 360){
            h = h - 360;
        }
    // 延迟以控制颜色变化速率，较小延时和较小步长组合能带来更平滑的视觉过渡
    vTaskDelay(pdMS_TO_TICKS(30));
    }
}

void ws2812b_set_all_hsv(led_strip_handle_t led_strip, int base_h, uint8_t s, uint8_t v)
{
    if (!led_strip) return;
    for (int i = 0; i < WS2812B_LED_NUM; ++i) {
        int pixel_h = (base_h + (i * 360 / WS2812B_LED_NUM)) % 360;
        esp_err_t err = led_strip_set_pixel_hsv(led_strip, i, pixel_h, s, v);
        if (err != ESP_OK) {
            printf("ws2812b_set_all_hsv: set idx=%d failed: %s (%d)\n", i, esp_err_to_name(err), err);
        }
    }
    esp_err_t err = led_strip_refresh(led_strip);
    if (err != ESP_OK) {
        printf("ws2812b_set_all_hsv: refresh failed: %s (%d)\n", esp_err_to_name(err), err);
    }
}

// 简单的单像素测试函数，用于确认是否能向 LED 发送一次原始 RGB 数据
void ws2812b_single_test(led_strip_handle_t led_strip, uint8_t r, uint8_t g, uint8_t b, int delay_ms)
{
    if (!led_strip) {
        printf("ws2812b_single_test: led_strip is NULL\n");
        return;
    }
    while (1) {
        ws2812b_RGBOn(led_strip, r, g, b);
        vTaskDelay(pdMS_TO_TICKS(delay_ms));
        ws2812b_Off(led_strip);
        vTaskDelay(pdMS_TO_TICKS(delay_ms));
    }
}

