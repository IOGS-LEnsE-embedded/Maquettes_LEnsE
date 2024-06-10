/*
--------------------------------------------------------------------------------
-- LEnsE - Institut Optique Graduate School
-- 	Julien VILLEMEJANE
--		2019-05-08
--
--		LEnsE Project - Filtre numerique
--		dsPIC30F4013 - FIR Filter
--------------------------------------------------------------------------------
 * RF0  -> Test Output
 * RD3  -> Choix Mode / Input
 * RB9  -> Analog In / Input
 * RF2/RF3/RF6 -> SDI/SDO/SCK - SPI Input,Output,Output
 * RD8/RD2 -> DAC_CS/DAC_LD - Output    - DAC type MCP4921 / 12 bits
 * RB11  -> ADC_CS - Output             - ADC type MCP3201 / 12 bits
 * RB10/RB0/RB1  -> Not Used PCB Input
 */

#include <xc.h>
#include "config.h"     // PLLx8 -> FOSC = 58,96 MHz
#include "FIR_Filter.h"
#include "FIR_band_2.3k_3.7k_40dB_Fs20k.h"

#define     TEST_OUT    LATFbits.LATF0
#define     DAC_CS      LATDbits.LATD8
#define     DAC_LD      LATDbits.LATD2
#define     ADC_CS      LATBbits.LATB11
#define     CHOIX_MODE  PORTDbits.RD3

// Global variables definition
int measure;
int i;
int output;

// SPI INIT
void initSPI(void)
{
    SPI1STAT = 0x0000;
    SPI1CON = 0x0020;      //Set the SPI1 module to 8-bit Master mode
    SPI1CONbits.SPRE = 0b101;   // Prediv = 1:1
    SPI1CONbits.PPRE = 0b10;    // Postdiv = 1:4
    IFS0bits.SPI1IF = 0;    //Clear the SPI1 Interrupt Flag
    IEC0bits.SPI1IE = 0;    //SPI1 ISR processing is not enabled.
                            //SPI1 will be used in polling-mode
    SPI1STATbits.SPIEN = 1; //Turn on the SPI1 module
}

// ADC 
int convertADC(void){
    int value = 0;
    char temp, data1, data2;
    ADC_CS = 0;
    temp = SPI1BUF;
    SPI1STATbits.SPIROV = 0;
    IFS0bits.SPI1IF = 0;
    SPI1BUF = 0;
    while (IFS0bits.SPI1IF==0);
    ADC_CS = 0;
    ADC_CS = 0;  
    data1 = SPI1BUF;
    SPI1STATbits.SPIROV = 0;
    IFS0bits.SPI1IF = 0;
    SPI1BUF = 0;
    while (IFS0bits.SPI1IF==0);
    ADC_CS = 0;
    ADC_CS = 0;  
    data2 = SPI1BUF;
    ADC_CS = 1;
    value = (data1 & 0b00111111) << 6;
    value += (data2 & 0b11111100) >> 2;
    return value;
}

// DAC writing subroutine
void sendToDAC(int value){
    char temp, data1, data2;
    data1 = ((value & 0x0F00) >> 8) + 0b00110000; 
    data2 = (value & 0xFF);
    DAC_CS = 0;
    DAC_CS = 0;
    temp = SPI1BUF;
    SPI1STATbits.SPIROV = 0;
    IFS0bits.SPI1IF = 0;
    SPI1BUF = data1;
    while (IFS0bits.SPI1IF==0);
    DAC_CS = 0;
    temp = SPI1BUF;
    SPI1STATbits.SPIROV = 0;
    IFS0bits.SPI1IF = 0;
    SPI1BUF = data2;
    while (IFS0bits.SPI1IF==0);
    DAC_CS = 1;
    DAC_LD = 0;
    DAC_LD = 0;
    DAC_LD = 1;
    return;
}

// TIMER
void initTMR1(void){
    IPC0bits.T1IP = 7;  // interrupt priority
    IEC0bits.T1IE = 0;  // interruption timer
    IFS0bits.T1IF = 0;  // flag d'interruption remis à zéro
    T1CONbits.TCKPS = 0;    // 0 - PDIV = 1 / 1 - PDIV = 8 / 2 - PDIV = 64 / 3 - PDIV = 256
    T1CONbits.TCS = 0;  // internal source
    T1CONbits.TSIDL = 0;
    T1CONbits.TGATE = 0;
    PR1 = 1533;    // 16 bits !
    PR1 = 1480;
    // FTMR1 = FCYC / PREDIV / (PR1 + 1) = 30.68 MHz / 1 / 1
    T1CONbits.TON = 1; // démarrage du timer
    IEC0bits.T1IE = 1;
}

void __attribute__((__interrupt__, __auto_psv__)) _T1Interrupt (void)
{
    TEST_OUT = !TEST_OUT;
    measure = convertADC();
    //TMR1 = 0; // remise à 0 du compteur
    if(CHOIX_MODE == 1){   // Mode filtre
        measure -= 2048;
        BlockFIRFilter( &FIR_band_2Filter, &measure, &output, 1);
        output = output << 1;
        output += 2048;
    }
    else{   // Mode suiveur
        output = measure;
        output = output << 1;
    }
    sendToDAC(output);
    IFS0bits.T1IF=0; // remise à 0 du drapeau d?interruption du timer
}

// Initialization subroutine
void initPIC(){
    // Oscillator
    OSCCONbits.COSC = 0b001;    // FRC - Nominal - 7.67 MHz
    OSCCONbits.NOSC = 0b001;    // FRC
    // Avec PLL 16x / config.h 
    //      -->  FOSC = 16 x 7.67 MHz = 122.72 MHz
    //      -->  FCYC = FOSC / 4 = 30.68 MHz --> TCYC = 32.6 ns
    OSCTUN = 0;
    
    // Input/Output
    TRISFbits.TRISF0 = 0;   // RD0 - Test Output
    TRISDbits.TRISD3 = 1;   // RD3 - Mode choice Input
    
    TRISFbits.TRISF2 = 1;   // RF2 - SDI SPI Input
    TRISFbits.TRISF3 = 0;   // RF3 - SDO SPI Output
    TRISFbits.TRISF6 = 0;   // RF6 - SCK SPI Output

    TRISDbits.TRISD8 = 0;   // RD8 - DAC_CS Output
    TRISDbits.TRISD2 = 0;   // RD2 - DAC_LD Output
    DAC_CS = 1;
    DAC_LD = 1;
    
    TRISBbits.TRISB11 = 0;  // RB11 - ADC_CS Output
    ADC_CS = 1;
    
    TRISBbits.TRISB10 = 1;  // RB10 - PCB Input
    TRISBbits.TRISB0 = 1;   // RB0 - PCB Input
    TRISBbits.TRISB1 = 1;   // RB1 - PCB Input
    
    // Analog Input
    ADPCFG=0xFFFF;          // All pins in digital mode
    ADPCFGbits.PCFG9 = 0;   // AN9 in analog mode / Analog In
    ADCSSL = 0;             // No analog inputs in the scanning list
    ADCSSLbits.CSSL9 = 1;   // AN9 in scanning list
    // Filter initialiation
	FIRFilterInit( &FIR_band_2Filter);
    // Interrupts configuration
	INTCON1bits.NSTDIS = 0 ;    // Interrupt nesting is enabled
    IEC0bits.T1IE = 1;          // Interrupt on TMR1
    // Variables initialization
	measure = 0;
	output = 0;
}

// Main program
int main(void) {        
    initPIC();
    initSPI();
    initTMR1();
    while(1);
}
