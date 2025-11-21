#ifndef _UART_H
#define _UART_H
#include "driver/gpio.h"   // 加这个才能用 GPIO_NUM_x, gpio_set_level 等
#include "driver/uart.h"
#include <string.h>
/* 引脚和串口定义 */
#define USART_UX UART_NUM_0
#define USART_TX_GPIO_PIN GPIO_NUM_43
#define USART_RX_GPIO_PIN GPIO_NUM_44
/* 串口接收相关定义 */
#define RX_BUF_SIZE 1024 /* 环形缓冲区大小 */
void usart_init(uint32_t baudrate);
#endif