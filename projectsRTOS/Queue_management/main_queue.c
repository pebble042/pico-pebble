/* Scheduler include files. */
#include "FreeRTOS.h"
#include "task.h"

/* Library includes. */
#include <stdio.h>
#include "pico/stdlib.h"

#include "imu_handler.h"



/* Set mainCREATE_SIMPLE_BLINKY_DEMO_ONLY to one to run the simple blinky demo,
or 0 to run the more comprehensive test and demo application. */

/*-----------------------------------------------------------*/

/*
 * Configure the hardware as necessary to run this demo.
 */
static void prvSetupHardware( void );

#if mainEX1_SHOW_IMU_ON_LCD == 1
extern void vMainShowImu( void );
#endif

void vLaunch( void)
{
    #if( mainEX1_SHOW_IMU_ON_LCD == 1 )
        {
            vMainShowImu();
        }
    #endif
}

int main( void )
{
    /* Configure the hardware ready to run the demo. */
    prvSetupHardware();
    vLaunch();
}


static void prvSetupHardware( void )
{
    stdio_init_all();

    ST7735_Init();
    ST7735_FillScreen(ST7735_BLACK);

    IMU_Init();
}
