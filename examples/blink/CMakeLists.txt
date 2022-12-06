
cmake_minimum_required(VERSION 3.12)

project(blink C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 11)

add_executable(blink "")

target_include_directories(blink
  PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/.
  )

set_target_properties(
  blink
  PROPERTIES
  COMPILE_FLAGS -fno-rtti
  COMPILE_FLAGS -fno-exceptions
  COMPILE_FLAGS -fno-threadsafe-statics
  COMPILE_FLAGS -nostdlib
)

target_sources(blink
  PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/main.c
  ${CMAKE_CURRENT_LIST_DIR}/main_functions.c
  ${CMAKE_CURRENT_LIST_DIR}/main_functions.h

)

target_link_libraries(
  blink
  pico-pebble
)

# Enable usb output, disable uart output
pico_enable_stdio_usb(blink 1)
pico_enable_stdio_uart(blink 0)

pico_add_extra_outputs(blink)


