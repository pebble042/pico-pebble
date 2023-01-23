/* Library includes. */
#include <stdio.h>
#include <time.h>
#include "pico/stdlib.h"

/* Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

/* Arducam include */
#include "LCD_st7735.h"


void vMainShowImu(void);

/*-----------------------------------------------------------*/
/* The task functions. */

static void vSenderTask( void *pvParameters );
static void vReceiverTask( void *pvParameters );

/*-----------------------------------------------------------*/

/* This is used to store the queue that is accessed by all three tasks. */
QueueHandle_t xQueue;

/*-----------------------------------------------------------*/
/*  
    * accelValue = SimpleAccelerometer
    * gyroVlue = SimpleGyroscope
    * MagnetValue = SimpleMagnetometer
*/
typedef struct
{
	float accelValue , gyroVlue , MagnetValue;
} Data_IMU_t;

/*-----------------------------------------------------------*/

Data_IMU_t xValueIMU = {10.01,5.22,4.98};

void vMainShowImu(void)
{
    ST7735_Init();
    ST7735_FillScreen(ST7735_BLACK);


    xQueue = xQueueCreate( 3, sizeof(Data_IMU_t) );

    if (xQueue  != NULL)
    {
        
        xTaskCreate( vSenderTask, "Sender1", 256, &xValueIMU , 2, NULL );
        xTaskCreate( vReceiverTask, "Receiver", 256, NULL, 1, NULL );
    }
    

    vTaskStartScheduler();
    /* Execution will only reach here if there was insufficient heap to
    start the scheduler. */
    while (1){

    };

}

static void vSenderTask( void *pvParameters )
{
    BaseType_t xStatus;
    const TickType_t xTicksToWait = pdMS_TO_TICKS( 5000UL );

    while(1)
    {
        xStatus = xQueueSendToBack( xQueue, pvParameters, xTicksToWait );

		if( xStatus != pdPASS )
		{
			printf( "Could not send to the queue.\r\n" );
		}
    }
    
}

static void vReceiverTask( void *pvParameters )
{
    Data_IMU_t receivedIMU;
    BaseType_t xStatus;
    const TickType_t xTicksToWait = pdMS_TO_TICKS( 100UL );

    while (1)
    {
        /* Find the queue to be full.  3 is the queue length. */
        if( uxQueueMessagesWaiting( xQueue ) != 3 )
		{
			printf( "Queue should have been full!\r\n" );
		}

        xStatus = xQueueReceive(xQueue, &receivedIMU, 0);

        if (xStatus == pdPASS)
        {
             ST7735_WriteString(55,35 , "Test" , Font_16x26, ST7735_COLOR565(0,255,0), ST7735_BLACK);
        }
        
    }
    

}