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
#include "tim.h"
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
//extern DMA_HandleTypeDef hdma_tim2_ch2;
//volatile uint8_t aaa = 0;
//void HAL_DMA_TxCpltCallback(DMA_HandleTypeDef *hdma)
//{
//  /* 判断是否是我们的DMA通道 */
//  if (hdma == &hdma_tim2_ch2) 
//	  {
//		  aaa = 1;
//		  TIM2->DIER &= ~TIM_DMA_CC2;
//   HAL_TIM_PWM_Stop_DMA(&htim3, TIM_CHANNEL_1);
//    HAL_TIM_PWM_Stop_DMA(&htim2, TIM_CHANNEL_1);
//    HAL_TIM_PWM_Stop_DMA(&htim2, TIM_CHANNEL_2); 
//    HAL_TIM_PWM_Stop_DMA(&htim2, TIM_CHANNEL_3);
//    HAL_TIM_PWM_Stop_DMA(&htim2, TIM_CHANNEL_4);
//    // 添加你的代码，例如：
//    // - 设置一个标志位通知主程序
//    // - 停止定时器或DMA
//    // - 准备下一次传输
//  }
//}
//void HAL_DMA_HalfCpltCallback(DMA_HandleTypeDef *hdma)
//{
//  if (hdma == &hdma_tim2_ch2) {
//	  aaa  = 2;
//    // 常用于"双缓冲"或"乒乓缓冲"机制:cite[2]
//    // 例如：处理前半部分数据，同时DMA接收后半部分
//  }
//}
//void HAL_DMA_ErrorCallback(DMA_HandleTypeDef *hdma)
//{
//  if (hdma == &hdma_tim2_ch2) {
//	  aaa  = 3;
//    // 处理DMA传输错误
//    // 例如：读取错误标志，进行错误恢复
//    uint32_t error = HAL_DMA_GetError(hdma);
//    // ... 错误处理代码
//  }
//}
#define NUM 4
uint16_t  send_Buf[NUM]={100,250,500,500};    /* ����һ���������ڲ��� */
uint32_t  send_Buf1[NUM]={100,250,500,500};    /* ����һ���������ڲ��� */
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
  MX_TIM3_Init();
  MX_TIM2_Init();
  
  /* USER CODE BEGIN 2 */
//HAL_DMA_RegisterCallback(&hdma_tim2_ch2, HAL_DMA_XFER_CPLT_CB_ID, HAL_DMA_TxCpltCallback);
//HAL_DMA_RegisterCallback(&hdma_tim2_ch2, HAL_DMA_XFER_HALFCPLT_CB_ID, HAL_DMA_HalfCpltCallback);
//HAL_DMA_RegisterCallback(&hdma_tim2_ch2, HAL_DMA_XFER_ERROR_CB_ID, HAL_DMA_ErrorCallback);

//HAL_TIM_PWM_Start_DMA(&htim3, TIM_CHANNEL_1, (uint32_t*)send_Buf,  NUM);
//HAL_TIM_PWM_Start_DMA(&htim2, TIM_CHANNEL_1, (uint32_t*)send_Buf1, NUM);
HAL_TIM_PWM_Start_DMA(&htim2, TIM_CHANNEL_2, (uint32_t*)send_Buf1, NUM);
//HAL_TIM_PWM_Start_DMA(&htim2, TIM_CHANNEL_3, (uint32_t*)send_Buf1, NUM);
//HAL_TIM_PWM_Start_DMA(&htim2, TIM_CHANNEL_4, (uint32_t*)send_Buf1, NUM);
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}
/*
1. HAL_TIM_PWM_Start_DMA() 触发的中断

它内部调用 HAL_DMA_Start_IT()，所以 DMA TC（传输完成）中断就是由 DMA 控制器触发的。

中断发生后会进入 DMAx_ChannelX_IRQHandler() → HAL_DMA_IRQHandler(&hdma_tim2_ch2)。

HAL_DMA_IRQHandler() 会再调用挂在这个 DMA 句柄上的回调函数，比如：

XferCpltCallback → 对应 HAL_TIM_PWM_PulseFinishedCallback()

XferHalfCpltCallback → 对应 HAL_TIM_PWM_PulseFinishedHalfCpltCallback()

XferErrorCallback → 出错时

所以，HAL_TIM_PWM_PulseFinishedCallback 就是 DMA 传输完成中断的回调 ✅。

2. 为什么名字叫 PulseFinished ？

因为 HAL 的设计理念是“抽象化”。

TIM+DMA 的场景里，HAL 把 DMA一次传输完成 → 认为是一个 PWM Pulse 传输完成，所以名字叫 PulseFinished。

实际上它就是 DMA TC 中断。

所以你要的“DMA传输完成中断”就是这个函数。


DMA1_Channel3_IRQHandler()
    → HAL_DMA_IRQHandler(&hdma_tim2_ch2)
        → hdma->XferCpltCallback = TIM_DMADelayPulseCplt
            → TIM_DMADelayPulseCplt()
                → HAL_TIM_PWM_PulseFinishedCallback(htim)

1. HAL 里两种回调机制

HAL 针对回调有两套机制：

静态弱函数（weak function）机制
当 USE_HAL_TIM_REGISTER_CALLBACKS == 0 时，HAL 驱动代码里会直接写：

HAL_TIM_PWM_PulseFinishedCallback(htim);


而这个函数在 HAL 库里是 __weak 定义的：

__weak void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim)
{
    /* NOTE : This function Should not be modified, when the callback is needed,
              the HAL_TIM_PWM_PulseFinishedCallback could be implemented in the user file
     */
/*

所以只要你在 用户代码里实现了同名函数，它就会覆盖掉 weak 版本，从而生效。
👉 这就是你现在的情况。

动态注册机制（USE_HAL_TIM_REGISTER_CALLBACKS == 1）
如果你把宏打开，HAL 就不会直接调用 HAL_TIM_PWM_PulseFinishedCallback()，而是通过一个函数指针：

htim->PWM_PulseFinishedCallback(htim);


你需要手动用 HAL_TIM_RegisterCallback() 注册函数指针，比如：

HAL_TIM_RegisterCallback(&htim2, HAL_TIM_PWM_PULSE_FINISHED_CB_ID, My_Callback);

2. 你的情况

你 USE_HAL_TIM_REGISTER_CALLBACKS == 0

所以 HAL 驱动用的是 静态 weak 回调机制

你自己写了一个 HAL_TIM_PWM_PulseFinishedCallback()

编译器链接时用你写的函数覆盖了 HAL 库里 weak 版本

于是就能执行到你的回调。

3. 总结

✅ 即使 USE_HAL_TIM_REGISTER_CALLBACKS == 0，你也能用回调。因为这是 HAL 提供的 默认 weak 回调覆盖机制。
只有当你需要 运行时换回调函数（比如不同任务注册不同回调）时，才需要把宏改成 1，启用注册接口。

*/
volatile uint8_t flag;
void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim)
{
    if (htim->Instance == TIM2 && htim->Channel == HAL_TIM_ACTIVE_CHANNEL_2)
    {
        // 重新启动DMA传输
HAL_TIM_PWM_Start_DMA(&htim2, TIM_CHANNEL_2, (uint32_t*)send_Buf1, NUM);
		flag += 1;
		
//		HAL_TIM_PWM_Stop_DMA(htim, TIM_CHANNEL_2);
//        __HAL_TIM_SET_COMPARE(htim, TIM_CHANNEL_2, 0); // 确保输出低电平
    }
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
  HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = RCC_PLLM_DIV4;
  RCC_OscInitStruct.PLL.PLLN = 75;
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
