/****************************************************************************/
/*  DMX_MIDI module library                                                 */
/****************************************************************************/
/*  LEnsE / Julien VILLEMEJANE       /   Institut d'Optique Graduate School */
/****************************************************************************/
/*  Library - DMX_MIDI.cpp file                                             */
/****************************************************************************/
/*  Tested on Nucleo-L476RG / 11th nov 2021                                 */
/****************************************************************************/

#include "DMX_MIDI.h"
#include <cstdint>

/* Entrées - Sorties */
DigitalOut      debug_out(D13);
// DMX
BufferedSerial  dmx(PA_0, PA_1);
DigitalOut      out_tx(D5);
DigitalOut      start(D4);     //envoie des données
DigitalOut      enableDMX(D6);
// MIDI
BufferedSerial  midi(D8, D2);
//BufferedSerial  midi(USBTX, USBRX);
// Analogiques
AnalogIn        CV_volume(PC_1);
AnalogIn        CV_pitch(PB_0);
AnalogIn        variationR(PC_0);
AnalogIn        variationG(PC_2);
AnalogIn        variationB(PC_3);

/* Variables globales */
uint8_t         dmx_data[SAMPLES] = {0};
uint16_t        channels_int_on, channels_int_off;
int             rgb;
// Midi
uint8_t         cpt_midi;
uint8_t         new_data_midi, new_note_midi, new_CC_midi;
uint8_t         midi_data[3], channel_data, note_data, velocity_data;

/* Fonction d'initialisation de la liaison DMX */
void initDMX(void){
    dmx.set_baud(250000);
    dmx.set_format (8, SerialBase::None, 2);
    enableDMX = 0;
    // Initialisation canaux DMX
    for(int k = 0; k < SAMPLES; k++){
        dmx_data[k] = 0;
    }    
    updateDMX();
} 

/* Fonction de mise à jour de la sortie DMX */
void updateDMX(){
    enableDMX = 1;
    start = 1;      // /start
    out_tx = 0;     // break
    wait_us(88);    
    out_tx = 1;     // mb
    wait_us(8);     
    out_tx = 0;     // break
    start = 0;
    uint8_t     temp_data = 0;
    dmx.write(&temp_data, 1);     // Start
    for(int i = 0; i < SAMPLES; i++){
        dmx.write(&dmx_data[i], 1); ;     // data
    }
    enableDMX = 0;
    wait_us(2000); // time between frame  
}

/* Fonction d'initialisation de la liaison MIDI */
void initMIDI(void){
    midi.set_baud(31250);
    midi.set_format(8, SerialBase::None, 1);
    midi.sigio(callback(ISR_midi_in));
    channels_int_on = 0;
    channels_int_off = 0;
}
/* Detection d'une note reçue en MIDI */
void detectNoteMIDI(void){
    if(new_note_midi == 1){
        playNote(note_data, velocity_data);
        new_note_midi = 0;
        printf("%x - %d %d \r\n", midi_data[0], note_data, velocity_data);

        updateDMX();
    }
}

/* Joue une note sur la liaison MIDI */
void playNote(char note, char velocity){
    uint8_t     temp_data[3];
    temp_data[0] = MIDI_NOTE_ON;
    temp_data[1] = note;
    temp_data[2] = velocity;
    midi.write(temp_data, 3);
}

/* Stoppe une note sur la liaison MIDI */
void stopNote(char note, char velocity){
    uint8_t     temp_data[3];
    temp_data[0] = MIDI_NOTE_OFF;
    temp_data[1] = note;
    temp_data[2] = velocity;
    midi.write(temp_data, 3);
}

/* Fonction d'interruption sur MIDI */
void ISR_midi_in(void){
    debug_out = !debug_out;
    char data;
    if(midi.readable()) midi.read(&data, 1); 
    if(data >= 128)
        cpt_midi = 0;
    else
        cpt_midi++;
    midi_data[cpt_midi] = data;
    
    if(cpt_midi == 2){
        cpt_midi = 0;

        switch(midi_data[0] & 0xF0){
            case    MIDI_NOTE_ON:
                new_note_midi = 1;
                channel_data = midi_data[0] & 0x0F;
                channels_int_on += ((0b1) << channel_data);
                note_data = midi_data[1];
                velocity_data = midi_data[2];
                if(velocity_data == 0){ new_note_midi = 2;}        // equivalent to note off if velocity is equal to 0
                break;
            case    MIDI_NOTE_OFF:
                new_note_midi = 2;
                channel_data = midi_data[0] & 0x0F;
                channels_int_off += ((0b1) << channel_data);
                note_data = midi_data[1];
                velocity_data = midi_data[2];
                break;
            case    MIDI_CONTINUOUS_CTL :
                new_CC_midi = 1;                
            default:
                new_data_midi = 1;
        }
    }
}