#include <stdio.h>
#include <stdint.h>
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/flash.h>
#include <libopencm3/stm32/gpio.h>

#define LED_GPIO_PORT GPIOB
#define LED_GPIO_PIN  GPIO13
#define LED_RCC       RCC_GPIOB


/**
 * @brief Setups clock (80 MHz) and flash memory.
 */
static void clock_and_flash_setup (void)
{
    // Turn on High Speed Internal oscillator @ 16 MHz 
    rcc_osc_on(RCC_HSI16);
    
    // Enable prefetch to decrease instruction load/execution times
    // This needs to be done under specific clock settings, so it must be done before the clock is at 80 MHz
    flash_prefetch_enable();
    // Set flash wait states to 4, because clock will be @ 80 MHz
    // See manual RM0394/DM00151940, section 3.3.3 (page 79)
    flash_set_ws(4);
    // Enable data & instruction cache
    flash_dcache_enable();
    flash_icache_enable();

    // STM32L452 datasheet, page 36 (https://www.st.com/resource/en/datasheet/stm32l452re.pdf)
    // PLLSAI1CLK = PLL_in / M * N / P
    // PLL48M1CLK = PLL_in / M * N / Q
    // PLLCLK     = PLL_in / M * N / R
    // 
    // We are interested in PLLCLK. To get 80 MHz (the MCU's max frequency), we can supply HSI to the PLL and we have
    // to set R to at least 2. Given those two, we need to set M to 4 and N to 40 in order to get 80 MHz in the output:
    // PLLCLK = 16 MHz / 4 * 40 / 2 = 80 MHz
    // 
    // Setting P and Q to 0 probably just deactivates those clocks. PLLSAI1CLK produces a clock for the SAI peripheral,
    // while PLL48M1CLK produces a clock for USB. Since we are not using those, we can deactivate the clocks.
    rcc_set_main_pll(RCC_PLLCFGR_PLLSRC_HSI16, 4, 40, 0, 0, RCC_PLLCFGR_PLLR_DIV2);
    // Turn PLL on
    rcc_osc_on(RCC_PLL);

    // Enable clock for the LED GPIO Port
    rcc_periph_clock_enable(LED_RCC);

    // Set SysClk source to be the PLL we just configured
    rcc_set_sysclk_source(RCC_CFGR_SW_PLL);
    rcc_wait_for_sysclk_status(RCC_PLL);
}


int main (void)
{
    // Setup clock and flash
    clock_and_flash_setup();

    // Set LED as output
    gpio_mode_setup(LED_GPIO_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, LED_GPIO_PIN);

    // Toggle led
    while (1) {
        gpio_toggle(LED_GPIO_PORT, LED_GPIO_PIN);
        for (int i = 0; i < 5000000; i++);
    }

    return 0;
}
