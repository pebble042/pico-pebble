
cmake_minimum_required(VERSION 3.12)

project(counter C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 11)

add_executable(counter "")

target_include_directories(counter
  PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/.
  )

target_sources(counter
  PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/main.c
  ${CMAKE_CURRENT_LIST_DIR}/main_functions.c
  ${CMAKE_CURRENT_LIST_DIR}/main_functions.h

)

target_link_libraries(
  counter
  pico-pebble
  LCD_st7735
  hardware_pwm
)

# Enable usb output, disable uart output
pico_enable_stdio_usb(counter 1)
pico_enable_stdio_uart(counter 0)

pico_add_extra_outputs(counter)


