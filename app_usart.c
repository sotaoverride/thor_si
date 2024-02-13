/*
 * usart.c
 *
 *  Created on: Feb 13, 2024
 *      Author: aatir
 */

#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_gpio.h"
#include "em_usart.h"

#include "bsp.h"

// Size of the buffer for received data
#define BUFLEN  80
/**************************************************************************//**
 * @brief
 *    CMU initialization
 *****************************************************************************/
void initCMU(void)
{
  // Enable clock to GPIO and USART0
  CMU_ClockEnable(cmuClock_GPIO, true);
  CMU_ClockEnable(cmuClock_USART0, true);
}

/**************************************************************************//**
 * @brief
 *    GPIO initialization
 *****************************************************************************/
void initGPIO(void)
{
  // Configure the USART TX pin to the board controller as an output
  GPIO_PinModeSet(BSP_BCC_TXPORT, BSP_BCC_TXPIN, gpioModePushPull, 1);

  // Configure the USART RX pin to the board controller as an input
  GPIO_PinModeSet(BSP_BCC_RXPORT, BSP_BCC_RXPIN, gpioModeInput, 0);

  /*
   * Configure the BCC_ENABLE pin as output and set high.  This enables
   * the virtual COM port (VCOM) connection to the board controller and
   * permits serial port traffic over the debug connection to the host
   * PC.
   *
   * To disable the VCOM connection and use the pins on the kit
   * expansion (EXP) header, comment out the following line.
   */
  GPIO_PinModeSet(BSP_BCC_ENABLE_PORT, BSP_BCC_ENABLE_PIN, gpioModePushPull, 1);
}

/**************************************************************************//**
 * @brief
 *    USART0 initialization
 *****************************************************************************/
void initUSART0(void)
{
  // Default asynchronous initializer (115.2 Kbps, 8N1, no flow control)
  USART_InitAsync_TypeDef init = USART_INITASYNC_DEFAULT;

  // Route USART0 TX and RX to the board controller TX and RX pins
  GPIO->USARTROUTE[0].TXROUTE = (BSP_BCC_TXPORT << _GPIO_USART_TXROUTE_PORT_SHIFT)
            | (BSP_BCC_TXPIN << _GPIO_USART_TXROUTE_PIN_SHIFT);
  GPIO->USARTROUTE[0].RXROUTE = (BSP_BCC_RXPORT << _GPIO_USART_RXROUTE_PORT_SHIFT)
            | (BSP_BCC_RXPIN << _GPIO_USART_RXROUTE_PIN_SHIFT);

  // Enable RX and TX signals now that they have been routed
  GPIO->USARTROUTE[0].ROUTEEN = GPIO_USART_ROUTEEN_RXPEN | GPIO_USART_ROUTEEN_TXPEN;

  // Configure and enable USART0
  USART_InitAsync(USART0, &init);
}

/**************************************************************************//**
 * @brief
 *    usart function
 *****************************************************************************/
int usart_func(void)
{
  uint8_t buffer[BUFLEN];
  uint32_t i, j;

  // Chip errata
  CHIP_Init();

  // Initialize GPIO and USART0
  initCMU();
  initGPIO();
  initUSART0();

  while (1)
  {
    // Zero out buffer
    for (i = BUFLEN; i > 0; --i)
      buffer[i] = 0;

    // Receive BUFLEN characters unless a new line is received first
    do
    {
      // Wait for a character
      buffer[i] = USART_Rx(USART0);

      // Exit loop on new line
      if (buffer[i] != '\r')
        i++;
      else
        break;
    }
    while (i < BUFLEN);

    // Output received characters
    for (j = 0; j < i; j++)
      USART_Tx(USART0, buffer[j]);
  }
}
