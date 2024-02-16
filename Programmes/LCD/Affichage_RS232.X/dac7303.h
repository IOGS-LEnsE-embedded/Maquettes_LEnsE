/*
 * Julien VILLEMEJANE - LEnsE - IOGS
 *
 * Bibliotheque de fonctions pour le DAC AD7303 - SPI - 8 bits - 2 sorties
 * Testee sur PIC16F1509
 *  version 1.1 - 2016-05-01
 *
 * A inclure dans les projets
 * #include "dac7303.h"
 * Necessite la bibliotheque spi.h / spi.c
 */

/* Liaison SPI pour DAC AD7303 */
#define     CS_DAC              PORTCbits.RC6

/* Modes de fonctionnement */
#define     INT_REF         0x00        // Internal reference voltage Vref ? VDD/2
#define     EXT_REF         0x80        // External reference voltage

#define     POWER_DOWN_DACA 0b00001000  // Switch off DACA
#define     POWER_DOWN_DACB 0b00010000  // Switch off DACB

#define     UPDATE_DACA     0b00000011  // Update DACA from shift register
#define     UPDATE_DACB     0b00100111  // Update DACB from shitf register

/* Fonctions */

/*
 * Initialisation du CNA
 *  Internal Vref / Power-Up on both DACA and DACB
 *  Load DACA and DACB with VDD/2 on outputs
 */
void initDAC(void);

/*
 * Changement mode de configuration
 *  entrees :
 *      mode : mode de fonctionnement souhaite
 *      val : valeur en sortie (8 bits)
 */
void changeModeDAC(char mode, char val);

/*
 * Modification de la tension de sortie du DACA - Reference interne
 *  entree :
 *      val : valeur sur 8 bits de la tension a appliquer
 */
void changeDACA_IntRef(char val);

/*
 * Modification de la tension de sortie du DACB - Reference interne
 *  entree :
 *      val : valeur sur 8 bits de la tension a appliquer
 */
void changeDACB_IntRef(char val);

/*
 * Modification de la tension de sortie du DACA - Reference externe
 *  entree :
 *      val : valeur sur 8 bits de la tension a appliquer
 */
void changeDACA_ExtRef(char val);

/*
 * Modification de la tension de sortie du DACB - Reference externe
 *  entree :
 *      val : valeur sur 8 bits de la tension a appliquer
 */
void changeDACB_ExtRef(char val);