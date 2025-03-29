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
#include "adc.h"
#include "dac.h"
#include "dma.h"
#include "tim.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "arm_math.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
// Size of the ADC/DAC buffers
#define		N			32
#define		halfN		16

// Timer 7 frequency : F_T7 = F_CLK / [(PSC + 1) (ARR + 1) (PSC_APB)
//		F_CLK = 170 MHz
//		PSC_APB = 1
//		PSC = 16		-> F_IN = 10 MHz
// 		for F_T7 = 20 kHz -->  ARR = 10 MHz / 20 kHz - 1 = 499
#define		PSC			16
#define		ARR			499


/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

COM_InitTypeDef BspCOMInit;

/* USER CODE BEGIN PV */
// ADC and DAC buffers
uint32_t 	adc_buffer[N];
uint32_t 	dac_buffer[N];

float32_t	filt_in[N];
float32_t	filt_out[N];
float32_t	*filt_in_ptr = &filt_in[0];
float32_t	*filt_out_ptr = &filt_out[0];

/*
FIR filter designed with
http://t-filter.appspot.com

sampling frequency: 20000 Hz

* 0 Hz - 1000 Hz
  gain = 0
  desired attenuation = -40 dB
  actual attenuation = -40.2718433804187 dB

* 2000 Hz - 3500 Hz
  gain = 1
  desired ripple = 1 dB
  actual ripple = 0.728832119760362 dB

* 4500 Hz - 10000 Hz
  gain = 0
  desired attenuation = -40 dB
  actual attenuation = -40.2718433804187 dB

*/

#define 	FILTER_TAP_NUM	31
float32_t filter_taps[FILTER_TAP_NUM] = {
  -0.014269730685815782,
  -0.01810443657842748,
  -0.005766073703476036,
  0.018399368185851486,
  0.030172324445735456,
  0.01678007293633375,
  -0.0004755959399820885,
  0.010031041804741908,
  0.04007084376247264,
  0.03463723639519255,
  -0.04304077820456944,
  -0.1437574784087499,
  -0.15841257479491958,
  -0.033189465735796696,
  0.15079092849525755,
  0.2382378851480237,
  0.15079092849525755,
  -0.033189465735796696,
  -0.15841257479491958,
  -0.1437574784087499,
  -0.04304077820456944,
  0.03463723639519255,
  0.04007084376247264,
  0.010031041804741908,
  -0.0004755959399820885,
  0.01678007293633375,
  0.030172324445735456,
  0.018399368185851486,
  -0.005766073703476036,
  -0.01810443657842748,
  -0.014269730685815782
};



arm_fir_instance_f32	filter1;
float32_t	State[halfN + FILTER_TAP_NUM - 1];


/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
void ADC_DAC_frequency_init(void);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

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
  MX_ADC1_Init();
  MX_DAC1_Init();
  MX_TIM2_Init();
  MX_TIM7_Init();
  /* USER CODE BEGIN 2 */

  ADC_DAC_frequency_init();
  // Initialization of ADC and DAC
  HAL_ADC_Start_DMA(&hadc1, adc_buffer, N);
  HAL_DAC_Start_DMA(&hdac1, DAC_CHANNEL_1, dac_buffer, N, DAC_ALIGN_12B_R);
  HAL_TIM_Base_Start(&htim7);
  arm_fir_init_f32(&filter1, FILTER_TAP_NUM, &filter_taps[0], &State[0], halfN);

  /* USER CODE END 2 */

  /* Initialize leds */
  BSP_LED_Init(LED_GREEN);

  /* Initialize COM1 port (115200, 8 bits (7-bit data + 1 stop bit), no parity */
  BspCOMInit.BaudRate   = 115200;
  BspCOMInit.WordLength = COM_WORDLENGTH_8B;
  BspCOMInit.StopBits   = COM_STOPBITS_1;
  BspCOMInit.Parity     = COM_PARITY_NONE;
  BspCOMInit.HwFlowCtl  = COM_HWCONTROL_NONE;
  if (BSP_COM_Init(COM1, &BspCOMInit) != BSP_ERROR_NONE)
  {
    Error_Handler();
  }

  /* USER CODE BEGIN BSP */

  /* -- Sample board code to send message over COM1 port ---- */
  printf("Welcome to STM32 world !\n\r");

  /* -- Sample board code to switch on leds ---- */
  BSP_LED_On(LED_GREEN);

  /* USER CODE END BSP */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {

/* -- Sample board code to toggle leds ---- */
       BSP_LED_Toggle(LED_GREEN);

    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
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
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = RCC_PLLM_DIV4;
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
// ISR for ADC and DAC conversion
void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc){
	for(int n=0; n<halfN; n++){ filt_in[n] = (float32_t) adc_buffer[n] - 2048; }
	arm_fir_f32(&filter1, filt_in_ptr, filt_out_ptr, halfN);
	for(int n=0; n<halfN; n++){ dac_buffer[n] = (float32_t) filt_out[n] + 2048; }
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc){
	for(int n=halfN; n<N; n++){ filt_in[n] = (float32_t) adc_buffer[n] - 2048; }
	arm_fir_f32(&filter1, filt_in_ptr + halfN, filt_out_ptr + halfN, halfN);
	for(int n=halfN; n<N; n++){ dac_buffer[n] = (float32_t) filt_out[n] + 2048; }
}


void ADC_DAC_frequency_init(void)
{
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  htim7.Instance = TIM7;
  htim7.Init.Prescaler = PSC;
  htim7.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim7.Init.Period = ARR;
  htim7.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim7) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_UPDATE;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim7, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }

}


/* USER CODE END 4 */

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

/**
  * @}
  */

/**
  * @}
  */

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
