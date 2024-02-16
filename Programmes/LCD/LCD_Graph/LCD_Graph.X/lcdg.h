/*
 * Projet LEnsE - LCD DOG 128x64
 * Julien VILLEMEJANE - LEnsE
 * 
 * Bibliothèque de fonctions pour l'utilisation de l'écran LCD DOG 128L
 * 128*64 pixels en mode SPI
 * A inclure dans les projets
 * #include "lcdg.h"
 */

#define     PAGE_MAX    8
#define     COL_MAX     128

// SPI
void initSPI(void);
void sendSPI(char c);
// LCD
void initLCDG_DOG(void);
void clearLCDG(void);
void writeCmdLCDG(char c);
void writeLCDG(char c);
void writeStrLCDG(char c[], char ligne, char colonne);
void setPositionLCDG(char colonne, char page);
void plotImageLCDG(char *t);