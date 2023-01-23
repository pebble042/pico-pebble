/* Library includes. */
#include <stdio.h>
#include <time.h>
#include "pico/stdlib.h"

/* Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

/* Arducam include */
#include "imu_handler.h"

/*-----------------------------------------------------------*/
/* The task functions. */

static void vAccelTask( void *pvParameters );
static void vGyroTask( void *pvParameters );
static void vMagnetTask( void *pvParameters );
static void vLcdTask( void *pvParameters );


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
	float x,y,z;
} Data_IMU_t;

/*-----------------------------------------------------------*/

// Data_IMU_t accelValue, gyroValue,magnetValue ;


void vMainShowImu(void)
{
    xQueue = xQueueCreate( 3, sizeof(Data_IMU_t) );

    if (xQueue  != NULL)
    {
        
        // xTaskCreate( vAccelTask, "Accelerometer", 256, NULL , 4, NULL );
        // xTaskCreate( vGyroTask, "Gyroscope", 256, NULL , 3, NULL );
        xTaskCreate( vMagnetTask, "Magnetic", 256, NULL , 2, NULL );

        xTaskCreate( vLcdTask , "LCD", 256, NULL, 1, NULL );
    }
    

    vTaskStartScheduler();
    /* Execution will only reach here if there was insufficient heap to
    start the scheduler. */
    while (1){
    };

}

static void vAccelTask( void *pvParameters )
{
    BaseType_t xStatus;
    const TickType_t xTicksToWait = pdMS_TO_TICKS( 1000UL );

    while(1)
    {

        xStatus = xQueueSendToBack( xQueue, pvParameters, xTicksToWait );

		if( xStatus != pdPASS )
		{
			printf( "Could not send to the queue.\r\n" );
		}
    }
    
}

static void vGyroTask( void *pvParameters )
{
    BaseType_t xStatus;
    const TickType_t xTicksToWait = pdMS_TO_TICKS( 1000UL );

    while(1)
    {

        xStatus = xQueueSendToBack( xQueue, pvParameters, xTicksToWait );

		if( xStatus != pdPASS )
		{
			printf( "Could not send to the queue.\r\n" );
		}
    }
    
}

static void vMagnetTask( void *pvParameters )
{
    BaseType_t xStatus;
    const TickType_t xTicksToWait = pdMS_TO_TICKS( 1000UL );

    float x , y ,z;
    Data_IMU_t magnetValue;

    while(1)
    {

        if(imuAccelRead(&x, &y,&z))
        {
            magnetValue.x = x;
            magnetValue.y = y;
            magnetValue.z = z;
        }
        
        xStatus = xQueueSendToBack( xQueue, &magnetValue, xTicksToWait );

		if( xStatus != pdPASS )
		{
			printf( "Could not send to the queue.\r\n" );
		}
    }
    
}

static void vLcdTask( void *pvParameters )
{
    Data_IMU_t receivedIMU;
    BaseType_t xStatus;
    char numChar[4];

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
            //  ST7735_WriteString(55,35 , "" , Font_16x26, ST7735_COLOR565(0,255,0), ST7735_BLACK);
            printf("X : %.03f\tY : %.03f\tZ : %.03f\n",receivedIMU.x,receivedIMU.y,receivedIMU.z);
        }
        
    }
    

}