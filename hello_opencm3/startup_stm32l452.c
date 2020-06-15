#include <stdint.h>

extern uint32_t _etext;
extern uint32_t _sdata;
extern uint32_t _edata;
extern uint32_t _sbss;
extern uint32_t _ebss;

#define START_RAM   0x20000000U
#define SIZE_RAM    (160 * 1024) // 160K

#define START_STACK ((START_RAM) + (SIZE_RAM))

int main(void);

void Reset_Handler(void);
void Default_Handler(void);

void NMI_Handler(void)                  __attribute__((weak, alias("Default_Handler")));
void HardFault_Handler(void)            __attribute__((weak, alias("Default_Handler")));
void MemManage_Handler(void)            __attribute__((weak, alias("Default_Handler")));
void BusFault_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void UsageFault_Handler(void)           __attribute__((weak, alias("Default_Handler")));
void SVCall_Handler(void)               __attribute__((weak, alias("Default_Handler")));
void Debug_Handler(void)                __attribute__((weak, alias("Default_Handler")));
void PendSV_Handler(void)               __attribute__((weak, alias("Default_Handler")));
void SysTick_Handler(void)              __attribute__((weak, alias("Default_Handler")));

void WWDG_Handler(void)                 __attribute__((weak, alias("Default_Handler")));
void PVD_PVM_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void RTC_TAMP_STAMP_Handler(void)       __attribute__((weak, alias("Default_Handler")));
void RTC_WKUP_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void FLASH_Handler(void)                __attribute__((weak, alias("Default_Handler")));
void RCC_Handler(void)                  __attribute__((weak, alias("Default_Handler")));
void EXTI0_Handler(void)                __attribute__((weak, alias("Default_Handler")));
void EXTI1_Handler(void)                __attribute__((weak, alias("Default_Handler")));
void EXTI2_Handler(void)                __attribute__((weak, alias("Default_Handler")));
void EXTI3_Handler(void)                __attribute__((weak, alias("Default_Handler")));
void EXTI4_Handler(void)                __attribute__((weak, alias("Default_Handler")));
void DMA1_CH1_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void DMA1_CH2_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void DMA1_CH3_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void DMA1_CH4_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void DMA1_CH5_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void DMA1_CH6_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void DMA1_CH7_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void ADC1_2_Handler(void)               __attribute__((weak, alias("Default_Handler")));
void CAN1_TX_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void CAN1_RX_0_Handler(void)            __attribute__((weak, alias("Default_Handler")));
void CAN1_RX_1_Handler(void)            __attribute__((weak, alias("Default_Handler")));
void CAN1_SCE_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void EXTI9_5_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void TIM1_BRK_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void TIM1_UP_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void TIM1_TRG_COM_Handler(void)         __attribute__((weak, alias("Default_Handler")));
void TIM1_CC_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void TIM2_Handler(void)                 __attribute__((weak, alias("Default_Handler")));
void TIM3_Handler(void)                 __attribute__((weak, alias("Default_Handler")));
void I2C1_EV_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void I2C1_ER_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void I2C2_EV_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void I2C2_ER_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void SPI1_Handler(void)                 __attribute__((weak, alias("Default_Handler")));
void SPI2_Handler(void)                 __attribute__((weak, alias("Default_Handler")));
void USART1_Handler(void)               __attribute__((weak, alias("Default_Handler")));
void USART2_Handler(void)               __attribute__((weak, alias("Default_Handler")));
void USART3_Handler(void)               __attribute__((weak, alias("Default_Handler")));
void EXTI15_10_Handler(void)            __attribute__((weak, alias("Default_Handler")));
void RTC_ALARM_Handler(void)            __attribute__((weak, alias("Default_Handler")));
void SDMMC1_Handler(void)               __attribute__((weak, alias("Default_Handler")));
void SPI3_Handler(void)                 __attribute__((weak, alias("Default_Handler")));
void UART4_Handler(void)                __attribute__((weak, alias("Default_Handler")));
void TIM6_DACUNDER_Handler(void)        __attribute__((weak, alias("Default_Handler")));
void DMA2_CH1_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void DMA2_CH2_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void DMA2_CH3_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void DMA2_CH4_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void DMA2_CH5_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void DFSDM1_FLT0_Handler(void)          __attribute__((weak, alias("Default_Handler")));
void DFSDM1_FLT1_Handler(void)          __attribute__((weak, alias("Default_Handler")));
void COMP_Handler(void)                 __attribute__((weak, alias("Default_Handler")));
void LPTIM1_Handler(void)               __attribute__((weak, alias("Default_Handler")));
void LPTIM2_Handler(void)               __attribute__((weak, alias("Default_Handler")));
void USB_FS_Handler(void)               __attribute__((weak, alias("Default_Handler")));
void DMA2_CH6_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void DMA2_CH7_Handler(void)             __attribute__((weak, alias("Default_Handler")));
void LPUART1_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void QUADSPI_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void I2C3_EV_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void I2C3_ER_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void SAI1_Handler(void)                 __attribute__((weak, alias("Default_Handler")));
void TSC_Handler(void)                  __attribute__((weak, alias("Default_Handler")));
void RNG_Handler(void)                  __attribute__((weak, alias("Default_Handler")));
void FPU_Handler(void)                  __attribute__((weak, alias("Default_Handler")));
void CRS_Handler(void)                  __attribute__((weak, alias("Default_Handler")));
void I2C4_EV_Handler(void)              __attribute__((weak, alias("Default_Handler")));
void I2C4_ER_Handler(void)              __attribute__((weak, alias("Default_Handler")));

uint32_t vectorTable[] __attribute__((section(".isr_vector"))) = {
    (uint32_t)START_STACK,
    (uint32_t)Reset_Handler,
    (uint32_t)NMI_Handler,
    (uint32_t)HardFault_Handler,
    (uint32_t)MemManage_Handler,
    (uint32_t)BusFault_Handler,
    (uint32_t)UsageFault_Handler,
    0,
    (uint32_t)SVCall_Handler,
    (uint32_t)Debug_Handler,
    0,
    (uint32_t)PendSV_Handler,
    (uint32_t)SysTick_Handler,
    (uint32_t)WWDG_Handler,
    (uint32_t)PVD_PVM_Handler,
    (uint32_t)RTC_TAMP_STAMP_Handler,
    (uint32_t)RTC_WKUP_Handler,
    (uint32_t)FLASH_Handler,
    (uint32_t)RCC_Handler,
    (uint32_t)EXTI0_Handler,
    (uint32_t)EXTI1_Handler,
    (uint32_t)EXTI2_Handler,
    (uint32_t)EXTI3_Handler,
    (uint32_t)EXTI4_Handler,
    (uint32_t)DMA1_CH1_Handler,
    (uint32_t)DMA1_CH2_Handler,
    (uint32_t)DMA1_CH3_Handler,
    (uint32_t)DMA1_CH4_Handler,
    (uint32_t)DMA1_CH5_Handler,
    (uint32_t)DMA1_CH6_Handler,
    (uint32_t)DMA1_CH7_Handler,
    (uint32_t)ADC1_2_Handler,
    (uint32_t)CAN1_TX_Handler,
    (uint32_t)CAN1_RX_0_Handler,
    (uint32_t)CAN1_RX_1_Handler,
    (uint32_t)CAN1_SCE_Handler,
    (uint32_t)EXTI9_5_Handler,
    (uint32_t)TIM1_BRK_Handler,
    (uint32_t)TIM1_UP_Handler,
    (uint32_t)TIM1_TRG_COM_Handler,
    (uint32_t)TIM1_CC_Handler,
    (uint32_t)TIM2_Handler,
    (uint32_t)TIM3_Handler,
    0,
    (uint32_t)I2C1_EV_Handler,
    (uint32_t)I2C1_ER_Handler,
    (uint32_t)I2C2_EV_Handler,
    (uint32_t)I2C2_ER_Handler,
    (uint32_t)SPI1_Handler,
    (uint32_t)SPI2_Handler,
    (uint32_t)USART1_Handler,
    (uint32_t)USART2_Handler,
    (uint32_t)USART3_Handler,
    (uint32_t)EXTI15_10_Handler,
    (uint32_t)RTC_ALARM_Handler,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    (uint32_t)SDMMC1_Handler,
    0,
    (uint32_t)SPI3_Handler,
    (uint32_t)UART4_Handler,
    0,
    (uint32_t)TIM6_DACUNDER_Handler,
    0,
    (uint32_t)DMA2_CH1_Handler,
    (uint32_t)DMA2_CH2_Handler,
    (uint32_t)DMA2_CH3_Handler,
    (uint32_t)DMA2_CH4_Handler,
    (uint32_t)DMA2_CH5_Handler,
    (uint32_t)DFSDM1_FLT0_Handler,
    (uint32_t)DFSDM1_FLT1_Handler,
    0,
    (uint32_t)COMP_Handler,
    (uint32_t)LPTIM1_Handler,
    (uint32_t)LPTIM2_Handler,
    (uint32_t)USB_FS_Handler,
    (uint32_t)DMA2_CH6_Handler,
    (uint32_t)DMA2_CH7_Handler,
    (uint32_t)LPUART1_Handler,
    (uint32_t)QUADSPI_Handler,
    (uint32_t)I2C3_EV_Handler,
    (uint32_t)I2C3_ER_Handler,
    (uint32_t)SAI1_Handler,
    0,
    0,
    (uint32_t)TSC_Handler,
    0,
    0,
    (uint32_t)RNG_Handler,
    (uint32_t)FPU_Handler,
    (uint32_t)CRS_Handler,
    (uint32_t)I2C4_EV_Handler,
    (uint32_t)I2C4_ER_Handler
};

void Default_Handler(void)
{
    while (1);
}

void Reset_Handler(void)
{
    uint32_t data_size = (uint32_t)&_edata - (uint32_t)&_sdata;
    uint32_t bss_size = (uint32_t)&_ebss - (uint32_t)&_sbss;

    uint8_t *p_data_ram     = (uint8_t*)&_sdata;
    uint8_t *p_data_flash   = (uint8_t*)&_etext;

    uint8_t *p_bss          = (uint8_t*)&_sbss;

    // Copy .data to ram
    for (uint32_t i = 0; i < data_size; i++)
    {
        p_data_ram[i] = p_data_flash[i];
    }

    // Initialize .bss to 0
    for (uint32_t i = 0; i < bss_size; i++)
    {
        p_bss[i] = 0U;
    }

    main();
}
