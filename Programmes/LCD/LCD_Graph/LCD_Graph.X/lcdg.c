/*
 * Projet LEnsE - LCD DOG 128x64
 * Julien VILLEMEJANE - LEnsE
 * 
 * Bibliothèque de fonctions pour l'utilisation de l'écran LCD DOG 128L
 * 128*64 pixels en mode SPI
 * A inclure dans les projets
 * #include "lcdg.h"
 */
#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "config2.h"
#include "lcdg.h"

/* Liaison SPI */
#define SSPSS   PORTCbits.RC6   // out
#define SSPCK   PORTBbits.RB6   // out
#define SSPSDO  PORTCbits.RC7   // out
#define RS_LCD  PORTCbits.RC1   // out
#define A0_LCD  PORTBbits.RB4   // out

/* Initialisation de la liaison SPI */
void initSPI(void){
    // INPUT / OUTPUT
    TRISCbits.TRISC6 = 0;   // SS
    TRISBbits.TRISB6 = 0;   // CK
    TRISCbits.TRISC7 = 0;   // SDO
    TRISCbits.TRISC1 = 0;   // RS_LCD
    TRISBbits.TRISB4 = 0;   // A0_LCD
    SSPSS = 1;
    RS_LCD = 1;
    A0_LCD = 0;
    
    // SSPxSTAT
    SSPSTATbits.SMP = 0;   // Input data sampled at middle of data output time
    SSPSTATbits.CKE = 0;   // Transmit occurs on transition from Idle to active clock state
    // SSPxCON1
    SSPCON1bits.CKP = 1;   // Idle state for clock is a high level
    SSPCON1bits.SSPEN = 1; // Enables serial port and configures SCKx, SDOx, SDIx and SSx as the source of the serial port pins
    SSPCON1bits.SSPM = 0b0010; // Synchronous Serial Port Mode Select bits - SPI Master mode, clock = F OSC /4
            // Avec FOSC = 16 MHz -> Vitesse de l'horloge = 4 MHz
    // SSPxCON2/3 - only for I2C
    return;
}

/* Envoi d'une donnée en SPI */
void sendSPI(char c){
    SSPBUF = c;
    while(!SSPSTATbits.BF); // Wait for Data Transmit/Receipt complete
    return;
}


void writeCmdLCDG(char c){
    SSPSS = 0;
    RS_LCD = 1;
    A0_LCD = 0;
    sendSPI(c);
    SSPSS = 1; 
    return;
}

void writeLCDG(char c){
    SSPSS = 0;
    RS_LCD = 1;
    A0_LCD = 1;
    sendSPI(c);
    SSPSS = 1;
    return;
}

/* Initialisation LCD DOG 163 - SPI / 3 lines */
void initLCDG_DOG(void){
    initSPI();
    SSPSS = 1;
    RS_LCD = 0;
    __delay_ms(100);
    SSPSS = 1;
    RS_LCD = 1;
    A0_LCD = 0;
        
    writeCmdLCDG(0x40);
    writeCmdLCDG(0xA1);
    writeCmdLCDG(0xC0);
    writeCmdLCDG(0xA6);
    writeCmdLCDG(0xA2);
    writeCmdLCDG(0x2F);
    writeCmdLCDG(0xF8);
    writeCmdLCDG(0x00);
    writeCmdLCDG(0x27);
    writeCmdLCDG(0x81);
    writeCmdLCDG(0x10);
    writeCmdLCDG(0xAC);
    writeCmdLCDG(0x00);
    writeCmdLCDG(0xAF);    
    __delay_ms(10);
    writeLCDG(0xAA);
    return;
}

void clearLCDG(void){
    char pa, col;
    for(pa = 0; pa < PAGE_MAX; pa++){
        setPositionLCDG(0, pa);
        SSPSS = 0;
        A0_LCD = 1;
        for(col = 0; col < COL_MAX; col++){
            sendSPI(0x00);
        }
    }
    setPositionLCDG(0, 0);
    return;
}

void setPositionLCDG(char colonne, char page){
    writeCmdLCDG(0x10 + (colonne >> 4));
    writeCmdLCDG(0x00 + (colonne & 0x0F));
    writeCmdLCDG(0xB0 + (page & 0x0F));    
    return;
}

void writeStrLCDG(char c[], char ligne, char colonne){
    char i = 0;
    setPositionLCDG(ligne, colonne);
    while(c[i] != '\0'){
        writeLCDG(c[i]);
        i++;
    }
    return;
}

void plotImageLCDG(char *t){
    char pa, col;
    for(pa = 0; pa < PAGE_MAX; pa++){
        setPositionLCDG(0, pa);
        SSPSS = 0;
        A0_LCD = 1;
        for(col = 0; col < COL_MAX; col++){
            sendSPI(t[pa * 128 + col]);
        }
    }   
}

