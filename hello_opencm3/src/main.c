#include <stdio.h>
#include <unistd.h>
#include <libopencm3/stm32/flash.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/rcc.h>

#define LED_GPIO_PORT GPIOB
#define LED_GPIO_PIN  GPIO13
#define LED_RCC       RCC_GPIOB


static void clock_setup (void)
{
    rcc_osc_on(RCC_HSI16);
    
    flash_prefetch_enable();
    flash_set_ws(4);
    flash_dcache_enable();
    flash_icache_enable();
    /* 16MHz / 4 = > 4 * 40 = 160MHz VCO => 80MHz main pll  */
    rcc_set_main_pll(RCC_PLLCFGR_PLLSRC_HSI16, 4, 40,
            0, 0, RCC_PLLCFGR_PLLR_DIV2);
    rcc_osc_on(RCC_PLL);
    /* either rcc_wait_for_osc_ready() or do other things */

    /* Enable clocks for the ports we need */
    rcc_periph_clock_enable(LED_RCC);

    rcc_set_sysclk_source(RCC_CFGR_SW_PLL); /* careful with the param here! */
    rcc_wait_for_sysclk_status(RCC_PLL);
}


int main (void)
{
    clock_setup();

    // Set LED as output
    gpio_mode_setup(LED_GPIO_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, LED_GPIO_PIN);

    // Toggle led
    while (1) {
        gpio_toggle(LED_GPIO_PORT, LED_GPIO_PIN);
        for (int i = 0; i < 5000000; i++);
    }

    return 0;
}
