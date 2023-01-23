cmake_minimum_required(VERSION 3.12)

# Pull in PICO SDK (must be before project)
include(pico_sdk_import.cmake)

project(pico-pebble C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 11)

pico_sdk_init()

set(PICO_SDK_FREERTOS_SOURCE ${CMAKE_SOURCE_DIR}/include/FreeRTOS-Kernel)

add_library(pico-pebble
    .
    ${PICO_SDK_FREERTOS_SOURCE}/event_groups.c
    ${PICO_SDK_FREERTOS_SOURCE}/list.c
    ${PICO_SDK_FREERTOS_SOURCE}/queue.c
    ${PICO_SDK_FREERTOS_SOURCE}/stream_buffer.c
    ${PICO_SDK_FREERTOS_SOURCE}/tasks.c
    ${PICO_SDK_FREERTOS_SOURCE}/timers.c
    ${PICO_SDK_FREERTOS_SOURCE}/portable/MemMang/heap_3.c
    ${PICO_SDK_FREERTOS_SOURCE}/portable/GCC/ARM_CM0/port.c
)

target_include_directories(pico-pebble PUBLIC
    ${CMAKE_SOURCE_DIR}/config
    ${PICO_SDK_FREERTOS_SOURCE}/include
    ${PICO_SDK_FREERTOS_SOURCE}/portable/GCC/ARM_CM0
)

target_link_libraries(
  pico-pebble
  pico_stdlib
)

add_subdirectory(include/arducam_hm01b0)
add_subdirectory(include/LCD_st7735)
add_subdirectory(include/ICM42622)
add_subdirectory(include/pico-microphone)
add_subdirectory(include/ICM20948)
add_subdirectory(include/arducam_mic)


include_directories(include/arducam_hm01b0)
include_directories(include/LCD_st7735)
include_directories(include/ICM42622)
include_directories(include/pico-microphone)
include_directories(include/ICM20948)
include_directories(include/arducam_mic)

# My PROJECT.
add_subdirectory("projects/counter")
add_subdirectory("projects/blink")
add_subdirectory("projects/show_IMU")

# My RTOS PROJECT.
add_subdirectory("projectsRTOS/Queue_management")



