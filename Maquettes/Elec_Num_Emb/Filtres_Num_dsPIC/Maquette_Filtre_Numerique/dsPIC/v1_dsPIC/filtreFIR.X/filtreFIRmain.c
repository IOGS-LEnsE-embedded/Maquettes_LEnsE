/*
--------------------------------------------------------------------------------
-- LEnsE - Institut Optique Graduate School
-- 	Julien VILLEMEJANE
--		2015-04-09
--
--		LEnsE Project - Filtre numerique
--		dsPIC30F2011 - FIR Filter - Low Pass - Fc = 604 Hz - Fe = 5 kHz
--------------------------------------------------------------------------------
 * RB0..3 -> D0..3 / DAC0800 / OUTPUT
 * RC14..13 -> D4..5 / DAC0800 / OUTPUT
 * RB5..RB4 -> D6..7 / DAC0800 / OUTPUT
 * RC15 -> MODE / INPUT
 * RB7/AN7 -> SIG_IN / ANALOG INPUT
 * RC15/CLKO -> FOSC/4
 * RD0 -> TEST OUTPUT
 */

#include <xc.h>
#include "config.h"     // PLLx8 -> FOSC = 58,96 MHz
#include "FIR_Filter.h"
#include "filtre660.h"

// Global variables definition
int measure;
int m[5];
int i;
int somme;
int output;

// DAC writing subroutine
void writeToDAC(int value){
    value = value >> 4;
    LATBbits.LATB0 = (value >> 0);
    LATBbits.LATB1 = (value >> 1);
    LATBbits.LATB2 = (value >> 2);
    LATBbits.LATB3 = (value >> 3);
    LATCbits.LATC14 = (value >> 4);
    LATCbits.LATC13 = (value >> 5);
    LATBbits.LATB5 = (value >> 6);
    LATBbits.LATB4 = (value >> 7);
}

// ADC Interrupt Subroutine
void __attribute__((__interrupt__)) _ADCInterrupt(void)
{
	PORTDbits.RD0 = !PORTDbits.RD0;     // To check sampling frequency
	measure = ADCBUF0;
	BlockFIRFilter( &filtre660Filter, &measure, &output, 1);
    if(PORTCbits.RC15 == 1)
        output = -measure;
    else{
        /*
        somme = 0;
        for(i = 0; i < 4; i++){
            m[i] = m[i+1];
            somme += m[i];
        }
        m[4] = measure;
        somme += m[4];
        output = somme / 5;
        */
        output = -output;
    }

	writeToDAC(output);
	IFS0bits.ADIF = 0; // interrupt flag rearming
}

// Initialization subroutine
void initPIC(){
    // Port B
    ADPCFG=0xFFFF;          // All pins in digital mode
    ADPCFGbits.PCFG7 = 0;   // AN7 in analog mode
    ADCSSL = 0;             // No analog inputs in the scanning list
    ADCSSLbits.CSSL7 = 1;   // AN7 in scanning list
    TRISB = 0xFFC0;         // All PORTB pins in output mode excepts RB6/RB7
    TRISCbits.TRISC13 = 0;  // RC13 in output mode
    TRISCbits.TRISC14 = 0;  // RC14 in output mode
    TRISCbits.TRISC15 = 1;  // RC14 in input mode
    TRISDbits.TRISD0 = 0;   // RD0  in output mode
    // Timer 3 Configuration for ADC
	T3CONbits.TCS=0;        // internal oscillator
	T3CONbits.TCKPS=0b00;   // prescaler to 1
	T3CONbits.TGATE=0;
	T3CONbits.TSIDL=0;
	T2CONbits.T32=0;
    PR3 = 2948;             // FTMR3 = 5 kHz
    // ADC Configuration based on TMR3
	ADCON1bits.ADON = 0;
	ADCON1bits.ADSIDL = 1;      // Discontinuous mode in Idle Mode
	ADCON1bits.FORM = 0b00;     // Unsigned integer mode
	ADCON1bits.SSRC = 0b010;    // Conversion based on Timer3
	ADCON1bits.ASAM = 1;        // New conversion starts when the previous one ends
	ADCON2bits.VCFG = 0b111;    // Ref+ = AVDD / Ref- = AVSS
    ADCON2bits.CSCNA = 0;       // Do not scan inputs
    ADCON2bits.SMPI = 0b0000;   // Interrupts at the completion of conversion for each sample/convert sequence
    ADCON3bits.ADCS = 50;       // A/D Conversion Clock Select bits
    ADCON3bits.ADRC = 0;        // Clock derived from system clock
    ADCON3bits.SAMC = 1;        // Auto Sample Time bits = 1TAD
	ADCHSbits.CH0SA = 7;        // AN7 selected
    // Interrupts configuration
	INTCON1bits.NSTDIS = 0 ;    // Interrupt nesting is enabled
	IEC0bits.ADIE =1 ;          // ADC Interrupt is enabled
	IPC2bits.ADIP = 0b110 ;     // ADC Interrupt priority fixed to 6
    // Variables initialization
	measure = 0;
	output = 0;
    for(i = 0; i < 5; i++)
        m[i] = 0;
    // Timer3 and ADC are enabled
	T3CONbits.TON=1;
	ADCON1bits.ADON=1;
    // Filter initialiation
	FIRFilterInit( &filtre660Filter);
}

// Main program
int main(void) {
    initPIC();
    while(1);
    return 0;
}
