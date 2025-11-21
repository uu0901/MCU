#ifndef __KEY_H
#define __KEY_H

#include "stm32g4xx_hal.h"
#include <stdint.h>

/* 最大按键数 */
#define MAX_KEY_COUNT           8

/* 按键物理状态 */
#define KEY_PRESSED             1
#define KEY_UNPRESSED           0

/* 时间常量（以 ms 为单位，keyTick() 中 Count 每 20 次处理一次，取决于你调用 keyTick 的频率）*/
#define KEY_TIME_DOUBLE         200
#define KEY_TIME_LONG           2000
#define KEY_TIME_REPEAT         100

/* 按键索引 */
#define KEY_1                   0
#define KEY_2                   1
#define KEY_3                   2
#define KEY_4                   3
#define KEY_5                   4
#define KEY_6                   5
#define KEY_7                   6
#define KEY_8                   7
/* 事件标志位（与原版保持一致）*/
#define KEY_HOLD                (1 << 1)
#define KEY_DOWN                (1 << 2)
#define KEY_UP                  (1 << 3)
#define KEY_SINGLE              (1 << 4)
#define KEY_DOUBLE              (1 << 5)
#define KEY_LONG                (1 << 6)
#define KEY_REPEAT              (1 << 7)

/* 按键结构体 */
typedef struct 
{
    GPIO_TypeDef* port;       // GPIO 端口 (HAL 的类型)
    uint16_t pin;             // 引脚编号 (GPIO_PIN_x)
    uint8_t CurrState;        // 当前值
    uint8_t PrevState;        // 上一次值
    uint8_t S;                // 状态机
    uint8_t flag;             // 事件标志
    uint16_t timer;           // 计时器 (ms 级)
} Key_TypeDef;

/* ---------------- 按键 GPIO 配置区（按你的硬件修改） ----------------
   下面是示例定义（对应你原来 F1 的管脚），如果你的实际硬件引脚不同，
   请修改这些宏为实际的 GPIOx / GPIO_PIN_x。
*/
#define KEY1_GPIO_PORT                  GPIOB
#define KEY1_GPIO_PIN                   GPIO_PIN_12
#define KEY1_GPIO_CLK_ENABLE()          do{ __HAL_RCC_GPIOB_CLK_ENABLE(); } while(0)

#define KEY2_GPIO_PORT                  GPIOB
#define KEY2_GPIO_PIN                   GPIO_PIN_13
#define KEY2_GPIO_CLK_ENABLE()          do{ __HAL_RCC_GPIOB_CLK_ENABLE(); } while(0)

#define KEY3_GPIO_PORT                  GPIOB
#define KEY3_GPIO_PIN                   GPIO_PIN_14
#define KEY3_GPIO_CLK_ENABLE()          do{ __HAL_RCC_GPIOB_CLK_ENABLE(); } while(0)

#define KEY4_GPIO_PORT                  GPIOB
#define KEY4_GPIO_PIN                   GPIO_PIN_15
#define KEY4_GPIO_CLK_ENABLE()          do{ __HAL_RCC_GPIOB_CLK_ENABLE(); } while(0)

#define KEY5_GPIO_PORT                  GPIOA
#define KEY5_GPIO_PIN                   GPIO_PIN_1
#define KEY5_GPIO_CLK_ENABLE()          do{ __HAL_RCC_GPIOA_CLK_ENABLE(); } while(0)

#define KEY6_GPIO_PORT                  GPIOA
#define KEY6_GPIO_PIN                   GPIO_PIN_2
#define KEY6_GPIO_CLK_ENABLE()          do{ __HAL_RCC_GPIOA_CLK_ENABLE(); } while(0)

#define KEY7_GPIO_PORT                  GPIOA
#define KEY7_GPIO_PIN                   GPIO_PIN_3
#define KEY7_GPIO_CLK_ENABLE()          do{ __HAL_RCC_GPIOA_CLK_ENABLE(); } while(0)

#define KEY8_GPIO_PORT                  GPIOA
#define KEY8_GPIO_PIN                   GPIO_PIN_4
#define KEY8_GPIO_CLK_ENABLE()          do{ __HAL_RCC_GPIOA_CLK_ENABLE(); } while(0)

/* 方便读取的宏（返回 1 = 按下，0 = 未按下） - 采用外部上拉、低电平按下逻辑 */
#define KEY1_READ()    (HAL_GPIO_ReadPin(KEY1_GPIO_PORT, KEY1_GPIO_PIN) == GPIO_PIN_RESET)
#define KEY2_READ()    (HAL_GPIO_ReadPin(KEY2_GPIO_PORT, KEY2_GPIO_PIN) == GPIO_PIN_RESET)
#define KEY3_READ()    (HAL_GPIO_ReadPin(KEY3_GPIO_PORT, KEY3_GPIO_PIN) == GPIO_PIN_RESET)
#define KEY4_READ()    (HAL_GPIO_ReadPin(KEY4_GPIO_PORT, KEY4_GPIO_PIN) == GPIO_PIN_RESET)
#define KEY5_READ()    (HAL_GPIO_ReadPin(KEY5_GPIO_PORT, KEY5_GPIO_PIN) == GPIO_PIN_RESET)
#define KEY6_READ()    (HAL_GPIO_ReadPin(KEY6_GPIO_PORT, KEY6_GPIO_PIN) == GPIO_PIN_RESET)
#define KEY7_READ()    (HAL_GPIO_ReadPin(KEY7_GPIO_PORT, KEY7_GPIO_PIN) == GPIO_PIN_RESET)
#define KEY8_READ()    (HAL_GPIO_ReadPin(KEY8_GPIO_PORT, KEY8_GPIO_PIN) == GPIO_PIN_RESET)
/* 函数接口 */
void keyInit(void);                          // 初始化按键 GPIO 与内部数据结构
uint8_t keyGetState(uint8_t n);              // 读取第 n 个按键状态（KEY_PRESSED / KEY_UNPRESSED）
uint8_t keyCheck(uint8_t n, uint8_t Flag);   // 检查并清除事件标志（除了 HOLD）
void keyTick(void);                          // 周期调用（负责时间计数与状态机），建议 1ms 调用一次

/* 导出按键数组（若需要访问） */
extern Key_TypeDef g_keys[MAX_KEY_COUNT];

#endif /* __KEY_H */
