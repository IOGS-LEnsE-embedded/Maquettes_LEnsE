/****************************************************************************/
/*  DMX_MIDI module library                                                 */
/****************************************************************************/
/*  LEnsE / Julien VILLEMEJANE       /   Institut d'Optique Graduate School */
/****************************************************************************/
/*  Library - DMX_MIDI.h file                                               */
/****************************************************************************/
/*  Tested on Nucleo-L476RG / 11th nov 2021                                 */
/****************************************************************************/

#ifndef     DMX_MIDI_H_INCLUDED
#define     DMX_MIDI_H_INCLUDED

#define     SAMPLES             512 
#define     MIDI_NOTE_ON        0x90
#define     MIDI_NOTE_OFF       0x80
#define     MIDI_CONTINUOUS_CTL 0xB0
#define     MIDI_FIRST_NOTE     20
#define     MIDI_NB_NOTE_PER_OCT    12

#include    "mbed.h"

/* Entrées - Sorties */

extern      DigitalOut  debug_out;

extern      BufferedSerial      dmx;
extern      DigitalOut  out_tx;
extern      DigitalOut  start;     //envoie des données
extern      DigitalOut  enableDMX;
extern      AnalogIn    CV_volume;
extern      AnalogIn    CV_pitch;

extern      AnalogIn    variationR;
extern      AnalogIn    variationG;
extern      AnalogIn    variationB;

/* Variables globales */
extern      uint8_t     dmx_data[];
extern      int         rgb;
extern      uint16_t    channels_int_on , channels_int_off;
extern      uint8_t     cpt_midi;
extern      uint8_t     new_data_midi, new_note_midi, new_CC_midi;
extern      uint8_t     midi_data[], channel_data, note_data, velocity_data;

/* Fonctions */  
/* Fonction d'initialisation de la liaison DMX */
void initDMX(void);
/* Fonction de mise à jour de la sortie DMX */
void updateDMX();

/* Fonction d'initialisation de la liaison MIDI */
void initMIDI(void);
/* Joue une note sur la liaison MIDI */
void playNote(char note, char velocity);
/* Stoppe une note sur la liaison MIDI */
void stopNote(char note, char velocity);
/* Detection d'une note reçue en MIDI */
void detectNoteMIDI(void);

/* Fonction d'interruption sur MIDI */
void ISR_midi_in(void);

#endif