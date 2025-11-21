#ifndef WS2812_H
#define WS2812_H

#include <stdint.h>
#include "tim.h"
/*这里是计算所得CCR的宏定义*/
#define CODE_1 (125)   // 1码定时器计数次数
#define CODE_0 (51)    // 0码定时器计数次数

#define LED_MAX_NUM 60  // LED数量宏定义，这里我使用一个LED

#define RGB_RED     0  // 红色
#define RGB_GREEN   1  // 绿色
#define RGB_BLUE    2  // 蓝色
#define RGB_SKY     3  // 天蓝色
#define RGB_MAGENTA 4  // 品红色
#define RGB_YELLOW  5  // 黄色
#define RGB_ORANGE  6  // 橙色
#define RGB_BLACK   7  // 黑色
#define RGB_WHITE   8  // 白色
#define RGB_PURPLE  9  // 紫色
#define RGB_BROWN   10 // 棕色
#define RGB_GRAY    11 // 灰色
#define RGB_INK     12 // 粉色
#define RGB_GOLD    13 // 金色
#define RGB_SILVER  14 // 银色

extern TIM_HandleTypeDef htim3;

/*建立一个定义单个LED三原色值大小的结构体*/
typedef struct
{
    uint8_t R;
    uint8_t G;
    uint8_t B;
} RGB_Color_TypeDef;

void Reset_Load(void);                                     // 该函数用于将数组最后24个数据变为0，代表RESET_code
void RGB_SetColor_ByRGB(uint8_t LedId, uint8_t R, uint8_t G, uint8_t B); // 显示指定颜色
void RGB_SetColor_ById(uint8_t LedId, uint8_t color_id, uint8_t level);  // 根据颜色编号显示颜色和亮度
void RGB_DisplayColor_ByRGB(uint8_t LedId, uint8_t R, uint8_t G, uint8_t B); // 显示指定颜色
void RGB_DisplayColor_ById(uint8_t LedId, uint8_t color_id, uint8_t level);  // 显示指定颜色和亮度

#endif
