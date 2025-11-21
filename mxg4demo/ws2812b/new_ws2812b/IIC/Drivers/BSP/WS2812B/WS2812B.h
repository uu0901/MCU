#ifndef __WS2812B_H
#define __WS2812B_H
#include "stm32g4xx.h"                  // Device header
#include "tim.h"

#define WS2812B_LED_QUANTITY	60
#define CODE_1 (125)   // 1码定时器计数次数
#define CODE_0 (51)    // 0码定时器计数次数

// 标准的24位GRB颜色定义
#define COLOR_RED     0x00FF00      // 红色: G=0, R=255, B=0
#define COLOR_GREEN   0xFF0000      // 绿色: G=255, R=0, B=0  
#define COLOR_BLUE    0x0000FF      // 蓝色: G=0, R=0, B=255
#define COLOR_CYAN    0xFFFF00      // 青色: G=255, R=255, B=0
#define COLOR_MAGENTA 0x00FFFF      // 品红色: G=0, R=255, B=255
#define COLOR_YELLOW  0xFFFF00      // 黄色: G=255, R=255, B=0
#define COLOR_ORANGE  0xA5FF00      // 橙色: G=165, R=255, B=0
#define COLOR_BLACK   0x000000      // 黑色: G=0, R=0, B=0
#define COLOR_WHITE   0xFFFFFF      // 白色: G=255, R=255, B=255
#define COLOR_PURPLE  0x800080      // 紫色: G=128, R=0, B=128
#define COLOR_BROWN   0xA52A2A      // 棕色: G=165, R=42, B=42
#define COLOR_GRAY    0x808080      // 灰色: G=128, R=128, B=128
#define COLOR_PINK    0xFFC0CB      // 粉色: G=255, R=192, B=203
#define COLOR_GOLD    0xFFD700      // 金色: G=255, R=215, B=0
#define COLOR_SILVER  0xC0C0C0      // 银色: G=192, R=192, B=192

typedef struct {
    const char* name;
    uint32_t value;
} ColorDef;


extern uint32_t WS2812B_Buf[];	//0xGGRRBB
extern const ColorDef colors[];

void WS2812B_Init(void);
void WS2812B_ClearBuf(void);
void WS2812B_SetBuf(uint32_t Color);
void WS2812B_UpdateBuf(void);
void ColorRGB(uint16_t delay);
#endif
