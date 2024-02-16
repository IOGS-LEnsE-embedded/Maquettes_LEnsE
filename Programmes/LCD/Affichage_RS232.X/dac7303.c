/*
 * Julien VILLEMEJANE - LEnsE - IOGS
 *
 * Bibliotheque de fonctions pour le DAC AD7303 - SPI - 8 bits - 2 sorties
 * Testee sur PIC16F1509
 *
 * A inclure dans les projets
 * #include "dac7303.h"
 * Necessite la bibliothèque spi_1509.h / spi.c
 */
 
#include <xc.h>
#include "config.h"
#include "spi_1509.h"
#include "dac7303.h"

/*
 * Initialisation du CNA
 *  Internal Vref / Power-Up on both DACA and DACB
 *  Load DACA and DACB with VDD/2 on outputs
 */
void initDAC(void) {
    // CS DAC
    TRISCbits.TRISC1 = 0;
    CS_DAC = 1;
    __delay_ms(10);
    CS_DAC = 0;
    sendSPI(INT_REF | UPDATE_DACA);
    sendSPI(0x80);
    CS_DAC = 1;
    __delay_ms(10);
    CS_DAC = 0;
    sendSPI(INT_REF | UPDATE_DACB);
    sendSPI(0x80);
    CS_DAC = 1;
    __delay_ms(10);
    return;
}

/*
 * Changement mode de configuration
 *  entrees :
 *      mode : mode de fonctionnement souhaite
 *      val : valeur en sortie (8 bits)
 */
void changeModeDAC(char mode, char val){
    CS_DAC = 0;
    sendSPI(mode);
    sendSPI(val);
    CS_DAC = 1;
    return;
}

/*
 * Modification de la tension de sortie du DACA - Reference interne
 *  entree :
 *      val : valeur sur 8 bits de la tension a appliquer
 */
void changeDACA_IntRef(char val){
    CS_DAC = 0;
    SSPBUF = INT_REF | UPDATE_DACA;
    while(!SSPSTATbits.BF);
    SSPBUF = val;
    while(!SSPSTATbits.BF);
    CS_DAC = 1;
    return;
}

/*
 * Modification de la tension de sortie du DACB - Reference interne
 *  entree :
 *      val : valeur sur 8 bits de la tension a appliquer
 */
void changeDACB_IntRef(char val){
    CS_DAC = 0;
    SSPBUF = INT_REF | UPDATE_DACB;
    while(!SSPSTATbits.BF);
    SSPBUF = val;
    while(!SSPSTATbits.BF);
    CS_DAC = 1;
    return;
}

/*
 * Modification de la tension de sortie du DACA - Reference externe
 *  entree :
 *      val : valeur sur 8 bits de la tension a appliquer
 */
void changeDACA_ExtRef(char val){
    CS_DAC = 0;
    SSPBUF = EXT_REF | UPDATE_DACA;
    while(!SSPSTATbits.BF);
    SSPBUF = val;
    while(!SSPSTATbits.BF);
    CS_DAC = 1;
    return;
}

/*
 * Modification de la tension de sortie du DACB - Reference externe
 *  entree :
 *      val : valeur sur 8 bits de la tension a appliquer
 */
void changeDACB_ExtRef(char val){
    CS_DAC = 0;
    SSPBUF = EXT_REF | UPDATE_DACB;
    while(!SSPSTATbits.BF);
    SSPBUF = val;
    while(!SSPSTATbits.BF);
    CS_DAC = 1;
    return;
}