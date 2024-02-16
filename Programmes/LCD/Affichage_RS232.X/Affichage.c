/*
 * Projet WDM
 * Julien VILLEMEJANE - LEnsE
 * Emetteur
 * Programme principal - PIC16F1509
 */

#include <xc.h>
#include <stdio.h>
#include <string.h>

#include "config.h"
#include "spi_1509.h"
#include "lcd_1509.h"

#define     LED                 PORTCbits.RC5

/* Variables globales */
char ligne[16];
char receivRX;
char cpt_ligne;

/* Fonctions */
void initPIC(void);
void initRS232(void);

/* Fonction principale */
void main(void) {
    initPIC();
    __delay_ms(2000);
    initRS232();
    initLCD_DOG();
    __delay_ms(100);
    clearLCD();
    __delay_ms(100);
    cpt_ligne = 2;
    writeCstStrLCD("Affichage LCD", 1, 1);
    writeCstStrLCD("GND-x-5V-TX-RX-x", 2, 1);
    /* Boucle infinie */
    while(1){
        LED = 0;
        TXREG = '2';
        __delay_ms(100);
    }
    
    return;
}

void initPIC(void){
    // Mode numerique
    ANSELA = 0;
    ANSELB = 0;
    ANSELC = 0;
    // LED sur RC5
    TRISCbits.TRISC5 = 0;
    LED = 1;
    // FOSC = 16 MHz
    OSCCONbits.IRCF = 0b1111;

    //INTCONbits.GIE = 1;
    return;
}

void initRS232(void){
    // Initialisation entrée/sortie
    TRISBbits.TRISB5 = 1;   // RX
    TRISBbits.TRISB7 = 0;   // TX
    // Initialisation réception - 9600 bauds / voir table 22-5 doc 16F1509
    // SYNC = 0, BRGH = 0, BRG16 = 0, FOSC = 16 MHz
    // -> SPBRG = 25
    BAUDCONbits.BRG16 = 0;
    TXSTAbits.BRGH = 0;
    TXSTAbits.SYNC = 0;
    SPBRGH = 0;
    SPBRGL = 25;
    
    // Initialisation émission
    TXSTAbits.TXEN = 1;
    
    // Validation module TX/RX
    RCSTAbits.SPEN = 1;
    // Interruption sur RX
    PIE1bits.RCIE = 1;
    INTCONbits.PEIE = 1;
    INTCONbits.GIE = 1;
    // Mise en route module
    RCSTAbits.CREN = 1;
    
}

void interrupt isr(void){
    if(PIR1bits.RCIF == 1){
        receivRX = RCREG;
        //LED = !LED;
        
        if((receivRX == '\0') || (receivRX == '\r')){
            if(cpt_ligne < 3)   cpt_ligne += 1;
            else                cpt_ligne = 1;
            setPosition(cpt_ligne, 1);
        }
        else{
            writeLCD(receivRX);
        }
        PIR1bits.RCIF = 0;
    }
}