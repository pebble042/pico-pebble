/* Copyright 2020 The TensorFlow Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#include "main_functions.h"
#include <stdio.h>
#include <pico/time.h>
#include <hardware/gpio.h>
#include <pico/stdio.h>

#include "LCD_st7735.h"
#include "imu_handler.h"


// The name of this function is important for Arduino compatibility.
void setup(void) 
{
    #if SCREEN
    if(!SetupAccelerometer())
    {
        printf("Failed to initialize IMU!");
    }

    #endif
}


void loop() 
{
  #if SCREEN
  float x,y,z;

  while (1)
  {
    /* ------------------------------ Test IMU lib ------------------------------ */
    /* Accelerometer */
    /*
    if(imuAccelRead(&x, &y,&z))
    {
      const float norm_x = y;
      const float norm_y = x;
      const float norm_z = z;

      printf("X : %.03f\t",norm_x);
      printf("Y : %.03f\t",norm_y);
      printf("Z : %.03f\t",norm_z);
      printf("\n");
      sleep_ms(100);
    }
    */

    /* gyroscope */
    /*
    if(imuGyroRead(&x, &y,&z))
    {
      const float norm_x = y;
      const float norm_y = x;
      const float norm_z = z;

      printf("X : %.03f\t",norm_x);
      printf("Y : %.03f\t",norm_y);
      printf("Z : %.03f\t",norm_z);
      printf("\n");
      sleep_ms(100);
    }
    */

    /* Magnetometer */
    /*
    if(imuMagRead(&x, &y,&z))
    {
      const float norm_x = y;
      const float norm_y = x;
      const float norm_z = z;

      printf("X : %.03f\t",norm_x);
      printf("Y : %.03f\t",norm_y);
      printf("Z : %.03f\t",norm_z);
      printf("\n");
      sleep_ms(100);
    }
    else{
      printf("Warning : Error\n");
      sleep_ms(1000);
    }
    */
  }
  
  #endif
}

