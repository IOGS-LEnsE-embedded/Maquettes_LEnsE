/*
 * Julien VILLEMEJANE - LEnsE - IOGS
 *
 * Bibliotheque de fonctions pour la liaison SPI - PIC16F1503
 *  version 1.1 - 2016-05-01
 *
 * A inclure dans les projets
 * #include "spi.h"
 */


/* Liaison SPI */
#define SSPSS   PORTCbits.RC0   // out
#define SSPCK   PORTBbits.RB6   // out
#define SSPSDO  PORTCbits.RC7   // out

/* Fonctions */

/* 
 * Initialisation de la liaison SPI 
 *  entree : 
 *      - mode : mode de fonctionnement, entier compris entre 0 et 3
 */
void initSPI(char mode);

/* 
 * Envoi d'une donnee en SPI 
 *  entree : 
 *      - data : octet a envoyer
 */
void sendSPI(char data);
