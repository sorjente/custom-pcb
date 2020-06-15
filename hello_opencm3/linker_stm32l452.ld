/* define the first executable instruction in an output file */
ENTRY(Reset_Handler)

_start_ram = 0x20000000;
_size_ram = 0x28000;

_start_flash = 0x08000000;
_size_flash = 0x80000;

MEMORY
{
    RAM (rwx) : ORIGIN = _start_ram, LENGTH = _size_ram
    FLASH (rx) : ORIGIN = _start_flash, LENGTH = _size_flash
}

SECTIONS
{
    /* the startup code goes first into FLASH */
    .text :
    {
        . = ALIGN(8);
        _stext = .; /* start of flash memory region (VMA) */
        KEEP(*(.isr_vector)) /* force linker to keep this because it won't necessarily be referenced in the .o files */
        *(.text)
        *(.rodata)
        . = ALIGN(8);
        _etext = .; /* end of flash memory region (VMA + output size) */
    } >FLASH

    .data :
    {
        . = ALIGN(8);
        _sdata = .;
        *(.data)
        . = ALIGN(8);
        _edata = .;
    } >RAM AT> FLASH /* RAM needs to know the physical address of symbols defined in .data sections */

    .bss :
    {
        . = ALIGN(8);
        _sbss = .;
        *(.bss)
        *(COMMON)
        . = ALIGN(8);
        _ebss = .;
    } >RAM
}
