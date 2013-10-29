################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := cs-rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
armos.hex \

SECONDARY_LIST += \
armos.lst \

SECONDARY_SIZE += \
armos.siz \


# All Target
all: armos.elf secondary-outputs

# Tool invocations
armos.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Windows GCC C Linker (Sourcery Lite Bare)'
	arm-none-eabi-gcc -Xlinker --gc-sections -Wl,-Map,"armos.map" -mcpu=cortex-m3 -mthumb -o "armos.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

armos.hex: armos.elf
	@echo 'Invoking: ARM Windows GNU Create Flash Image (Sourcery Lite Bare)'
	arm-none-eabi-objcopy -O ihex "armos.elf"  "armos.hex"
	@echo 'Finished building: $@'
	@echo ' '

armos.lst: armos.elf
	@echo 'Invoking: ARM Windows GNU Create Listing (Sourcery Lite Bare)'
	arm-none-eabi-objdump -h -S "armos.elf" > "armos.lst"
	@echo 'Finished building: $@'
	@echo ' '

armos.siz: armos.elf
	@echo 'Invoking: ARM Windows GNU Print Size (Sourcery Lite Bare)'
	arm-none-eabi-size  --format=berkeley "armos.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SECONDARY_SIZE)$(OBJS)$(C_DEPS)$(ASM_DEPS)$(SECONDARY_FLASH)$(EXECUTABLES)$(SECONDARY_LIST)$(S_UPPER_DEPS) armos.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
