#ifndef __WS2812BOLD_H
#define __WS2812BOLD_H
#include "stm32g4xx.h"                  // Device header
#include "tim.h"

#define WS2812B_LED_QUANTITY	60
#define CODE_1 (125)   // 1码定时器计数次数
#define CODE_0 (51)    // 0码定时器计数次数


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

#endif
