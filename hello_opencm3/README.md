# hello_opencm3

This is a simple blinky program whose aim is to test out minimal opencm3 code as well as a custom linker script/startup
program pair.


## Linker script (linker_stm32l452.ld)

This is the script that's fed to the linker and that maps code and data sections to the FLASH and RAM memories on the
MCU. There are some sections we need to account for:

1. `.text`: this entire area goes into the FLASH memory, and can only be read or executed.
    1. `.isr_vector`: the vector table which is essential to the MCU's startup. It's defined in the startup file, and
       its spec can be found on the [STM32L4 Reference Manual](https://www.st.com/resource/en/reference_manual/\
       dm00151940-stm32l41xxx42xxx43xxx44xxx45xxx46xxx-advanced-armbased-32bit-mcus-stmicroelectronics.pdf).
        We need to wrap it with `KEEP()` because it's not explicitly referenced anywhere else in the program, but it
        must be kept and stored at the start of the FLASH memory.
    2. `.text`: the program instructions for our firmware.
    3. `.rodata`: constants of our firmware (if any).
2. `.data`: the non-constant global variables of our firmware, which need to be stored in the FLASH memory but also
            need to be copied to the RAM during reset (see the [startup file](#startup-file-startup_stm32l452c))
3. `.bss`: the zero-initialized global variables of our firmware, which need to be stored in RAM (their values don't
           need to be "remembered" by the FLASH).


## Startup file (startup_stm32l452.c)

This file contains the vector table for the interrupts, as well as the definition of the `Default_Handler` (which just
hangs in case it's called) and the `Reset_Handler`.

The `Reset_Handler` does 3 things:

1. Copies the `.data` section from the FLASH to the RAM
2. Initializes the `.bss` section in RAM to `0`
3. Calls `main()`

This function is called at each reset, as its name implies, and it's essential in order for the firmware to work as
intended.


## Blinky program (src/main.c)

The main firmware of this example is just a simple blinky program, whose aim is to toggle a LED on and off at a certain
frequency. In the NUCLEO-L452RE-P board used for this example, the LED we want to toggle is found on the pin `PB13`.

Before toggling the LED, the clock (and also the FLASH memory) need to be configured. The aim is to have the clock run
at its maximum frequency (80 MHz), so as per the documentation ([RM0394, section 3.3.3](https://www.st.com/content/ccc/\
resource/technical/document/reference_manual/group0/b0/ac/3e/8f/6d/21/47/af/DM00151940/files/DM00151940.pdf/\
jcr:content/translations/en.DM00151940.pdf)) the FLASH's wait states need to be set at 4. Since we're configuring the
FLASH, we can also enable prefetch and instruction/data cache, in order to get the maximum performance.

Concerning the clock, the easiest solution to achieve maximum speed is to use the internal oscillator (HSI), which runs
at 16 MHz. As explained in the documentation ([DS11912, section 3.11, fig. 4](https://www.st.com/resource/en/datasheet/\
stm32l452re.pdf)), we need to use the main PLL in order to ramp up the speed to 80 MHz. This PLL produces a main output
clock whose frequency is given by the following formula:

```
PLLCLK = PLL_in / M * N / R
```

`PLL_in` is the input fed to the PLL (HSI in our case). Since `R` needs to be equal to at least 2 (the configurations
to choose from are 2, 4, 6 and 8) we need `16 / M * N = 160`. If we set `M = 4` and `N = 40`, this condition is
satisfied, and thus a 80 MHz clock is produced.

It should be noted that the PLL has two more outputs, one for powering USB, RNG and SDMMC, and one for powering SAI. 
Since we are not using these peripherals, we can deactivate these clocks by setting their dividers (equivalents of `R`
in the case of `PLLCLK`) to `0`. Finally, we need to enable the PLL and tell SysClk to use it as its source.

Once we enable clock feed to the port of the LED pin (`GPIOB`) and configure it in output mode, we can toggle the pin
to turn on/off the LED. A simple empty for loop is added to delay each toggle for the LED blinking to be visible.
