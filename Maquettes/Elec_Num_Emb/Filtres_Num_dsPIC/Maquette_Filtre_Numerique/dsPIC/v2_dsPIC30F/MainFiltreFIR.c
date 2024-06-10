#include <p30f3014.h>   //
#include "FIR_Filter.h"
#include "filtreFIR660.h"


_FOSC(CSW_FSCM_OFF & XT_PLL8);  //Run this project using an external crystal routed via the PLL in 8x multiplier mode
                                //For the 7.3728 MHz crystal we will derive a throughput of 7.3728e+6*8/4 = 14.74 MIPS(Fcy)
                                //,~67nanoseconds instruction cycle time(Tcy).

_FWDT(WDT_OFF);                 //Turn off the Watch-Dog Timer.

_FBORPOR(MCLR_EN & PWRT_OFF);   //Enable MCLR reset pin and turn off the
                                //power-up timers.
_FGS(CODE_PROT_OFF);            //Disable Code Protection



unsigned int Mesure;
unsigned int sortie, sortieprec;

//Utilisation des routines du DAC
void CNA_Init(void);
void EcritureCNA(int Valeur);

// Définition de la routine d''interruption 
void __attribute__((__interrupt__)) _ADCInterrupt(void)
{
	PORTBbits.RB0 = !PORTBbits.RB0; //Pour suivre le rythme de conversion...
	Mesure = ADCBUF0;
	BlockFIRFilter( &filtreFIR660Filter, &Mesure, &sortie, 1);
//	sortie = Mesure;
	EcritureCNA(sortie);
		
	PORTDbits.RD2=0;
	PORTDbits.RD2=1;

	IFS0bits.ADIF = 0; // ré-armer l’indicateur d’interruption
}



int main (void)
{
/***********************************
    Configurations / Initialisations
*************************************/

// Port B
   ADPCFG=0xFFFF; // Tout en numérique, sauf :
   ADPCFGbits.PCFG4=0;//Pour configurer le bit AN4 en analogique (forcé à 0)

// Sorties = forcées à 0
	TRISBbits.TRISB0=0; //RB0 

// Configuration du timer 3
	T3CONbits.TCS=0; // horloge interne
	T3CONbits.TCKPS=0b00;// division par 1
	T3CONbits.TGATE=0;
	T3CONbits.TSIDL=0;	
	T2CONbits.T32=0;
    PR3 = 2*1474 ; // Pour une fréquence de 1474 = 10kHz environ //

// Config du CAN
//ADCON1
	ADCON1bits.ADON=0;
	ADCON1bits.ADSIDL=0;
	ADCON1bits.FORM=0b00; 
	ADCON1bits.SSRC=0b010; // "Special event" donc rythmé Echant --> Conv sur Timer3
	ADCON1bits.ASAM=1; // Régler le ASAM à 1 pour Conv-->Echant automatique
	//	ADCON1bits.SAMP n'est plus utilisé
//ADCON2
	ADCON2bits.VCFG=0b000;
	ADCON2bits.CSCNA=0;
	ADCON2bits.SMPI=0b0000; //Une interruption à chaque conversion = 1 seul buffer
	ADCON2bits.BUFM=0;
	ADCON2bits.ALTS=0;
//ADCON3
	ADCON3bits.SAMC=1; //Pas utilisé ici, c'est le timer 3 qui lance la conversion
						// (et donc, qui fixe la durée d'échantillonnage)
	ADCON3bits.ADRC=0;
	ADCON3bits.ADCS=2;
	ADCON3bits.ADCS=1; // Le temps de conversion est alors fixé à 
						// 14 TAD= 14*Tcy=14*67ns

	ADCHSbits.CH0SA=4; //Pour relier le CAN à  AN4
	ADCSSL = 0;

//Parametrer les interruptions

	INTCON1bits.NSTDIS = 0 ;// ISR interrompables
	IEC0bits.ADIE =1 ; 		// Interruption du CAN validée
	IPC2bits.ADIP =0b110 ; // niveau de Prio de 1 à 7 ; 000 masque l’interr ; ici niveau 6

//Initialisation du DAC
	CNA_Init();
	Mesure = 0;
	sortieprec = 0;
	sortie = 0;

//Mise en marche
	T3CONbits.TON=1;
	ADCON1bits.ADON=1;

	FIRFilterInit( &filtreFIR660Filter );

	//filtreFIR200Filter.pTapsBase[0] = -5;


while(1);

return 0;       
}