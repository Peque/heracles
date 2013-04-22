/*
 * main.c
 *
 * Copyright 2013 Miguel Sánchez de León Peque <msdeleonpeque@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 *
 *
 */


#include "stm32f30x.h"
#include "stm32f30x_gpio.h"
#include "stm32f30x_rcc.h"
#include "stm32f30x_tim.h"
#include "stm32f30x_syscfg.h"


/*
 * Bluetooth definitions
 */

// Tx line
#define BT_TX_PIN               GPIO_Pin_2
#define BT_TX_GPIO_PORT         GPIOA
#define BT_TX_GPIO_SOURCE       GPIO_PinSource2
#define BT_TX_GPIO_CLK          RCC_AHBPeriph_GPIOA
#define BT_TX_GPIO_AF           GPIO_AF_7

// Rx line
#define BT_RX_PIN               GPIO_Pin_3
#define BT_RX_GPIO_PORT         GPIOA
#define BT_RX_GPIO_SOURCE       GPIO_PinSource3
#define BT_RX_GPIO_CLK          RCC_AHBPeriph_GPIOA
#define BT_RX_GPIO_AF           GPIO_AF_7

// USART
#define BT_USART_CLK            RCC_APB1Periph_USART2
#define BT_USART                USART2

/*
 * Encoders definitions
 */

// Left motor GPIOs
#define ENCLA_PIN               GPIO_Pin_15
#define ENCLA_GPIO_PORT         GPIOA
#define ENCLA_GPIO_CLK          RCC_AHBPeriph_GPIOA
#define ENCLA_SOURCE            GPIO_PinSource15
#define ENCLA_AF                GPIO_AF_1

#define ENCLB_PIN               GPIO_Pin_3
#define ENCLB_GPIO_PORT         GPIOB
#define ENCLB_GPIO_CLK          RCC_AHBPeriph_GPIOB
#define ENCLB_SOURCE            GPIO_PinSource3
#define ENCLB_AF                GPIO_AF_1

// Right motor GPIOs
#define ENCRA_PIN               GPIO_Pin_6
#define ENCRA_GPIO_PORT         GPIOB
#define ENCRA_GPIO_CLK          RCC_AHBPeriph_GPIOB
#define ENCRA_SOURCE            GPIO_PinSource6
#define ENCRA_AF                GPIO_AF_2

#define ENCRB_PIN               GPIO_Pin_7
#define ENCRB_GPIO_PORT         GPIOB
#define ENCRB_GPIO_CLK          RCC_AHBPeriph_GPIOB
#define ENCRB_SOURCE            GPIO_PinSource7
#define ENCRB_AF                GPIO_AF_2

// Timers
#define ENCL_TIMER              TIM2
#define ENCL_TIMER_CLK          RCC_APB1Periph_TIM2
#define ENCR_TIMER              TIM4
#define ENCR_TIMER_CLK          RCC_APB1Periph_TIM4

/*
 * Motor control definitions
 */

// Standby pin
#define MCSTBY_PIN              GPIO_Pin_14
#define MCSTBY_GPIO_PORT        GPIOB
#define MCSTBY_GPIO_CLK         RCC_AHBPeriph_GPIOB

// Left motor GPIOs
#define MCLPWM_PIN              GPIO_Pin_0
#define MCLPWM_GPIO_PORT        GPIOB
#define MCLPWM_GPIO_CLK         RCC_AHBPeriph_GPIOB
#define MCLPWM_SOURCE           GPIO_PinSource0
#define MCLPWM_AF               GPIO_AF_2
#define MCL0_PIN                GPIO_Pin_10
#define MCL0_GPIO_PORT          GPIOB
#define MCL0_GPIO_CLK           RCC_AHBPeriph_GPIOB
#define MCL1_PIN                GPIO_Pin_11
#define MCL1_GPIO_PORT          GPIOB
#define MCL1_GPIO_CLK           RCC_AHBPeriph_GPIOB

// Right motor GPIOs
#define MCRPWM_PIN              GPIO_Pin_1
#define MCRPWM_GPIO_PORT        GPIOB
#define MCRPWM_GPIO_CLK         RCC_AHBPeriph_GPIOB
#define MCRPWM_SOURCE           GPIO_PinSource1
#define MCRPWM_AF               GPIO_AF_2
#define MCR0_PIN                GPIO_Pin_12
#define MCR0_GPIO_PORT          GPIOB
#define MCR0_GPIO_CLK           RCC_AHBPeriph_GPIOB
#define MCR1_PIN                GPIO_Pin_13
#define MCR1_GPIO_PORT          GPIOB
#define MCR1_GPIO_CLK           RCC_AHBPeriph_GPIOB

// Timer
#define MC_TIMER                TIM3
#define MC_TIMER_CLK            RCC_APB1Periph_TIM3
#define MCPWM_PERIOD            1023

/*
 * LEDs definitions
 */

#define LED6_PIN                         GPIO_Pin_15
#define LED6_GPIO_PORT                   GPIOE
#define LED6_GPIO_CLK                    RCC_AHBPeriph_GPIOE

#define LED8_PIN                         GPIO_Pin_14
#define LED8_GPIO_PORT                   GPIOE
#define LED8_GPIO_CLK                    RCC_AHBPeriph_GPIOE

#define LED10_PIN                        GPIO_Pin_13
#define LED10_GPIO_PORT                  GPIOE
#define LED10_GPIO_CLK                   RCC_AHBPeriph_GPIOE

#define LED9_PIN                         GPIO_Pin_12
#define LED9_GPIO_PORT                   GPIOE
#define LED9_GPIO_CLK                    RCC_AHBPeriph_GPIOE

#define LED7_PIN                         GPIO_Pin_11
#define LED7_GPIO_PORT                   GPIOE
#define LED7_GPIO_CLK                    RCC_AHBPeriph_GPIOE

#define LED5_PIN                         GPIO_Pin_10
#define LED5_GPIO_PORT                   GPIOE
#define LED5_GPIO_CLK                    RCC_AHBPeriph_GPIOE

#define LED3_PIN                         GPIO_Pin_9
#define LED3_GPIO_PORT                   GPIOE
#define LED3_GPIO_CLK                    RCC_AHBPeriph_GPIOE

#define LED4_PIN                         GPIO_Pin_8
#define LED4_GPIO_PORT                   GPIOE
#define LED4_GPIO_CLK                    RCC_AHBPeriph_GPIOE


// Ticks
volatile int32_t ticks;

// Instant measurements
volatile int16_t left_count;
volatile int16_t right_count;
volatile int16_t fwd_count;
volatile int16_t rot_count;

// Total measurements
volatile int32_t left_total;
volatile int32_t right_total;
volatile int32_t fwd_total;
volatile int32_t rot_total;

// Control variables
volatile int16_t old_left_encoder;
volatile int16_t old_right_encoder;
volatile int16_t left_encoder;
volatile int16_t right_encoder;
volatile int16_t left_pwm;
volatile int16_t right_pwm;


void init_system(void)
{
	RCC_ClocksTypeDef RCC_Clocks;
	//RCC_SYSCLKConfig(RCC_SYSCLKSource_HSE);
	RCC_GetClocksFreq(&RCC_Clocks);
	SysTick_Config(RCC_Clocks.SYSCLK_Frequency / 1000); // Count event each 1ms
}

void encoders_read(void)
{
	old_left_encoder = left_encoder;
	left_encoder = TIM_GetCounter(ENCL_TIMER) ;
	old_right_encoder = right_encoder;
	right_encoder = -TIM_GetCounter(ENCR_TIMER) ;
	left_count = left_encoder - old_left_encoder;
	right_count = right_encoder - old_right_encoder;
	fwd_count = left_count + right_count;
	rot_count = -(left_count - right_count);
	fwd_total += fwd_count;
	rot_total += rot_count;
	left_total += left_count;
	right_total += right_count;
}

void encoders_reset(void)
{
	__disable_irq();
	old_left_encoder = 0;
	old_right_encoder = 0;
	left_total = 0;
	right_total = 0;
	fwd_total = 0;
	rot_total = 0;
	TIM_SetCounter(ENCL_TIMER, 0);
	TIM_SetCounter(ENCR_TIMER, 0);
	encoders_read();
	__enable_irq();
}

void SysTick_Handler(void)
{
	TIM_OCInitTypeDef  TIM_OCInitStructure;

	ticks++;

	if (!(ticks % 1000)) LED3_GPIO_PORT->ODR ^= LED3_PIN;

	encoders_read();

	if (left_count < 100) {
		left_pwm++;
		if (left_pwm > MCPWM_PERIOD) left_pwm = MCPWM_PERIOD;
	} else {
		left_pwm--;
		if (left_pwm < 0) left_pwm = 0;
	}

	if (right_count > -100) {
		right_pwm++;
		if (right_pwm > MCPWM_PERIOD) right_pwm = MCPWM_PERIOD;
	} else {
		right_pwm--;
		if (right_pwm < 0) right_pwm = 0;
	}

	left_pwm = 100;
	right_pwm = 100;

	TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
	TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
	TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;

	TIM_OCInitStructure.TIM_Pulse = left_pwm;
	TIM_OC3Init(MC_TIMER, &TIM_OCInitStructure);
	TIM_OC3PreloadConfig(MC_TIMER, TIM_OCPreload_Enable);

	TIM_OCInitStructure.TIM_Pulse = right_pwm;
	TIM_OC4Init(MC_TIMER, &TIM_OCInitStructure);
	TIM_OC4PreloadConfig(MC_TIMER, TIM_OCPreload_Enable);
}

void init_motorctrl()
{
	GPIO_InitTypeDef GPIO_InitStructure;
	TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;
	TIM_OCInitTypeDef  TIM_OCInitStructure;
	uint16_t PrescalerValue = 0;

	// Enable clocks
	RCC_APB1PeriphClockCmd(MCSTBY_GPIO_CLK | \
	                       MCL0_GPIO_CLK | \
	                       MCL1_GPIO_CLK | \
	                       MCR0_GPIO_CLK | \
	                       MCR1_GPIO_CLK | \
	                       MC_TIMER_CLK | \
	                       MCLPWM_GPIO_CLK | \
	                       MCRPWM_GPIO_CLK, ENABLE);

	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;

	// Standby pin configuration
	GPIO_InitStructure.GPIO_Pin = MCSTBY_PIN;
	GPIO_Init(MCSTBY_GPIO_PORT, &GPIO_InitStructure);
	GPIO_SetBits(MCSTBY_GPIO_PORT, MCSTBY_PIN);

	// Dir control GPIO configuration
	GPIO_InitStructure.GPIO_Pin = MCL0_PIN;
	GPIO_Init(MCL0_GPIO_PORT, &GPIO_InitStructure);
	GPIO_ResetBits(MCL0_GPIO_PORT, MCL0_PIN);
	GPIO_InitStructure.GPIO_Pin = MCL1_PIN;
	GPIO_Init(MCL1_GPIO_PORT, &GPIO_InitStructure);
	GPIO_SetBits(MCL1_GPIO_PORT, MCL1_PIN);
	GPIO_InitStructure.GPIO_Pin = MCR0_PIN;
	GPIO_Init(MCR0_GPIO_PORT, &GPIO_InitStructure);
	GPIO_ResetBits(MCR0_GPIO_PORT, MCR0_PIN);
	GPIO_InitStructure.GPIO_Pin = MCR1_PIN;
	GPIO_Init(MCR1_GPIO_PORT, &GPIO_InitStructure);
	GPIO_SetBits(MCR1_GPIO_PORT, MCR1_PIN);

	// PWM GPIO Configuration
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;

	GPIO_InitStructure.GPIO_Pin = MCLPWM_PIN;
	GPIO_Init(MCLPWM_GPIO_PORT, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = MCRPWM_PIN;
	GPIO_Init(MCRPWM_GPIO_PORT, &GPIO_InitStructure);

	// Connect PWM pins to AF2
	GPIO_PinAFConfig(MCLPWM_GPIO_PORT, MCLPWM_SOURCE, MCLPWM_AF);
	GPIO_PinAFConfig(MCRPWM_GPIO_PORT, MCRPWM_SOURCE, MCRPWM_AF);

	// Compute the prescaler value
	PrescalerValue = (uint16_t) ((SystemCoreClock / 2) / 28000000) - 1;

	// Time base configuration
	TIM_TimeBaseStructure.TIM_Period = MCPWM_PERIOD;
	TIM_TimeBaseStructure.TIM_Prescaler = PrescalerValue;
	TIM_TimeBaseStructure.TIM_ClockDivision = 0;
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;

	TIM_TimeBaseInit(MC_TIMER, &TIM_TimeBaseStructure);

	TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
	TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
	TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;

	// MC_TIMER PWM Mode configuration: Channel3
	TIM_OCInitStructure.TIM_Pulse = 0;
	TIM_OC3Init(MC_TIMER, &TIM_OCInitStructure);
	TIM_OC3PreloadConfig(MC_TIMER, TIM_OCPreload_Enable);

	// MC_TIMER PWM Mode configuration: Channel4
	TIM_OCInitStructure.TIM_Pulse = 0;
	TIM_OC4Init(MC_TIMER, &TIM_OCInitStructure);
	TIM_OC4PreloadConfig(MC_TIMER, TIM_OCPreload_Enable);

	TIM_ARRPreloadConfig(MC_TIMER, ENABLE);

	// MC_TIMER enable counter
	TIM_Cmd(MC_TIMER, ENABLE);
}

void init_encoders(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;

	// Enable clocks
	RCC_AHBPeriphClockCmd(ENCLA_GPIO_CLK | \
	                      ENCLB_GPIO_CLK | \
	                      ENCRA_GPIO_CLK | \
	                      ENCRB_GPIO_CLK, ENABLE);

	// Configure GPIO pins as inputs with pullups
	GPIO_StructInit(&GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_InitStructure.GPIO_Pin = ENCLA_PIN;
	GPIO_Init(ENCLA_GPIO_PORT, &GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Pin = ENCLB_PIN;
	GPIO_Init(ENCLB_GPIO_PORT, &GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Pin = ENCRA_PIN;
	GPIO_Init(ENCRA_GPIO_PORT, &GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Pin = ENCRB_PIN;
	GPIO_Init(ENCRB_GPIO_PORT, &GPIO_InitStructure);

	// Connect the pins to their Alternate Functions
	GPIO_PinAFConfig(ENCLA_GPIO_PORT, ENCLA_SOURCE, ENCLA_AF);
	GPIO_PinAFConfig(ENCLB_GPIO_PORT, ENCLB_SOURCE, ENCLB_AF);
	GPIO_PinAFConfig(ENCRA_GPIO_PORT, ENCRA_SOURCE, ENCRA_AF);
	GPIO_PinAFConfig(ENCRB_GPIO_PORT, ENCRB_SOURCE, ENCRB_AF);

	// Timer peripheral clock enable
	RCC_APB1PeriphClockCmd(ENCL_TIMER_CLK, ENABLE);
	RCC_APB1PeriphClockCmd(ENCR_TIMER_CLK, ENABLE);

	// Encoder inputs (rising polarity to let it use both edges: x4)
	TIM_EncoderInterfaceConfig(ENCL_TIMER,
	                           TIM_EncoderMode_TI12,
	                           TIM_ICPolarity_Rising,
	                           TIM_ICPolarity_Rising);
	TIM_SetAutoreload(ENCL_TIMER, 0xffff);
	TIM_EncoderInterfaceConfig(ENCR_TIMER,
	                           TIM_EncoderMode_TI12,
	                           TIM_ICPolarity_Rising,
	                           TIM_ICPolarity_Rising);
	TIM_SetAutoreload(ENCR_TIMER, 0xffff);

	// turn on the timer/counters
	TIM_Cmd(ENCL_TIMER, ENABLE);
	TIM_Cmd(ENCR_TIMER, ENABLE);

	encoders_reset();
}

void init_leds(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_StructInit(&GPIO_InitStructure);

	// Enable LEDs' clocks
	RCC_AHBPeriphClockCmd(LED3_GPIO_CLK | \
	                      LED4_GPIO_CLK | \
	                      LED5_GPIO_CLK | \
	                      LED6_GPIO_CLK | \
	                      LED7_GPIO_CLK | \
	                      LED8_GPIO_CLK | \
	                      LED9_GPIO_CLK | \
	                      LED10_GPIO_CLK , ENABLE);

	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;

	// Configure and reset LEDs' pins
	GPIO_InitStructure.GPIO_Pin = LED3_PIN;
	GPIO_Init(LED3_GPIO_PORT, &GPIO_InitStructure);
	GPIO_ResetBits(LED3_GPIO_PORT, LED3_PIN);
	GPIO_InitStructure.GPIO_Pin = LED4_PIN;
	GPIO_Init(LED4_GPIO_PORT, &GPIO_InitStructure);
	GPIO_ResetBits(LED4_GPIO_PORT, LED4_PIN);
	GPIO_InitStructure.GPIO_Pin = LED5_PIN;
	GPIO_Init(LED5_GPIO_PORT, &GPIO_InitStructure);
	GPIO_ResetBits(LED5_GPIO_PORT, LED5_PIN);
	GPIO_InitStructure.GPIO_Pin = LED6_PIN;
	GPIO_Init(LED6_GPIO_PORT, &GPIO_InitStructure);
	GPIO_ResetBits(LED6_GPIO_PORT, LED6_PIN);
	GPIO_InitStructure.GPIO_Pin = LED7_PIN;
	GPIO_Init(LED7_GPIO_PORT, &GPIO_InitStructure);
	GPIO_ResetBits(LED7_GPIO_PORT, LED7_PIN);
	GPIO_InitStructure.GPIO_Pin = LED8_PIN;
	GPIO_Init(LED8_GPIO_PORT, &GPIO_InitStructure);
	GPIO_ResetBits(LED8_GPIO_PORT, LED8_PIN);
	GPIO_InitStructure.GPIO_Pin = LED9_PIN;
	GPIO_Init(LED9_GPIO_PORT, &GPIO_InitStructure);
	GPIO_ResetBits(LED9_GPIO_PORT, LED9_PIN);
	GPIO_InitStructure.GPIO_Pin = LED10_PIN;
	GPIO_Init(LED10_GPIO_PORT, &GPIO_InitStructure);
	GPIO_ResetBits(LED10_GPIO_PORT, LED10_PIN);
}

void init_bluetooth(uint32_t baud_rate)
{
	USART_InitTypeDef USART_InitStructure;
	GPIO_InitTypeDef GPIO_InitStructure;

	// Enable Rx and Tx clocks
	RCC_AHBPeriphClockCmd(BT_TX_GPIO_CLK | BT_RX_GPIO_CLK, ENABLE);

	// Enable USART clock
	RCC_APB1PeriphClockCmd(BT_USART_CLK, ENABLE);

	// Configure USART Tx as alternate function push-pull
	GPIO_InitStructure.GPIO_Pin = BT_TX_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_Init(BT_TX_GPIO_PORT, &GPIO_InitStructure);

	// Configure USART Rx as alternate function push-pull
	GPIO_InitStructure.GPIO_Pin = BT_RX_PIN;
	GPIO_Init(BT_RX_GPIO_PORT, &GPIO_InitStructure);

	// Set alternate functions for Tx and Rx pins
	GPIO_PinAFConfig(BT_TX_GPIO_PORT, BT_TX_GPIO_SOURCE, BT_TX_GPIO_AF);
	GPIO_PinAFConfig(BT_RX_GPIO_PORT, BT_RX_GPIO_SOURCE, BT_RX_GPIO_AF);

	// USART configuration
	USART_InitStructure.USART_BaudRate = baud_rate;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_Init(BT_USART, &USART_InitStructure);

	// Enable USART
	USART_Cmd(BT_USART, ENABLE);
}

void setup(void)
{
	init_system();
	init_leds();
	init_encoders();
	init_motorctrl();
	init_bluetooth(115200);
}

int main(void)
{
	uint16_t c;

	setup();

	while (1) {

		// TODO: should we use DMA for USART transmission and/or reception?

		while ((BT_USART->ISR & USART_FLAG_RXNE) != (uint16_t) RESET) {

			LED10_GPIO_PORT->ODR ^= LED10_PIN;

			c = (uint16_t) (USART2->RDR & (uint16_t) 0x01FF);

			/* Put character on the serial line */
			BT_USART->TDR = (c & (uint16_t) 0x01FF);

			/* Loop until transmit data register is empty */
			while ((BT_USART->ISR & USART_FLAG_TXE) == (uint16_t) RESET);
		}

	}
}
