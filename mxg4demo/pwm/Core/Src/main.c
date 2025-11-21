/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "dma.h"
#include "i2c.h"
#include "spi.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
#include <stdio.h>
#include "../BSP/LCD/lcd.h"
#include "../BSP/LCD/pic.h"
#include "../BSP/AS5600/as5600.h"
#include "../BSP/KEY/key.h"
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_SPI1_Init();
  MX_USART1_UART_Init();
  MX_I2C1_Init();
  MX_TIM6_Init();
  /* USER CODE BEGIN 2 */
//	LCD_Init();
//	LCD_Fill(0,0,LCD_W,LCD_H,WHITE);

	keyInit();
	uint8_t i,j;
	double  t=0;
	LCD_Init();
	LCD_Fill(0,0,LCD_W,LCD_H,BLACK);
	LCD_ShowString(10,10,"ST7789 OK",RED,BLACK,16,0);
	printf("hello world\r\n");
	
	HAL_Delay(1000);
	uint8_t status;
	HAL_I2C_Mem_Read(&hi2c1, AS5600_ADDRESS, 0x0B, I2C_MEMADD_SIZE_8BIT, &status, 1, 100);
	printf("STATUS = 0x%02X  MD=%d ML=%d MH=%d\n",  status,
													(status >> 5) & 1,
													(status >> 6) & 1,
													(status >> 7) & 1);
	if (status & 0x80) 
	{
		printf("MH=1 磁场太强！角度无效\n");
	}
	else if (status & 0x40) 
	{
		printf("ML=1 磁场太弱！角度不准\n");
	}
	else if (!(status & 0x20)) 
	{
		printf("MD=0 数据未更新\n");
	}
	else 
	{
		printf("磁场正常，可以读角度\n");
	}
	as5600SetZeroPosition();
	as5600ReadDMA(Angle_Hight_Register_Addr, data, DATA_SIZE);  // 启动I2C DMA接收
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
//    LCD_ShowChinese(0,0,"zjydz",RED,WHITE,32,0);
//	LCD_ShowString(0,40,"LCD_W:",RED,WHITE,16,0);
//	LCD_ShowIntNum(48,40,LCD_W,3,RED,WHITE,16);
//	LCD_ShowString(80,40,"LCD_H:",RED,WHITE,16,0);
//	LCD_ShowIntNum(128,40,LCD_H,3,RED,WHITE,16);
//	LCD_ShowString(80,40,"LCD_H:",RED,WHITE,16,0);
//	LCD_ShowString(0,70,"Increaseing Nun:",RED,WHITE,16,0);
//	LCD_ShowFloatNum1(128,70,t,4,RED,WHITE,16);
//	t+=0.11;
//	for(j=0;j<3;j++)
//	{
//		for(i=0;i<6;i++)
//		{
//			LCD_ShowPicture(40*i,120+j*40,40,40,gImage_1);
//		}
//	}
//	  
    //我的硬件是逆时针递减  即使DIR是3.3 应该是磁环安装反了 但是我的硬件没办法拆下磁环
//	printf("angleWithoutCircle:%.4f\r\nangleWithoutCircle:%.4f\r\nfullRotations:%d\r\n", angleWithoutCircle, angleWithCircle, fullRotations);
//	HAL_Delay(100);

//按键按住不放测试，有点类似重复，但重复是有规律的进行判断按键，这里则不是，只要按下就会进入if
//	if (keyCheck(KEY_1, KEY_HOLD))
//	{
//		printf("KEY1_HOLD\r\n");
//	}
//	if (keyCheck(KEY_2, KEY_HOLD))
//	{
//		printf("KEY2_HOLD\r\n");
//	}
//	if (keyCheck(KEY_3, KEY_HOLD))
//	{
//		printf("KEY3_HOLD\r\n");
//	}
//	if (keyCheck(KEY_4, KEY_HOLD))
//	{
//		printf("KEY4_HOLD\r\n");
//	}
//	if (keyCheck(KEY_5, KEY_HOLD))
//	{
//		printf("KEY5_HOLD\r\n");
//	}
//	if (keyCheck(KEY_6, KEY_HOLD))
//	{
//		printf("KEY6_HOLD\r\n");
//	}
//	if (keyCheck(KEY_7, KEY_HOLD))
//	{
//		printf("KEY7_HOLD\r\n");
//	}
//	if (keyCheck(KEY_8, KEY_HOLD))
//	{
//		printf("KEY8_HOLD\r\n");
//	}
//按键弹起测试	 		 
//	if (keyCheck(KEY_1, KEY_UP))
//	{
//		printf("KEY1_UP\r\n");
//	}
//	if (keyCheck(KEY_2, KEY_UP))
//	{
//		printf("KEY2_UP\r\n");
//	}
//	if (keyCheck(KEY_3, KEY_UP))
//	{
//		printf("KEY3_UP\r\n");
//	}
//	if (keyCheck(KEY_4, KEY_UP))
//	{
//		printf("KEY4_UP\r\n");
//	}
//	if (keyCheck(KEY_5, KEY_UP))
//	{
//		printf("KEY5_UP\r\n");
//	}
//	if (keyCheck(KEY_6, KEY_UP))
//	{
//		printf("KEY6_UP\r\n");
//	}
//	if (keyCheck(KEY_7, KEY_UP))
//	{
//		printf("KEY7_UP\r\n");
//	}
//	if (keyCheck(KEY_8, KEY_UP))
//	{
//		printf("KEY8_UP\r\n");
//	}
//按键按下测试	 
//	if (keyCheck(KEY_1, KEY_DOWN))
//	{
//		printf("KEY1_DOWN\r\n");
//	}
//	if (keyCheck(KEY_2, KEY_DOWN))
//	{
//		printf("KEY2_DOWN\r\n");
//	}
//	if (keyCheck(KEY_3, KEY_DOWN))
//	{
//		printf("KEY3_DOWN\r\n");
//	}
//	if (keyCheck(KEY_4, KEY_DOWN))
//	{
//		printf("KEY4_DOWN\r\n");
//	}
//	if (keyCheck(KEY_5, KEY_DOWN))
//	{
//		printf("KEY5_DOWN\r\n");
//	}
//	if (keyCheck(KEY_6, KEY_DOWN))
//	{
//		printf("KEY6_DOWN\r\n");
//	}
//	if (keyCheck(KEY_7, KEY_DOWN))
//	{
//		printf("KEY7_DOWN\r\n");
//	}
//	if (keyCheck(KEY_8, KEY_DOWN))
//	{
//		printf("KEY8_DOWN\r\n");
//	}
//按键单击测试
//	if (keyCheck(KEY_1, KEY_SINGLE))
//	{
//		printf("KEY1_SINGLE\r\n");
//	}
//	if (keyCheck(KEY_2, KEY_SINGLE))
//	{
//		printf("KEY2_SINGLE\r\n");
//	}
//	if (keyCheck(KEY_3, KEY_SINGLE))
//	{
//		printf("KEY3_SINGLE\r\n");
//	}
//	if (keyCheck(KEY_4, KEY_SINGLE))
//	{
//		printf("KEY4_SINGLE\r\n");
//	}
//	if (keyCheck(KEY_5, KEY_SINGLE))
//	{
//		printf("KEY5_SINGLE\r\n");
//	}
//	if (keyCheck(KEY_6, KEY_SINGLE))
//	{
//		printf("KEY6_SINGLE\r\n");
//	}
//	if (keyCheck(KEY_7, KEY_SINGLE))
//	{
//		printf("KEY7_SINGLE\r\n");
//	}
//	if (keyCheck(KEY_8, KEY_SINGLE))
//	{
//		printf("KEY8_SINGLE\r\n");
//	}
//按键双击测试	 		 
//	if (keyCheck(KEY_1, KEY_DOUBLE))
//	{
//		printf("KEY1_DOUBLE\r\n");
//	}
//	if (keyCheck(KEY_2, KEY_DOUBLE))
//	{
//		printf("KEY2_DOUBLE\r\n");
//	}
//	if (keyCheck(KEY_3, KEY_DOUBLE))
//	{
//		printf("KEY3_DOUBLE\r\n");
//	}
//	if (keyCheck(KEY_4, KEY_DOUBLE))
//	{
//		printf("KEY4_DOUBLE\r\n");
//	}
//	if (keyCheck(KEY_5, KEY_DOUBLE))
//	{
//		printf("KEY5_DOUBLE\r\n");
//	}
//	if (keyCheck(KEY_6, KEY_DOUBLE))
//	{
//		printf("KEY6_DOUBLE\r\n");
//	}
//	if (keyCheck(KEY_7, KEY_DOUBLE))
//	{
//		printf("KEY7_DOUBLE\r\n");
//	}
//	if (keyCheck(KEY_8, KEY_DOUBLE))
//	{
//		printf("KEY8_DOUBLE\r\n");
//	}
//按键长按测试	 	 
//	if (keyCheck(KEY_1, KEY_LONG))
//	{
//		printf("KEY1_LONG\r\n");
//	}
//	if (keyCheck(KEY_2, KEY_LONG))
//	{
//		printf("KEY2_LONG\r\n");
//	}
//	if (keyCheck(KEY_3, KEY_LONG))
//	{
//		printf("KEY3_LONG\r\n");
//	}
//	if (keyCheck(KEY_4, KEY_LONG))
//	{
//		printf("KEY4_LONG\r\n");
//	}
//	if (keyCheck(KEY_5, KEY_LONG))
//	{
//		printf("KEY5_LONG\r\n");
//	}
//	if (keyCheck(KEY_6, KEY_LONG))
//	{
//		printf("KEY6_LONG\r\n");
//	}
//	if (keyCheck(KEY_7, KEY_LONG))
//	{
//		printf("KEY7_LONG\r\n");
//	}
//	if (keyCheck(KEY_8, KEY_LONG))
//	{
//		printf("KEY8_LONG\r\n");
//	}		 
//按键重复测试	 
	 if (keyCheck(KEY_1, KEY_REPEAT))
	 {
		 printf("KEY1_REPEAT\r\n");
	 }
	 if (keyCheck(KEY_2, KEY_REPEAT))
	 {
		 printf("KEY2_REPEAT\r\n");
	 }
	 if (keyCheck(KEY_3, KEY_REPEAT))
	 {
		 printf("KEY3_REPEAT\r\n");
	 }
	 if (keyCheck(KEY_4, KEY_REPEAT))
	 {
		 printf("KEY4_REPEAT\r\n");
	 }
	 if (keyCheck(KEY_5, KEY_REPEAT))
	 {
		 printf("KEY5_REPEAT\r\n");
	 }
	 if (keyCheck(KEY_6, KEY_REPEAT))
	 {
		 printf("KEY6_REPEAT\r\n");
	 }
	 if (keyCheck(KEY_7, KEY_REPEAT))
	 {
		 printf("KEY7_REPEAT\r\n");
	 }
	 if (keyCheck(KEY_8, KEY_REPEAT))
	 {
		 printf("KEY8_REPEAT\r\n");
	 }	  
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1_BOOST);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = RCC_PLLM_DIV2;
  RCC_OscInitStruct.PLL.PLLN = 85;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
