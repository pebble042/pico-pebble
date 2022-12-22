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
#include "pico/stdlib.h"

const uint      LED_PIN     = 25;

void setup() {

    stdio_init_all();                           //  initializes standard I/O.
    gpio_init(LED_PIN);                         //  Initialise LED pin

    //  Set a single GPIO direction.
    gpio_set_dir(LED_PIN, "true");

}

// The name of this function is important for Arduino compatibility.
void loop() {

    //  LED  "ON"
        gpio_put(LED_PIN,1);                    //  Drive a single GPIO high/low
        printf("ON\n");
        sleep_ms(1000);

        //  LED "OFF"
        gpio_put(LED_PIN,0);                     //  Drive a single GPIO low
        printf("OFF\n");
        sleep_ms(1000);

        return ;

}
