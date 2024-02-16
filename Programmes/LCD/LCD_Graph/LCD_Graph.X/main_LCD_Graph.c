/*
 * Projet LCD Graph
 * Julien VILLEMEJANE - LEnsE
 * 
 * Programme principal - PIC16F1509
 */

#include <xc.h>

#include "config2.h"
#include "lcdg.h"
#include "images.h"

#define     LED     PORTBbits.RB5



void initPIC(void);

void main(void) {
    initPIC();
    initLCDG_DOG();
    TRISBbits.TRISB5 = 0;   // LED_TEST
    LED = 0;
    clearLCDG();
    plotImageLCDG(img_100ans);
    while(1){
        plotImageLCDG(img_100ans);
        __delay_ms(1000);
        plotImageLCDG(img_lense);
        __delay_ms(1000);
        plotImageLCDG(img_iogs);
        __delay_ms(1000);
    }
    return;
}

void initPIC(void){
    // Mode numerique
    ANSELA = 0;
    ANSELB = 0;
    ANSELC = 0;
    // FOSC = 2 MHz
    OSCCONbits.IRCF = 0b1100;
    return;
}
