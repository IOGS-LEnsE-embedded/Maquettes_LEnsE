/*
--------------------------------------------------------------------------------
-- LEnsE - Institut Optique Graduate School
-- 	Julien VILLEMEJANE
--		2019-05-22
--
--		LEnsE Project - Porteuse pour modulation AM
--		PIC12F1572
--------------------------------------------------------------------------------
 * RA5  -> Test Output
 * RA0  -> Signal carre Output / DAC Output ?
 * RA4  -> Input GND / Circuit
 */

#include <xc.h>
/* CONFIGURATION WORDS - PLL On - INTOSC On - WDT Off */
#define     _XTAL_FREQ      32000000

const char sinus[16] = {16, 22, 27, 30, 31, 30, 27, 22, 16, 10, 5, 2, 0, 2, 5, 10};

// CONFIG1
#pragma config FOSC = INTOSC    // Internal Clock
#pragma config WDTE = ON        // Watchdog Timer Enable (WDT enabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable (PWRT disabled)
#pragma config MCLRE = OFF      // MCLR Pin Function Select (MCLR/VPP pin function is digital input)
#pragma config CP = OFF         // Flash Program Memory Code Protection (Program memory code protection is disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable (Brown-out Reset enabled)
#pragma config CLKOUTEN = OFF   // Clock Out Disable 

// CONFIG2
#pragma config WRT = OFF        // Flash Memory Self-Write Protection (Write protection off)
#pragma config PLLEN = ON       // PLL Enable (4x PLL enabled)
#pragma config STVREN = ON      // Stack Overflow/Underflow Reset Enable (Stack Overflow or Underflow will cause a Reset)
#pragma config BORV = LO        // Brown-out Reset Voltage Selection (Brown-out Reset Voltage (Vbor), low trip point selected.)
#pragma config LPBOREN = OFF    // Low Power Brown-out Reset enable bit (LPBOR is disabled)
#pragma config LVP = ON         // Low-Voltage Programming Enable (Low-voltage programming enabled)

/* CONSTANTS DEFINITIONS */
#define     LED_Test        PORTAbits.RA5
#define     Sig_Out         PORTAbits.RA0

/* FUNCTIONS */
void initTMR0(void);
void initDAC1(void);
void changeDAC1(char val);

int k = 0;

/* MAIN FUNCTION */
void main(void){
    /* Pins Initialization */
    ANSELA = 0;                 // Digital mode for all PORTA pins
    TRISAbits.TRISA5 = 0;       // LED_Test in Output mode
    LED_Test = 1;               // LED_Test On
    TRISAbits.TRISA0 = 0;       // Signal in Output mode
    TRISAbits.TRISA4 = 1;       // Input GND in Input mode
    __delay_us(50);
        
    initTMR0();
//    initDAC1();
    
    while(1);
    return;
}

/*
 *  initDAC1
 *      Fonction d'initialisation du DAC 5 bits / voie 1
 */
void initDAC1(void){
    DACCON0bits.DACPSS = 0;    // VDD as reference
    DACCON0bits.DACEN = 1;     // DAC enable
    DACCON0bits.DACOE = 1;     // DAC Out enable
}

/*
 *  changeDAC1
 *      Fonction d'envoi d'une valeur analogique sur DAC 5 bits / voie 1
 */
void changeDAC1(char val){
    DACCON1bits.DACR = (val & 0x1F);
    DACCON0bits.DACOE = 1;     // DAC Out enable
}

/*
 *  initTMR0
 *      Fonction d'initialisation des interruptions sur le timer 0
 */
void initTMR0(void){
    /* Initialization */
    OSCCONbits.SPLLEN = 1;
    OSCCONbits.SCS = 0b00;
    OSCCONbits.IRCF = 0b1110;    // FOSC = 4 x 8 MHz (PLL On)
    
    OPTION_REGbits.T0CS = 0;
    OPTION_REGbits.PSA = 1;    
        
    INTCONbits.T0IF = 0;
    INTCONbits.T0IE = 1;
    INTCONbits.GIE = 1;
}

/* Interruption Routine */
__interrupt(high_priority) void _Function_Interruption(void)  
{   
    if(INTCONbits.T0IF == 1){
        /* changeDAC1(sinus[k]);
        if(k >= 15) k = 0;
        else k++;
        TMR0 = 250;
         */
        
        Sig_Out = !Sig_Out;
        TMR0 = 80;
        
        INTCONbits.T0IF = 0;
    }
    return;
}