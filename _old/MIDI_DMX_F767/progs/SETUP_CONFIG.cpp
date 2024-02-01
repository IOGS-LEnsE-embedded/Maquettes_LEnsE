/****************************************************************************/
/*  SETUP_CONFIG module library                                             */
/****************************************************************************/
/*  LEnsE / Julien VILLEMEJANE       /   Institut d'Optique Graduate School */
/****************************************************************************/
/*  Library - SETUP_CONFIG.cpp file                                         */
/****************************************************************************/
/*  Tested on Nucleo-L476RG / 11th nov 2021                                 */
/****************************************************************************/

#include    "SETUP_CONFIG.h"
#include    "DMX_MIDI.h"

/* Fonctions */  
/* Detection d'une note reçue en MIDI */
void detectNoteMIDI_setup(void){
    uint8_t     temp_cpt;
    short       adr;

    if(new_note_midi == 1){         // NOTE_ON
        if(DEBUG_MODE)  printf("%x - C=%x - %d %d \r\n", midi_data[0], channels_int_on, note_data, velocity_data);
        for(int k = 0; k < NB_SPOTS; k++){
            // Arbitrary colors
            dmx_data[list_add[k]-1] = 2*velocity_data;  // Main DIMMER - Eurolite Hybrid Spot
            dmx_data[list_add[k]-1 +1] = (10*note_data + 4*k)%255;  // Red - Eurolite Hybrid Spot
            dmx_data[list_add[k]-1 +2] = (13*note_data + 5*k)%255;  // Green - Eurolite Hybrid Spot
            dmx_data[list_add[k]-1 +3] = (7*note_data + 7*k)%255;  // Blue - Eurolite Hybrid Spot
            dmx_data[list_add[k]-1 +4] = 0;  // White - Eurolite Hybrid Spot
            dmx_data[list_add[k]-1 +5] = 0;  // No Function - Eurolite Hybrid Spot
        }
        channels_int_on = 0;
    }
    if(new_note_midi == 2){        // NOTE_OFF
        if(DEBUG_MODE)  printf("N = %x - C=%d - %d %d \r\n", midi_data[0], channel_data, note_data, velocity_data);

        channels_int_off = 0;    
    }
    if(new_note_midi != 0){
        new_note_midi = 0;  
    }
}

/* Detection d'une donnée reçue en MIDI */
void detectDataMIDI_setup(void){
    if(new_data_midi == 1){         // NOTE_ON
        if(DEBUG_MODE)  printf("D = %x - C=%d - %d %d \r\n", midi_data[0], channel_data, note_data, velocity_data);
    }
        
    if(new_data_midi != 0){
        new_data_midi = 0;  
    }
}

/* Detection d'un controle continu reçu en MIDI */
void detectContCtlMIDI_setup(void){
    if(new_CC_midi == 1){
        if(DEBUG_MODE)  printf("D = %x - V = %d \r\n", midi_data[0], midi_data[1]);
    
        switch(midi_data[1]){
            case    0x07    :  
                break;
            case    0x49   :
                break;
            default :
                debug_out = debug_out;
        }
        new_CC_midi = 0;
    }
}