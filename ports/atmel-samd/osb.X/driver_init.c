/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */

#include "driver_init.h"
#include <peripheral_clk_config.h>
#include <utils.h>
#include <hal_init.h>
#include <hpl_gclk_base.h>
#include <hpl_pm_base.h>

#include <hpl_adc_base.h>
#include <hpl_rtc_base.h>

struct spi_m_sync_descriptor SPI_0;
struct timer_descriptor      TIMER_0;

struct adc_sync_descriptor ADC_0;

struct flash_descriptor FLASH_0;

struct i2c_m_sync_desc I2C_0;

struct usart_sync_descriptor USART_0;

struct pwm_descriptor PWM_0;

struct i2s_c_sync_desc I2S_0_0;

void ADC_0_PORT_init(void)
{
}

void ADC_0_CLOCK_init(void)
{
	_pm_enable_bus_clock(PM_BUS_APBC, ADC);
	_gclk_enable_channel(ADC_GCLK_ID, CONF_GCLK_ADC_SRC);
}

void ADC_0_init(void)
{
	ADC_0_CLOCK_init();
	ADC_0_PORT_init();
	adc_sync_init(&ADC_0, ADC, (void *)NULL);
}

void EXTERNAL_IRQ_0_init(void)
{
	_gclk_enable_channel(EIC_GCLK_ID, CONF_GCLK_EIC_SRC);

	ext_irq_init();
}

void FLASH_0_CLOCK_init(void)
{

	_pm_enable_bus_clock(PM_BUS_APBB, NVMCTRL);
}

void FLASH_0_init(void)
{
	FLASH_0_CLOCK_init();
	flash_init(&FLASH_0, NVMCTRL);
}

void I2C_0_PORT_init(void)
{

	gpio_set_pin_pull_mode(PA08,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(PA08, PINMUX_PA08C_SERCOM0_PAD0);

	gpio_set_pin_pull_mode(PA09,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(PA09, PINMUX_PA09C_SERCOM0_PAD1);
}

void I2C_0_CLOCK_init(void)
{
	_pm_enable_bus_clock(PM_BUS_APBC, SERCOM0);
	_gclk_enable_channel(SERCOM0_GCLK_ID_CORE, CONF_GCLK_SERCOM0_CORE_SRC);
	_gclk_enable_channel(SERCOM0_GCLK_ID_SLOW, CONF_GCLK_SERCOM0_SLOW_SRC);
}

void I2C_0_init(void)
{
	I2C_0_CLOCK_init();
	i2c_m_sync_init(&I2C_0, SERCOM0);
	I2C_0_PORT_init();
}

void SPI_0_PORT_init(void)
{

	gpio_set_pin_level(PA00,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(PA00, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PA00, PINMUX_PA00D_SERCOM1_PAD0);

	gpio_set_pin_level(PA01,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(PA01, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PA01, PINMUX_PA01D_SERCOM1_PAD1);

	// Set pin direction to input
	gpio_set_pin_direction(PA18, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(PA18,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(PA18, PINMUX_PA18C_SERCOM1_PAD2);
}

void SPI_0_CLOCK_init(void)
{
	_pm_enable_bus_clock(PM_BUS_APBC, SERCOM1);
	_gclk_enable_channel(SERCOM1_GCLK_ID_CORE, CONF_GCLK_SERCOM1_CORE_SRC);
}

void SPI_0_init(void)
{
	SPI_0_CLOCK_init();
	spi_m_sync_init(&SPI_0, SERCOM1);
	SPI_0_PORT_init();
}

void USART_0_PORT_init(void)
{

	gpio_set_pin_function(PA12, PINMUX_PA12C_SERCOM2_PAD0);

	gpio_set_pin_function(PA13, PINMUX_PA13C_SERCOM2_PAD1);
}

void USART_0_CLOCK_init(void)
{
	_pm_enable_bus_clock(PM_BUS_APBC, SERCOM2);
	_gclk_enable_channel(SERCOM2_GCLK_ID_CORE, CONF_GCLK_SERCOM2_CORE_SRC);
}

void USART_0_init(void)
{
	USART_0_CLOCK_init();
	usart_sync_init(&USART_0, SERCOM2, (void *)NULL);
	USART_0_PORT_init();
}

void delay_driver_init(void)
{
	delay_init(SysTick);
}

/**
 * \brief Timer initialization function
 *
 * Enables Timer peripheral, clocks and initializes Timer driver
 */
static void TIMER_0_init(void)
{
	_pm_enable_bus_clock(PM_BUS_APBA, RTC);
	_gclk_enable_channel(RTC_GCLK_ID, CONF_GCLK_RTC_SRC);
	timer_init(&TIMER_0, RTC, _rtc_get_timer());
}

void PWM_0_PORT_init(void)
{
}

void PWM_0_CLOCK_init(void)
{
	_pm_enable_bus_clock(PM_BUS_APBC, TC3);
	_gclk_enable_channel(TC3_GCLK_ID, CONF_GCLK_TC3_SRC);
}

void PWM_0_init(void)
{
	PWM_0_CLOCK_init();
	PWM_0_PORT_init();
	pwm_init(&PWM_0, TC3, _tc_get_pwm());
}

void EVENT_SYSTEM_0_init(void)
{

	event_system_init();
}

void I2S_0_PORT_init(void)
{
}

void I2S_0_CLOCK_init(void)
{
	_pm_enable_bus_clock(PM_BUS_APBC, I2S);
	_gclk_enable_channel(I2S_GCLK_ID_0, CONF_GCLK_I2S_SRC_0);
}

void I2S_0_init(void)
{
	I2S_0_CLOCK_init();
	i2s_c_sync_init(&I2S_0_0, I2S, I2S_C_IFACE_0);
	i2s_c_sync_enable(&I2S_0_0);
	I2S_0_PORT_init();
}

void USB_0_PORT_init(void)
{

	gpio_set_pin_direction(PA24,
	                       // <y> Pin direction
	                       // <id> pad_direction
	                       // <GPIO_DIRECTION_OFF"> Off
	                       // <GPIO_DIRECTION_IN"> In
	                       // <GPIO_DIRECTION_OUT"> Out
	                       GPIO_DIRECTION_OUT);

	gpio_set_pin_level(PA24,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	gpio_set_pin_pull_mode(PA24,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(PA24,
	                      // <y> Pin function
	                      // <id> pad_function
	                      // <i> Auto : use driver pinmux if signal is imported by driver, else turn off function
	                      // <PINMUX_PA24G_USB_DM"> Auto
	                      // <GPIO_PIN_FUNCTION_OFF"> Off
	                      // <GPIO_PIN_FUNCTION_A"> A
	                      // <GPIO_PIN_FUNCTION_B"> B
	                      // <GPIO_PIN_FUNCTION_C"> C
	                      // <GPIO_PIN_FUNCTION_D"> D
	                      // <GPIO_PIN_FUNCTION_E"> E
	                      // <GPIO_PIN_FUNCTION_F"> F
	                      // <GPIO_PIN_FUNCTION_G"> G
	                      // <GPIO_PIN_FUNCTION_H"> H
	                      PINMUX_PA24G_USB_DM);

	gpio_set_pin_direction(PA25,
	                       // <y> Pin direction
	                       // <id> pad_direction
	                       // <GPIO_DIRECTION_OFF"> Off
	                       // <GPIO_DIRECTION_IN"> In
	                       // <GPIO_DIRECTION_OUT"> Out
	                       GPIO_DIRECTION_OUT);

	gpio_set_pin_level(PA25,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	gpio_set_pin_pull_mode(PA25,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(PA25,
	                      // <y> Pin function
	                      // <id> pad_function
	                      // <i> Auto : use driver pinmux if signal is imported by driver, else turn off function
	                      // <PINMUX_PA25G_USB_DP"> Auto
	                      // <GPIO_PIN_FUNCTION_OFF"> Off
	                      // <GPIO_PIN_FUNCTION_A"> A
	                      // <GPIO_PIN_FUNCTION_B"> B
	                      // <GPIO_PIN_FUNCTION_C"> C
	                      // <GPIO_PIN_FUNCTION_D"> D
	                      // <GPIO_PIN_FUNCTION_E"> E
	                      // <GPIO_PIN_FUNCTION_F"> F
	                      // <GPIO_PIN_FUNCTION_G"> G
	                      // <GPIO_PIN_FUNCTION_H"> H
	                      PINMUX_PA25G_USB_DP);
}

/* The USB module requires a GCLK_USB of 48 MHz ~ 0.25% clock
 * for low speed and full speed operation. */
#if (CONF_GCLK_USB_FREQUENCY > (48000000 + 48000000 / 400)) || (CONF_GCLK_USB_FREQUENCY < (48000000 - 48000000 / 400))
#warning USB clock should be 48MHz ~ 0.25% clock, check your configuration!
#endif

void USB_0_CLOCK_init(void)
{

	_pm_enable_bus_clock(PM_BUS_APBB, USB);
	_pm_enable_bus_clock(PM_BUS_AHB, USB);
	_gclk_enable_channel(USB_GCLK_ID, CONF_GCLK_USB_SRC);
}

void USB_0_init(void)
{
	USB_0_CLOCK_init();
	usb_d_init();
	USB_0_PORT_init();
}

void system_init(void)
{
	init_mcu();

	ADC_0_init();
	EXTERNAL_IRQ_0_init();

	FLASH_0_init();

	I2C_0_init();

	SPI_0_init();

	USART_0_init();

	delay_driver_init();

	TIMER_0_init();

	PWM_0_init();

	EVENT_SYSTEM_0_init();

	I2S_0_init();

	USB_0_init();
}
