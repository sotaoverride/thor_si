################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/aatir/gecko_sdk/platform/service/iostream/src/sl_iostream.c \
/home/aatir/gecko_sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.c \
/home/aatir/gecko_sdk/platform/service/iostream/src/sl_iostream_uart.c \
/home/aatir/gecko_sdk/platform/service/iostream/src/sl_iostream_usart.c 

OBJS += \
./gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream.o \
./gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_retarget_stdio.o \
./gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_uart.o \
./gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_usart.o 

C_DEPS += \
./gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream.d \
./gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_retarget_stdio.d \
./gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_uart.d \
./gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_usart.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream.o: /home/aatir/gecko_sdk/platform/service/iostream/src/sl_iostream.c gecko_sdk_4.4.0/platform/service/iostream/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/aatir/SimplicityStudio/v5_workspace/iostream_usart_baremetal/config" -I"/home/aatir/gecko_sdk//hardware/kit/common/bsp" -I"/home/aatir/SimplicityStudio/v5_workspace/iostream_usart_baremetal/autogen" -I"/home/aatir/SimplicityStudio/v5_workspace/iostream_usart_baremetal" -I"/home/aatir/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"/home/aatir/gecko_sdk//platform/common/inc" -I"/home/aatir/gecko_sdk//hardware/board/inc" -I"/home/aatir/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/aatir/gecko_sdk//hardware/kit/BGM22_BRD4310A/config/" -I"/home/aatir/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"/home/aatir/gecko_sdk//platform/driver/debug/inc" -I"/home/aatir/gecko_sdk//platform/service/device_init/inc" -I"/home/aatir/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/aatir/gecko_sdk//platform/emdrv/common/inc" -I"/home/aatir/gecko_sdk//platform/emlib/inc" -I"/home/aatir/gecko_sdk//platform/service/iostream/inc" -I"/home/aatir/gecko_sdk//platform/common/toolchain/inc" -I"/home/aatir/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_retarget_stdio.o: /home/aatir/gecko_sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.c gecko_sdk_4.4.0/platform/service/iostream/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/aatir/SimplicityStudio/v5_workspace/iostream_usart_baremetal/config" -I"/home/aatir/gecko_sdk//hardware/kit/common/bsp" -I"/home/aatir/SimplicityStudio/v5_workspace/iostream_usart_baremetal/autogen" -I"/home/aatir/SimplicityStudio/v5_workspace/iostream_usart_baremetal" -I"/home/aatir/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"/home/aatir/gecko_sdk//platform/common/inc" -I"/home/aatir/gecko_sdk//hardware/board/inc" -I"/home/aatir/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/aatir/gecko_sdk//hardware/kit/BGM22_BRD4310A/config/" -I"/home/aatir/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"/home/aatir/gecko_sdk//platform/driver/debug/inc" -I"/home/aatir/gecko_sdk//platform/service/device_init/inc" -I"/home/aatir/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/aatir/gecko_sdk//platform/emdrv/common/inc" -I"/home/aatir/gecko_sdk//platform/emlib/inc" -I"/home/aatir/gecko_sdk//platform/service/iostream/inc" -I"/home/aatir/gecko_sdk//platform/common/toolchain/inc" -I"/home/aatir/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_retarget_stdio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_uart.o: /home/aatir/gecko_sdk/platform/service/iostream/src/sl_iostream_uart.c gecko_sdk_4.4.0/platform/service/iostream/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/aatir/SimplicityStudio/v5_workspace/iostream_usart_baremetal/config" -I"/home/aatir/gecko_sdk//hardware/kit/common/bsp" -I"/home/aatir/SimplicityStudio/v5_workspace/iostream_usart_baremetal/autogen" -I"/home/aatir/SimplicityStudio/v5_workspace/iostream_usart_baremetal" -I"/home/aatir/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"/home/aatir/gecko_sdk//platform/common/inc" -I"/home/aatir/gecko_sdk//hardware/board/inc" -I"/home/aatir/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/aatir/gecko_sdk//hardware/kit/BGM22_BRD4310A/config/" -I"/home/aatir/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"/home/aatir/gecko_sdk//platform/driver/debug/inc" -I"/home/aatir/gecko_sdk//platform/service/device_init/inc" -I"/home/aatir/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/aatir/gecko_sdk//platform/emdrv/common/inc" -I"/home/aatir/gecko_sdk//platform/emlib/inc" -I"/home/aatir/gecko_sdk//platform/service/iostream/inc" -I"/home/aatir/gecko_sdk//platform/common/toolchain/inc" -I"/home/aatir/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_uart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_usart.o: /home/aatir/gecko_sdk/platform/service/iostream/src/sl_iostream_usart.c gecko_sdk_4.4.0/platform/service/iostream/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/aatir/SimplicityStudio/v5_workspace/iostream_usart_baremetal/config" -I"/home/aatir/gecko_sdk//hardware/kit/common/bsp" -I"/home/aatir/SimplicityStudio/v5_workspace/iostream_usart_baremetal/autogen" -I"/home/aatir/SimplicityStudio/v5_workspace/iostream_usart_baremetal" -I"/home/aatir/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"/home/aatir/gecko_sdk//platform/common/inc" -I"/home/aatir/gecko_sdk//hardware/board/inc" -I"/home/aatir/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/aatir/gecko_sdk//hardware/kit/BGM22_BRD4310A/config/" -I"/home/aatir/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"/home/aatir/gecko_sdk//platform/driver/debug/inc" -I"/home/aatir/gecko_sdk//platform/service/device_init/inc" -I"/home/aatir/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/aatir/gecko_sdk//platform/emdrv/common/inc" -I"/home/aatir/gecko_sdk//platform/emlib/inc" -I"/home/aatir/gecko_sdk//platform/service/iostream/inc" -I"/home/aatir/gecko_sdk//platform/common/toolchain/inc" -I"/home/aatir/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.0/platform/service/iostream/src/sl_iostream_usart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


