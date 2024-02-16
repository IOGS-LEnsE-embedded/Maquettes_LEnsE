/*
 * TP EITI / 1A2S / Theme 4
 * Julien VILLEMEJANE - LEnsE
 * 
 * Bibliothèque de fonctions pour l'utilisation de l'écran LCD DOG EA 163
 * 3 x 16 caractères en mode SPI
 * A inclure dans les projets
 * #include "lcd.h"
 */

#include <xc.h>
#include <stdio.h>
#include "config.h"
#include "spi_1509.h"
#include "lcd_1509.h"

/* 
 * Initialisation de l'écran LCD 
 */
void initLCD_DOG(void){
    initSPI(3);
    TRISAbits.TRISA2 = 0;   // RS_LCD en sortie
    __delay_ms(10);
    SSPSS = 0;
    RS_LCD = 0;
    sendSPI(0x29);  // Function Set - table 1
    sendSPI(0x1D);  // Bias Set
    sendSPI(0x50);  // Power Control
    sendSPI(0x6C);  // Follower Control
    sendSPI(0x7C);  // Contrast Set
    sendSPI(0x03);  // Function Set - table 0
    sendSPI(0x0F);
    sendSPI(0x01);  // Clear Display
    __delay_ms(2);
    sendSPI(0x06);  // Display On
    __delay_ms(10);
    RS_LCD = 1;
    SSPSS = 1;
    __delay_ms(10);
    writeLCD('_');
    return;
}

/* 
 * Remise à zéro de l'affichage sur l'écran LCD 
 */
void clearLCD(void){
    SSPSS = 0;
    RS_LCD = 0;
    writeCmdLCD(0x01);    // Clear Display
    __delay_ms(2);        // delay 2 ms
    RS_LCD = 1;
    SSPSS = 1;    
    return;
}

/* 
 * Envoi d'une commande à l'écran LCD 
 *  entree : 
 *      - c : commande à transmettre
 */
void writeCmdLCD(char c){
    SSPSS = 0;
    RS_LCD = 0;
    sendSPI(c);
    __delay_ms(1);   
    RS_LCD = 1;
    SSPSS = 1; 
    return;
}

/* 
 * Envoi d'un caractère à afficher à la position du curseur sur l'écran LCD 
 *  entree : 
 *      - c : caractère à afficher
 */
void writeLCD(char c){
    SSPSS = 0;
    RS_LCD = 1;
    sendSPI(c);
    __delay_ms(1);
    SSPSS = 1;
    return;
}

/* 
 * Envoi d'une chaine de caractère à afficher 
 * à une position particulière sur l'écran LCD 
 *  entrees : 
 *      - c[] : chaine de caractère à afficher
 *      - ligne : ligne sur laquelle commencer l'affichage
 *      - colonne : colonne à partir de laquelle commencer l'affichage
 */
void writeStrLCD(char c[], char ligne, char colonne){
    char i = 0;
    setPosition(ligne, colonne);
    while(c[i] != '\0'){
        writeLCD(c[i]);
        i++;
    }
    return;
}

/* 
 * Envoi d'une chaine constante de caractère à afficher 
 * à une position particulière sur l'écran LCD 
 *  entrees : 
 *      - c[] : chaine de caractère constante à afficher
 *      - ligne : ligne sur laquelle commencer l'affichage
 *      - colonne : colonne à partir de laquelle commencer l'affichage
 */
void writeCstStrLCD(const char c[], char ligne, char colonne){
    char i = 0;
    setPosition(ligne, colonne);
    while(c[i] != '\0'){
        writeLCD(c[i]);
        i++;
    }
    return;
}

/* 
 * Position du curseur sur l'écran LCD
 *  entrees : 
 *      - ligne : ligne sur laquelle positionner le curseur
 *      - colonne : colonne sur laquelle positionner le curseur
 */
void setPosition(char ligne, char colonne){
    char adress = 0x80 + ((ligne-1) * 16) + (colonne - 1);
    writeCmdLCD(adress);
    __delay_ms(1);
    return;
}