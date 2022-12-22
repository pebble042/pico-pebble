# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

# compile ASM with D:/pico/armcc/10 2021.10/bin/arm-none-eabi-gcc.exe
# compile C with D:/pico/armcc/10 2021.10/bin/arm-none-eabi-gcc.exe
# compile CXX with D:/pico/armcc/10 2021.10/bin/arm-none-eabi-g++.exe
ASM_DEFINES = -DCFG_TUSB_DEBUG=1 -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_USB=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CORE=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UNIQUE_ID=1 -DLIB_PICO_UTIL=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_TARGET_NAME=\"blink\" -DPICO_USE_BLOCKED_RAM=0

ASM_INCLUDES = -ID:\pico\pico-pebble\include\arducam_hm01b0 -ID:\pico\pico-pebble\include\LCD_st7735 -ID:\pico\pico-pebble\include\ICM42622 -ID:\pico\pico-pebble\include\pico-microphone -ID:\pico\pico-pebble\include\ICM20948 -ID:\pico\pico-pebble\include\arducam_mic -ID:\pico\pico-pebble\projects\blink\. -ID:\pico\pico-sdk\src\common\pico_stdlib\include -ID:\pico\pico-sdk\src\rp2_common\hardware_gpio\include -ID:\pico\pico-sdk\src\common\pico_base\include -ID:\pico\pico-pebble\build\generated\pico_base -ID:\pico\pico-sdk\src\boards\include -ID:\pico\pico-sdk\src\rp2_common\pico_platform\include -ID:\pico\pico-sdk\src\rp2040\hardware_regs\include -ID:\pico\pico-sdk\src\rp2_common\hardware_base\include -ID:\pico\pico-sdk\src\rp2040\hardware_structs\include -ID:\pico\pico-sdk\src\rp2_common\hardware_claim\include -ID:\pico\pico-sdk\src\rp2_common\hardware_sync\include -ID:\pico\pico-sdk\src\rp2_common\hardware_irq\include -ID:\pico\pico-sdk\src\common\pico_sync\include -ID:\pico\pico-sdk\src\common\pico_time\include -ID:\pico\pico-sdk\src\rp2_common\hardware_timer\include -ID:\pico\pico-sdk\src\common\pico_util\include -ID:\pico\pico-sdk\src\rp2_common\hardware_uart\include -ID:\pico\pico-sdk\src\rp2_common\hardware_divider\include -ID:\pico\pico-sdk\src\rp2_common\pico_runtime\include -ID:\pico\pico-sdk\src\rp2_common\hardware_clocks\include -ID:\pico\pico-sdk\src\rp2_common\hardware_resets\include -ID:\pico\pico-sdk\src\rp2_common\hardware_pll\include -ID:\pico\pico-sdk\src\rp2_common\hardware_vreg\include -ID:\pico\pico-sdk\src\rp2_common\hardware_watchdog\include -ID:\pico\pico-sdk\src\rp2_common\hardware_xosc\include -ID:\pico\pico-sdk\src\rp2_common\pico_printf\include -ID:\pico\pico-sdk\src\rp2_common\pico_bootrom\include -ID:\pico\pico-sdk\src\common\pico_bit_ops\include -ID:\pico\pico-sdk\src\common\pico_divider\include -ID:\pico\pico-sdk\src\rp2_common\pico_double\include -ID:\pico\pico-sdk\src\rp2_common\pico_int64_ops\include -ID:\pico\pico-sdk\src\rp2_common\pico_float\include -ID:\pico\pico-sdk\src\rp2_common\pico_malloc\include -ID:\pico\pico-sdk\src\rp2_common\boot_stage2\include -ID:\pico\pico-sdk\src\common\pico_binary_info\include -ID:\pico\pico-sdk\src\rp2_common\pico_stdio\include -ID:\pico\pico-sdk\src\rp2_common\pico_stdio_usb\include -ID:\pico\pico-sdk\lib\tinyusb\src -ID:\pico\pico-sdk\lib\tinyusb\src\common -ID:\pico\pico-sdk\lib\tinyusb\hw -ID:\pico\pico-sdk\src\rp2_common\pico_fix\rp2040_usb_device_enumeration\include -ID:\pico\pico-sdk\src\rp2_common\pico_unique_id\include -ID:\pico\pico-sdk\src\rp2_common\hardware_flash\include -ID:\pico\pico-sdk\src\common\pico_usb_reset_interface\include

ASM_FLAGS = -mcpu=cortex-m0plus -mthumb -Og -g -ffunction-sections -fdata-sections

C_DEFINES = -DCFG_TUSB_DEBUG=1 -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_USB=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CORE=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UNIQUE_ID=1 -DLIB_PICO_UTIL=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_TARGET_NAME=\"blink\" -DPICO_USE_BLOCKED_RAM=0

C_INCLUDES = -ID:\pico\pico-pebble\include\arducam_hm01b0 -ID:\pico\pico-pebble\include\LCD_st7735 -ID:\pico\pico-pebble\include\ICM42622 -ID:\pico\pico-pebble\include\pico-microphone -ID:\pico\pico-pebble\include\ICM20948 -ID:\pico\pico-pebble\include\arducam_mic -ID:\pico\pico-pebble\projects\blink\. -ID:\pico\pico-sdk\src\common\pico_stdlib\include -ID:\pico\pico-sdk\src\rp2_common\hardware_gpio\include -ID:\pico\pico-sdk\src\common\pico_base\include -ID:\pico\pico-pebble\build\generated\pico_base -ID:\pico\pico-sdk\src\boards\include -ID:\pico\pico-sdk\src\rp2_common\pico_platform\include -ID:\pico\pico-sdk\src\rp2040\hardware_regs\include -ID:\pico\pico-sdk\src\rp2_common\hardware_base\include -ID:\pico\pico-sdk\src\rp2040\hardware_structs\include -ID:\pico\pico-sdk\src\rp2_common\hardware_claim\include -ID:\pico\pico-sdk\src\rp2_common\hardware_sync\include -ID:\pico\pico-sdk\src\rp2_common\hardware_irq\include -ID:\pico\pico-sdk\src\common\pico_sync\include -ID:\pico\pico-sdk\src\common\pico_time\include -ID:\pico\pico-sdk\src\rp2_common\hardware_timer\include -ID:\pico\pico-sdk\src\common\pico_util\include -ID:\pico\pico-sdk\src\rp2_common\hardware_uart\include -ID:\pico\pico-sdk\src\rp2_common\hardware_divider\include -ID:\pico\pico-sdk\src\rp2_common\pico_runtime\include -ID:\pico\pico-sdk\src\rp2_common\hardware_clocks\include -ID:\pico\pico-sdk\src\rp2_common\hardware_resets\include -ID:\pico\pico-sdk\src\rp2_common\hardware_pll\include -ID:\pico\pico-sdk\src\rp2_common\hardware_vreg\include -ID:\pico\pico-sdk\src\rp2_common\hardware_watchdog\include -ID:\pico\pico-sdk\src\rp2_common\hardware_xosc\include -ID:\pico\pico-sdk\src\rp2_common\pico_printf\include -ID:\pico\pico-sdk\src\rp2_common\pico_bootrom\include -ID:\pico\pico-sdk\src\common\pico_bit_ops\include -ID:\pico\pico-sdk\src\common\pico_divider\include -ID:\pico\pico-sdk\src\rp2_common\pico_double\include -ID:\pico\pico-sdk\src\rp2_common\pico_int64_ops\include -ID:\pico\pico-sdk\src\rp2_common\pico_float\include -ID:\pico\pico-sdk\src\rp2_common\pico_malloc\include -ID:\pico\pico-sdk\src\rp2_common\boot_stage2\include -ID:\pico\pico-sdk\src\common\pico_binary_info\include -ID:\pico\pico-sdk\src\rp2_common\pico_stdio\include -ID:\pico\pico-sdk\src\rp2_common\pico_stdio_usb\include -ID:\pico\pico-sdk\lib\tinyusb\src -ID:\pico\pico-sdk\lib\tinyusb\src\common -ID:\pico\pico-sdk\lib\tinyusb\hw -ID:\pico\pico-sdk\src\rp2_common\pico_fix\rp2040_usb_device_enumeration\include -ID:\pico\pico-sdk\src\rp2_common\pico_unique_id\include -ID:\pico\pico-sdk\src\rp2_common\hardware_flash\include -ID:\pico\pico-sdk\src\common\pico_usb_reset_interface\include

C_FLAGS = -mcpu=cortex-m0plus -mthumb -Og -g -ffunction-sections -fdata-sections -std=gnu11

CXX_DEFINES = -DCFG_TUSB_DEBUG=1 -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_USB=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CORE=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UNIQUE_ID=1 -DLIB_PICO_UTIL=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_TARGET_NAME=\"blink\" -DPICO_USE_BLOCKED_RAM=0

CXX_INCLUDES = -ID:\pico\pico-pebble\include\arducam_hm01b0 -ID:\pico\pico-pebble\include\LCD_st7735 -ID:\pico\pico-pebble\include\ICM42622 -ID:\pico\pico-pebble\include\pico-microphone -ID:\pico\pico-pebble\include\ICM20948 -ID:\pico\pico-pebble\include\arducam_mic -ID:\pico\pico-pebble\projects\blink\. -ID:\pico\pico-sdk\src\common\pico_stdlib\include -ID:\pico\pico-sdk\src\rp2_common\hardware_gpio\include -ID:\pico\pico-sdk\src\common\pico_base\include -ID:\pico\pico-pebble\build\generated\pico_base -ID:\pico\pico-sdk\src\boards\include -ID:\pico\pico-sdk\src\rp2_common\pico_platform\include -ID:\pico\pico-sdk\src\rp2040\hardware_regs\include -ID:\pico\pico-sdk\src\rp2_common\hardware_base\include -ID:\pico\pico-sdk\src\rp2040\hardware_structs\include -ID:\pico\pico-sdk\src\rp2_common\hardware_claim\include -ID:\pico\pico-sdk\src\rp2_common\hardware_sync\include -ID:\pico\pico-sdk\src\rp2_common\hardware_irq\include -ID:\pico\pico-sdk\src\common\pico_sync\include -ID:\pico\pico-sdk\src\common\pico_time\include -ID:\pico\pico-sdk\src\rp2_common\hardware_timer\include -ID:\pico\pico-sdk\src\common\pico_util\include -ID:\pico\pico-sdk\src\rp2_common\hardware_uart\include -ID:\pico\pico-sdk\src\rp2_common\hardware_divider\include -ID:\pico\pico-sdk\src\rp2_common\pico_runtime\include -ID:\pico\pico-sdk\src\rp2_common\hardware_clocks\include -ID:\pico\pico-sdk\src\rp2_common\hardware_resets\include -ID:\pico\pico-sdk\src\rp2_common\hardware_pll\include -ID:\pico\pico-sdk\src\rp2_common\hardware_vreg\include -ID:\pico\pico-sdk\src\rp2_common\hardware_watchdog\include -ID:\pico\pico-sdk\src\rp2_common\hardware_xosc\include -ID:\pico\pico-sdk\src\rp2_common\pico_printf\include -ID:\pico\pico-sdk\src\rp2_common\pico_bootrom\include -ID:\pico\pico-sdk\src\common\pico_bit_ops\include -ID:\pico\pico-sdk\src\common\pico_divider\include -ID:\pico\pico-sdk\src\rp2_common\pico_double\include -ID:\pico\pico-sdk\src\rp2_common\pico_int64_ops\include -ID:\pico\pico-sdk\src\rp2_common\pico_float\include -ID:\pico\pico-sdk\src\rp2_common\pico_malloc\include -ID:\pico\pico-sdk\src\rp2_common\boot_stage2\include -ID:\pico\pico-sdk\src\common\pico_binary_info\include -ID:\pico\pico-sdk\src\rp2_common\pico_stdio\include -ID:\pico\pico-sdk\src\rp2_common\pico_stdio_usb\include -ID:\pico\pico-sdk\lib\tinyusb\src -ID:\pico\pico-sdk\lib\tinyusb\src\common -ID:\pico\pico-sdk\lib\tinyusb\hw -ID:\pico\pico-sdk\src\rp2_common\pico_fix\rp2040_usb_device_enumeration\include -ID:\pico\pico-sdk\src\rp2_common\pico_unique_id\include -ID:\pico\pico-sdk\src\rp2_common\hardware_flash\include -ID:\pico\pico-sdk\src\common\pico_usb_reset_interface\include

CXX_FLAGS = -mcpu=cortex-m0plus -mthumb -Og -g -ffunction-sections -fdata-sections -fno-exceptions -fno-unwind-tables -fno-rtti -fno-use-cxa-atexit -std=gnu++11

