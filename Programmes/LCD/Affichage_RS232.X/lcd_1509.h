/*
 * TP EITI / 1A2S / Theme 4
 * Julien VILLEMEJANE - LEnsE
 * 
 * Bibliothèque de fonctions pour l'utilisation de l'écran LCD DOG EA 163
 * 3 x 16 caractères en mode SPI - Nécessite la bibliothèque spi.h
 * A inclure dans les projets
 * #include "spi.h"
 * #include "lcd.h"
 */

#include "spi_1509.h"

/* Ecran LCD */
#define RS_LCD   PORTAbits.RA2   // out

// LCD
/* 
 * Initialisation de l'écran LCD 
 */
void initLCD_DOG(void);

/* 
 * Remise à zéro de l'affichage sur l'écran LCD 
 */
void clearLCD(void);

/* 
 * Envoi d'une commande à l'écran LCD 
 *  entree : 
 *      - c : commande à transmettre
 */
void writeCmdLCD(char c);

/* 
 * Envoi d'un caractère à afficher à la position du curseur sur l'écran LCD 
 *  entree : 
 *      - c : caractère à afficher
 */
void writeLCD(char c);

/* 
 * Envoi d'une chaine de caractère à afficher 
 * à une position particulière sur l'écran LCD 
 *  entrees : 
 *      - c[] : chaine de caractère à afficher
 *      - ligne : ligne sur laquelle commencer l'affichage
 *      - colonne : colonne à partir de laquelle commencer l'affichage
 */
void writeStrLCD(char c[], char ligne, char colonne);

/* 
 * Envoi d'une chaine constante de caractère à afficher 
 * à une position particulière sur l'écran LCD 
 *  entrees : 
 *      - c[] : chaine de caractère constante à afficher
 *      - ligne : ligne sur laquelle commencer l'affichage
 *      - colonne : colonne à partir de laquelle commencer l'affichage
 */
void writeCstStrLCD(const char c[], char ligne, char colonne);

/* 
 * Position du curseur sur l'écran LCD
 *  entrees : 
 *      - ligne : ligne sur laquelle positionner le curseur
 *      - colonne : colonne sur laquelle positionner le curseur
 */
void setPosition(char ligne, char colonne);