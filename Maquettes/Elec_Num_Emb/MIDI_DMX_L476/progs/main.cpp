/* mbed Microcontroller Library
 * Copyright (c) 2019 ARM Limited
 * SPDX-License-Identifier: Apache-2.0
 */

#include "mbed.h"
#include "DMX_MIDI.h"
#include "SETUP_CONFIG.h"

#define WAIT_TIME_MS 500 

int main()
{

    debug_out = 1;
    // Initialisation périphériques
    initMIDI();
    initDMX();

    // Init all DMX channels to 0 / No light
    for(int k = 0; k < NB_SPOTS; k++){
        for(int j = 0; j < list_chan[k]; j++){
            dmx_data[list_add[k]+j-1] = 0;
        }
    }

    /* DMX */
    updateDMX();
    wait_us(10000);
 

    while(true) { 
        /* MIDI */
        detectNoteMIDI_setup();
        detectDataMIDI_setup();
        detectContCtlMIDI_setup();
        /* DMX */
        updateDMX();
        wait_us(12000);
        //debug_out = !debug_out;
    }
}
