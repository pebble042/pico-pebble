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

#include <stdio.h>
#include <pico/time.h>
#include <hardware/gpio.h>
#include <pico/stdio.h>

#include "ICM20948.h"
#include <ICM42622.h>

#include "imu_handler.h"

/* -------------------------------------------------------------------------- */
/*                                 Initial IMU                                */
/* -------------------------------------------------------------------------- */

IMU_EN_SENSOR_TYPE enMotionSensorType;

bool imuInit(void) 
{
    stdio_init_all(); 
    i2c_init(I2C_PORT, 400 * 1000);
    gpio_set_function(4, GPIO_FUNC_I2C);
    gpio_set_function(5, GPIO_FUNC_I2C);
    gpio_pull_up(4);
    gpio_pull_up(5);
    sleep_ms(1000);

    ICM20948::imuInit(&enMotionSensorType);

    if (IMU_EN_SENSOR_TYPE_ICM20948 != enMotionSensorType)
    {
      printf("Failed to initialize IMU!");
      return false;
    }
      
    return true;

}

/* -------------------------------------------------------------------------- */
/*                                Accelerometer                               */
/* -------------------------------------------------------------------------- */

bool imuAccelRead(float *ps16X, float *ps16Y, float *ps16Z) {
  uint8_t                     u8Buf[2];
  int16_t                     s16Buf[3] = { 0 };
  uint8_t                     i;
  int32_t                     s32OutBuf[3] = { 0 };
  //
  static ICM20948_ST_AVG_DATA sstAvgBuf[3];

  u8Buf[0]  = ICM20948::I2C_ReadOneByte(REG_ADD_ACCEL_XOUT_L);
  u8Buf[1]  = ICM20948::I2C_ReadOneByte(REG_ADD_ACCEL_XOUT_H);
  s16Buf[0] = (u8Buf[1] << 8) | u8Buf[0];

  u8Buf[0]  = ICM20948::I2C_ReadOneByte(REG_ADD_ACCEL_YOUT_L);
  u8Buf[1]  = ICM20948::I2C_ReadOneByte(REG_ADD_ACCEL_YOUT_H);
  s16Buf[1] = (u8Buf[1] << 8) | u8Buf[0];

  u8Buf[0]  = ICM20948::I2C_ReadOneByte(REG_ADD_ACCEL_ZOUT_L);
  u8Buf[1]  = ICM20948::I2C_ReadOneByte(REG_ADD_ACCEL_ZOUT_H);
  s16Buf[2] = (u8Buf[1] << 8) | u8Buf[0];

  *ps16X = s16Buf[0] * 4.0 / 32768.0;
  *ps16Y = s16Buf[1] * 4.0 / 32768.0;
  *ps16Z = s16Buf[2] * 4.0 / 32768.0;

  if (*ps16X == 0 && *ps16Y == 0 && *ps16Z == 0) {
    return false;
  }
  return true;
}

/* -------------------------------------------------------------------------- */
/*                                  Gyroscope                                 */
/* -------------------------------------------------------------------------- */

bool imuGyroRead(float *ps16X, float *ps16Y, float *ps16Z) {
  uint8_t u8Buf[6];
  int16_t s16Buf[3] = { 0 };
  uint8_t i;
  int32_t s32OutBuf[3] = { 0 };
  //
  static ICM20948_ST_AVG_DATA sstAvgBuf[3];
  static int16_t              ss16c = 0;
  ss16c++;

  u8Buf[0]  = ICM20948::I2C_ReadOneByte(REG_ADD_GYRO_XOUT_L);
  u8Buf[1]  = ICM20948::I2C_ReadOneByte(REG_ADD_GYRO_XOUT_H);
  s16Buf[0] = (u8Buf[1] << 8) | u8Buf[0];

  u8Buf[0]  = ICM20948::I2C_ReadOneByte(REG_ADD_GYRO_YOUT_L);
  u8Buf[1]  = ICM20948::I2C_ReadOneByte(REG_ADD_GYRO_YOUT_H);
  s16Buf[1] = (u8Buf[1] << 8) | u8Buf[0];

  u8Buf[0]  = ICM20948::I2C_ReadOneByte(REG_ADD_GYRO_ZOUT_L);
  u8Buf[1]  = ICM20948::I2C_ReadOneByte(REG_ADD_GYRO_ZOUT_H);
  s16Buf[2] = (u8Buf[1] << 8) | u8Buf[0];

  *ps16X = s16Buf[0] * 2000.0 / 32768.0;
  *ps16Y = s16Buf[1] * 2000.0 / 32768.0;
  *ps16Z = s16Buf[2] * 2000.0 / 32768.0;

  if (*ps16X == 0 && *ps16Y == 0 && *ps16Z == 0) {
    return false;
  }
  return true;
}

/* -------------------------------------------------------------------------- */
/*                                Magnetometer                                */
/* -------------------------------------------------------------------------- */

bool imuMagRead(float *ps16X, float *ps16Y, float *ps16Z) {
  
  uint8_t counter = 20;
  uint8_t u8Data[MAG_DATA_LEN];
  int16_t s16Buf[3] = { 0 };
  uint8_t i;
  int32_t s32OutBuf[3] = { 0 };
  //
  static ICM20948_ST_AVG_DATA sstAvgBuf[3];
  while (counter > 0) {
    sleep_ms(1);
    ICM20948::icm20948ReadSecondary(I2C_ADD_ICM20948_AK09916 | I2C_ADD_ICM20948_AK09916_READ,
                          REG_ADD_MAG_ST2, 1, u8Data);

    if ((u8Data[0] & 0x01) != 0)
      break;

    counter--;
  }

  if (counter != 0) {
    ICM20948::icm20948ReadSecondary(I2C_ADD_ICM20948_AK09916 | I2C_ADD_ICM20948_AK09916_READ,
                          REG_ADD_MAG_DATA, MAG_DATA_LEN, u8Data);
    s16Buf[0] = ((int16_t)u8Data[1] << 8) | u8Data[0];
    s16Buf[1] = ((int16_t)u8Data[3] << 8) | u8Data[2];
    s16Buf[2] = ((int16_t)u8Data[5] << 8) | u8Data[4];
  }

  *ps16X = s16Buf[0] * 4.0 * 100.0 / 32768.0;
  *ps16Y = s16Buf[1] * 4.0 * 100.0 / 32768.0;
  *ps16Z = s16Buf[2] * 4.0 * 100.0 / 32768.0;

 if (*ps16X == 0 && *ps16Y == 0 && *ps16Z == 0) {
    return false;
  }
  return true;
}



