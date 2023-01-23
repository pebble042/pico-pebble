cmake_minimum_required(VERSION 3.12)

# Pull in PICO SDK (must be before project)
include(pico_sdk_import.cmake)

project(pico-pebble C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 11)

pico_sdk_init()

add_library(pico-pebble "")

target_link_libraries(
  pico-pebble
  pico_stdlib
)

# add_subdirectory(include/arducam_hm01b0)
add_subdirectory(include/LCD_st7735)
add_subdirectory(include/ICM42622)
# add_subdirectory(include/pico-microphone)
add_subdirectory(include/ICM20948)
# add_subdirectory(include/arducam_mic)


# include_directories(include/arducam_hm01b0)
include_directories(include/LCD_st7735)
include_directories(include/ICM42622)
# include_directories(include/pico-microphone)
include_directories(include/ICM20948)
# include_directories(include/arducam_mic)

add_subdirectory("projects/counter")
add_subdirectory("projects/blink")
add_subdirectory("projects/show_IMU")


