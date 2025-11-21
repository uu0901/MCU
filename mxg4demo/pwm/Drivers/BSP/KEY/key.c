#include "Key.h"
#include <string.h> // memset
/*
	7	
	6	KEY_REPEAT		重复		按键长按后，每隔重复时间阈值置一次1，直到按键松开
	5	KEY_LONG		长按		按键按住不放，超过长按时间阈值的时刻置1
	4	KEY_DOUBLE		双击		按键按下松开后，在双击时间阈值内再次按下的时刻置1
	3	KEY_SINGLE		单击	    按键按下松开后，没有再次按下，超过双击时间阈值的时刻置1
	2	KEY_UP			松开时刻	按键松开的时刻置1
	1	KEY_DOWN		按下时刻	按键按下的时刻置1
	0	KEY_HOLD		按住不放	按键按住不放时置1，按键松开时置0

note:
	HOLD、DOWN、UP，在任何时刻，只要检测到对应的事件，就会置标志位
	SINGLE、DOUBLE、LONG/REPEAT，三者互斥，一次完整的按键流程，只会置其中一类标志位
	HOLD自动置1和清0，其余标志位在检测到指定事件的时刻置1，读后清0

	S=0 	空闲，检测按键按下  ->(按键按下，设定长按时间)->		S=1		按键已经按下，检测按键松开，等待长按时间	->(按键松开，设定双击时间)->	S=2		按键已经松开，检测按键按下，等待双击时间	->(双击时间到，SINGLE=1）
	|																			V																				V										|
	|																（长按时间到，设定重复时间，LONG=1）									              （按键按下，DOUBLE=1）						    |
	|																			|																				|										|
	|																			V																				V										|
	|														--->S=4		按键已经长按，检测按键松开，等待重复时间	->(按键松开)					S=3		按键已经双击，检测按键松开						  |
	|														|					|									|											|										|
	|														|					V								    |											V										|
	|														|		（重复时间到，设定重复时间，REPEAT=1）			   |										（按键松开）								|
	|														|					|									|											|										|
	|														--------------------									|											|										|
	 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------											
*/

/* 全局按键数组与计数器 */
Key_TypeDef g_keys[MAX_KEY_COUNT];
static uint8_t g_key_count = 0;

/**
 * @brief 初始化按键 GPIO 与内核数据
 * @note  使用 HAL 初始化，输入模式，上拉。根据你实际板子可以改为下拉或浮空
 */
void keyInit(void)
{
    /* 先清空结构体 */
    memset(g_keys, 0, sizeof(g_keys));
    g_key_count = 0;

    /* 使能所有按键对应的 GPIO 时钟（宏内部调用 __HAL_RCC_GPIOx_CLK_ENABLE） */
    KEY1_GPIO_CLK_ENABLE();
    KEY2_GPIO_CLK_ENABLE();
    KEY3_GPIO_CLK_ENABLE();
    KEY4_GPIO_CLK_ENABLE();
    KEY5_GPIO_CLK_ENABLE();
    KEY6_GPIO_CLK_ENABLE();
    KEY7_GPIO_CLK_ENABLE();
    KEY8_GPIO_CLK_ENABLE();
	
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;       // 输入
    GPIO_InitStruct.Pull = GPIO_PULLUP;           // 上拉 （原来 F1 的 GPIO_Mode_IPU）
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;

    /* KEY1 */
    if (g_key_count < MAX_KEY_COUNT) 
    {
        g_keys[g_key_count].port = KEY1_GPIO_PORT;
        g_keys[g_key_count].pin = KEY1_GPIO_PIN;
        GPIO_InitStruct.Pin = KEY1_GPIO_PIN;
        HAL_GPIO_Init(KEY1_GPIO_PORT, &GPIO_InitStruct);
        g_key_count++;
    }

    /* KEY2 */
    if (g_key_count < MAX_KEY_COUNT) 
    {
        g_keys[g_key_count].port = KEY2_GPIO_PORT;
        g_keys[g_key_count].pin = KEY2_GPIO_PIN;
        GPIO_InitStruct.Pin = KEY2_GPIO_PIN;
        HAL_GPIO_Init(KEY2_GPIO_PORT, &GPIO_InitStruct);
        g_key_count++;
    }

    /* KEY3 */
    if (g_key_count < MAX_KEY_COUNT) 
    {
        g_keys[g_key_count].port = KEY3_GPIO_PORT;
        g_keys[g_key_count].pin = KEY3_GPIO_PIN;
        GPIO_InitStruct.Pin = KEY3_GPIO_PIN;
        HAL_GPIO_Init(KEY3_GPIO_PORT, &GPIO_InitStruct);
        g_key_count++;
    }

    /* KEY4 */
    if (g_key_count < MAX_KEY_COUNT) 
    {
        g_keys[g_key_count].port = KEY4_GPIO_PORT;
        g_keys[g_key_count].pin = KEY4_GPIO_PIN;
        GPIO_InitStruct.Pin = KEY4_GPIO_PIN;
        HAL_GPIO_Init(KEY4_GPIO_PORT, &GPIO_InitStruct);
        g_key_count++;
    }
	/* KEY5 */
    if (g_key_count < MAX_KEY_COUNT) 
    {
        g_keys[g_key_count].port = KEY5_GPIO_PORT;
        g_keys[g_key_count].pin = KEY5_GPIO_PIN;
        GPIO_InitStruct.Pin = KEY5_GPIO_PIN;
        HAL_GPIO_Init(KEY5_GPIO_PORT, &GPIO_InitStruct);
        g_key_count++;
    }
	/* KEY6 */
    if (g_key_count < MAX_KEY_COUNT) 
    {
        g_keys[g_key_count].port = KEY6_GPIO_PORT;
        g_keys[g_key_count].pin = KEY6_GPIO_PIN;
        GPIO_InitStruct.Pin = KEY6_GPIO_PIN;
        HAL_GPIO_Init(KEY6_GPIO_PORT, &GPIO_InitStruct);
        g_key_count++;
    }
	/* KEY7 */
    if (g_key_count < MAX_KEY_COUNT) 
    {
        g_keys[g_key_count].port = KEY7_GPIO_PORT;
        g_keys[g_key_count].pin = KEY7_GPIO_PIN;
        GPIO_InitStruct.Pin = KEY7_GPIO_PIN;
        HAL_GPIO_Init(KEY7_GPIO_PORT, &GPIO_InitStruct);
        g_key_count++;
    }
	/* KEY8 */
    if (g_key_count < MAX_KEY_COUNT) 
    {
        g_keys[g_key_count].port = KEY8_GPIO_PORT;
        g_keys[g_key_count].pin = KEY8_GPIO_PIN;
        GPIO_InitStruct.Pin = KEY8_GPIO_PIN;
        HAL_GPIO_Init(KEY8_GPIO_PORT, &GPIO_InitStruct);
        g_key_count++;
    }
    /* 初始化各按键状态为未按下 */
    for (uint8_t i = 0; i < g_key_count; i++)
    {
        g_keys[i].CurrState = KEY_UNPRESSED;
        g_keys[i].PrevState = KEY_UNPRESSED;
        g_keys[i].S = 0;
        g_keys[i].flag = 0;
        g_keys[i].timer = 0;
    }
}

/**
 * @brief 读取按键状态：返回 KEY_PRESSED(1) 或 KEY_UNPRESSED(0)
 */
uint8_t keyGetState(uint8_t n)
{
    if (n >= g_key_count) return KEY_UNPRESSED;
    /* HAL_GPIO_ReadPin 返回 GPIO_PIN_SET / GPIO_PIN_RESET
       我们假定硬件为上拉且按下拉低（原来 IPU） —— 所以 GPIO_PIN_RESET 表示按下 */
    if (HAL_GPIO_ReadPin(g_keys[n].port, g_keys[n].pin) == GPIO_PIN_RESET)
    {
        return KEY_PRESSED;
    }
    else
    {
        return KEY_UNPRESSED;
    }
}

/**
 * @brief 检查按键事件标志（除 KEY_HOLD 外会被清除）
 * @return 1: 有该事件；0: 无
 */
uint8_t keyCheck(uint8_t n, uint8_t flag)
{
    if (n >= g_key_count) return 0;
    if (g_keys[n].flag & flag)
    {
        if (flag != KEY_HOLD) {
            g_keys[n].flag &= ~flag;  // 清除非保持型标志
        }
        return 1;
    }
    return 0;
}

/**
 * @brief 按键定时/状态机（需定期被调用）
 * @note  原逻辑保留：外层 Count 每次加 1，当 Count >=20 时才做一次按键状态更新（相当于 20ms）
 *        因此：若你在 HAL 定时器里以 1ms 调用 keyTick()，那实际采样周期为 20ms。
 */
void keyTick(void)
{
    static uint8_t Count = 0;
    uint8_t i;

    /* 先处理各按键的倒计时器（timer 单位为 ms） */
    for (i = 0; i < g_key_count; i ++)
    {
        if (g_keys[i].timer > 0)
        {
            g_keys[i].timer --;
        }
    }

    Count ++;
    if (Count >= 20)   /* 每 20 次执行一次完整状态机（如果 keyTick 每 1ms 调用，则等于 20ms 采样） */
    {
        Count = 0;

        for (i = 0; i < g_key_count; i ++)
        {
            g_keys[i].PrevState = g_keys[i].CurrState;
            g_keys[i].CurrState = keyGetState(i);

            /* HOLD 标志：按下 = 置位，松开 = 清除 */
            if (g_keys[i].CurrState == KEY_PRESSED)
            {
                g_keys[i].flag |= KEY_HOLD;
            }
            else
            {
                g_keys[i].flag &= ~KEY_HOLD;
            }

            /* DOWN / UP 过渡事件 */
            if (g_keys[i].CurrState == KEY_PRESSED && g_keys[i].PrevState == KEY_UNPRESSED)
            {
                g_keys[i].flag |= KEY_DOWN;
            }
            if (g_keys[i].CurrState == KEY_UNPRESSED && g_keys[i].PrevState == KEY_PRESSED)
            {
                g_keys[i].flag |= KEY_UP;
            }

            /* 状态机（与原逻辑一致） */
            if (g_keys[i].S == 0)
            {
                if (g_keys[i].CurrState == KEY_PRESSED)
                {
                    g_keys[i].timer = KEY_TIME_LONG;
                    g_keys[i].S = 1;
                }
            }
            else if (g_keys[i].S == 1)
            {
                if (g_keys[i].CurrState == KEY_UNPRESSED)
                {
                    g_keys[i].timer = KEY_TIME_DOUBLE;
                    g_keys[i].S = 2;
                }
                else if (g_keys[i].timer == 0)
                {
                    g_keys[i].timer = KEY_TIME_REPEAT;
                    g_keys[i].flag |= KEY_LONG;
                    g_keys[i].S = 4;
                }
            }
            else if (g_keys[i].S == 2)
            {
                if (g_keys[i].CurrState == KEY_PRESSED)
                {
                    g_keys[i].flag |= KEY_DOUBLE;
                    g_keys[i].S = 3;
                }
                else if (g_keys[i].timer == 0)
                {
                    g_keys[i].flag |= KEY_SINGLE;
                    g_keys[i].S = 0;
                }
            }
            else if (g_keys[i].S == 3)
            {
                if (g_keys[i].CurrState == KEY_UNPRESSED)
                {
                    g_keys[i].S = 0;
                }
            }
            else if (g_keys[i].S == 4)
            {
                if (g_keys[i].CurrState == KEY_UNPRESSED)
                {
                    g_keys[i].S = 0;
                }
                else if (g_keys[i].timer == 0)
                {
                    g_keys[i].timer = KEY_TIME_REPEAT;
                    g_keys[i].flag |= KEY_REPEAT;
                    g_keys[i].S = 4;
                }
            }
        }
    }
}
