## CUSTOM PCB MAKEFILE

## --------------------------------------------------------------------------------

## USER DEFINITIONS

# Target binary
TARGET = main

# Build directory
BUILD_DIR = build
# Source directory
SRC_DIR = src
# Includes directory
INC_DIR = inc

# libopencm3 path
OPENCM3_DIR := ./libopencm3

# Linker script
LDSCRIPT = linker_stm32l452.ld
STARTUP = startup_stm32l452

# MCU-specific lib
LIBNAME  = opencm3_stm32l4
DEFS    += -DSTM32L4

# Architecture-specific flags
FP_FLAGS   ?= -mfloat-abi=hard -mfpu=fpv4-sp-d16
ARCH_FLAGS  = -mthumb -mcpu=cortex-m4 $(FP_FLAGS)

# Sources
SRC = $(wildcard $(SRC_DIR)/*.c)
# Includes
INC = $(wildcard $(INC_DIR)/*.h)
# Objects
OBJ = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRC))


## --------------------------------------------------------------------------------

## COMPILER CONFIGURATION

# Basic toolchain
PREFIX  ?= arm-none-eabi
CC      := $(PREFIX)-gcc
CPP     := $(PREFIX)-g++
LD      := $(PREFIX)-gcc
AR      := $(PREFIX)-ar
AS      := $(PREFIX)-as
SIZE    := $(PREFIX)-size
OBJCOPY := $(PREFIX)-objcopy
OBJDUMP := $(PREFIX)-objdump
GDB     := $(PREFIX)-gdb
STFLASH	 = $(shell which st-flash)
OPT     := -O3
DEBUG   := -ggdb3
CSTD    ?= -std=c99

# C++ flags
CFLAGS += $(OPT) $(CXXSTD) $(DEBUG)
CFLAGS += $(ARCH_FLAGS)
CFLAGS += -Wall -Wextra -Wundef -g -fdata-sections -ffunction-sections
CFLAGS += -nostdlib
CFLAGS += $(DEFS)

# Linker flags
LDFLAGS += --static -nostartfiles
LDFLAGS += -T$(LDSCRIPT)
LDFLAGS += $(ARCH_FLAGS) $(DEBUG)
LDFLAGS += -Wl,-Map=$(BUILD_DIR)/$(TARGET).map -Wl,--cref
LDFLAGS += -Wl,--gc-sections
ifeq ($(V),99)
LDFLAGS += -Wl,--print-gc-sections
endif

# Used libraries
DEFS    += -I$(OPENCM3_DIR)/include
LDFLAGS += -L$(OPENCM3_DIR)/lib
LDLIBS  += -l$(LIBNAME)
LDLIBS  += -Wl,--start-group -lc -lm -lgcc -lnosys -Wl,--end-group

## --------------------------------------------------------------------------------

## TARGET RULE SETUP

# ALL: create build dir, generate binaries, then show size
all: elf hex bin size

# Various binaries
elf:   libopencm3 $(BUILD_DIR) $(BUILD_DIR)/$(TARGET).elf
bin:   $(BUILD_DIR)/$(TARGET).bin
hex:   $(BUILD_DIR)/$(TARGET).hex
list:  $(BUILD_DIR)/$(TARGET).list

# .bin binary
$(BUILD_DIR)/$(TARGET).bin: elf
	$(OBJCOPY) -Obinary $(BUILD_DIR)/$(TARGET).elf $@

# .hex binary
$(BUILD_DIR)/$(TARGET).hex: elf
	$(OBJCOPY) -Oihex $(BUILD_DIR)/$(TARGET).elf $@

# .list file
$(BUILD_DIR)/$(TARGET).list: elf
	$(OBJDUMP) -S $(BUILD_DIR)/$(TARGET).elf > $@

# .elf & .map files
$(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).map: $(BUILD_DIR)/$(STARTUP).o $(OBJ) $(LDSCRIPT)
	$(LD) $(LDFLAGS) $(BUILD_DIR)/$(STARTUP).o $(OBJ) $(LDLIBS) -o $@

# .o/.c files
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# startup file
$(BUILD_DIR)/$(STARTUP).o: $(STARTUP).c
	$(CC) $(CFLAGS) -c $< -o $@

# .c/.h files
$(SRC_DIR)/%.c: $(INC)

# Build dir creation
$(BUILD_DIR):
	@mkdir $(BUILD_DIR)/

# Pull and build libopencm3 if not already built
libopencm3:
	@git submodule init
	@git submodule update
	@cd libopencm3 && make

# Size info (.elf)
size: elf
	$(SIZE) $(BUILD_DIR)/$(TARGET).elf

# Flash target
flash: hex
	$(STFLASH) --format ihex write $(BUILD_DIR)/$(TARGET).hex

# Clean
clean:
	rm -rf $(BUILD_DIR)


.PHONY: all clean elf hex bin size flash libopencm3
.SUFFIXES: .elf .bin .hex .srec .list .map
