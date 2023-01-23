add_executable(Example1_Show_IMU
    main_queue.c
    ex1_show_imu.c
    imu_handler.cpp
)


target_include_directories(Example1_Show_IMU 
        PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}
        )

target_compile_definitions(Example1_Show_IMU PRIVATE
        mainEX1_SHOW_IMU_ON_LCD=1
        )

target_link_libraries(
        Example1_Show_IMU 
        pico_stdlib 
        pico-pebble
        LCD_st7735
        ICM20948

        )

# Enable usb output, disable uart output
pico_enable_stdio_usb(Example1_Show_IMU 1)
pico_enable_stdio_uart(Example1_Show_IMU 0)

pico_add_extra_outputs(Example1_Show_IMU)

