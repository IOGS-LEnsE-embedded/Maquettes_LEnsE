/****************************************************************************/
/*  SETUP_CONFIG module library                                             */
/****************************************************************************/
/*  LEnsE / Julien VILLEMEJANE       /   Institut d'Optique Graduate School */
/****************************************************************************/
/*  Library - SETUP_CONFIG.h file                                           */
/****************************************************************************/
/*  Tested on Nucleo-L476RG / 11th nov 2021                                 */
/****************************************************************************/


#ifndef     SETUP_CONFIG_H_INCLUDED
#define     SETUP_CONFIG_H_INCLUDED
#include    "mbed.h"

#define     DEBUG_MODE      true
#define     NB_SPOTS    4

/* Variables globales */
const int list_add[NB_SPOTS] = {33, 41, 49, 57};
const int list_chan[NB_SPOTS] = {7, 7, 7, 7};

/* Fonctions */  
/* Detection d'une note reçue en MIDI */
void detectNoteMIDI_setup(void);
/* Detection d'une donnée reçue en MIDI */
void detectDataMIDI_setup(void);
/* Detection d'un controle continu reçu en MIDI */
void detectContCtlMIDI_setup(void);

#endif