
cmake_minimum_required(VERSION 3.12)

project(show_IMU C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 11)

add_executable(show_IMU)

target_sources(show_IMU
  PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/main.c
  ${CMAKE_CURRENT_LIST_DIR}/main_functions.c
  ${CMAKE_CURRENT_LIST_DIR}/main_functions.h
  ${CMAKE_CURRENT_LIST_DIR}/imu_handler.cpp
  ${CMAKE_CURRENT_LIST_DIR}/imu_handler.h
)

target_link_libraries(
  show_IMU
  pico-pebble
  LCD_st7735
  ICM20948
)

# Enable usb output, disable uart output
pico_enable_stdio_usb(show_IMU 1)
pico_enable_stdio_uart(show_IMU 0)

pico_add_extra_outputs(show_IMU)


