/*

;FILE DESCRIPTION:
; Ce fichier comprend les fonctions pilotant la conversion
; D to A utilisant la dsPIC 30F3014 
; la carte dsPICDEM2 development board
; et la cate d extension D/A 
;
;REVISION HISTORY:
; date:Janvier 2014 FB
*/

//Pre-Processor Directives:
#include <p30f3014.h>
#define BIT0  1<<0
#define BIT1  1<<1		// soit 0000 0000 0000 0010
#define BIT2  1<<2
#define BIT3  1<<3
#define BIT4  1<<4
#define BIT5  1<<5
#define BIT6  1<<6
#define BIT7  1<<7
#define BIT8  1<<8
#define BIT9  1<<9
#define BIT10 1<<10
#define BIT11 1<<11

void CNA_Init(void)
// CNA_Init() est utilisée pour relier les bits du mots à ecrire

{	
   	
		TRISDbits.TRISD9=0;  	// bit 0 		
		TRISBbits.TRISB8=0;   	// bit 1
		TRISBbits.TRISB5=0;	    // bit 2	
		TRISDbits.TRISD3=0; 	// bit 3
		TRISFbits.TRISF5=0;		// bit 4
		TRISFbits.TRISF1=0;  	// bit 5
		TRISBbits.TRISB12=0;	// bit 6
		TRISBbits.TRISB10=0;	// bit 7
		TRISBbits.TRISB9=0;		// bit 8
		TRISBbits.TRISB11=0;	// bit 9
		TRISFbits.TRISF0=0;		// bit10
		TRISFbits.TRISF4=0;		// bit11    
	

   		TRISDbits.TRISD2 = 0;   //Signal Write en sortie sur RF1 (0 : Output / 1:Input)
}

void EcritureCNA(int Valeur)
{ 

			if(Valeur & BIT0)	    PORTDbits.RD9=1;  //LSB
			else					PORTDbits.RD9=0;
			if(Valeur & BIT1)		PORTBbits.RB8=1;
			else					PORTBbits.RB8=0;
			if(Valeur & BIT2)    	PORTBbits.RB5=1;
			else 					PORTBbits.RB5=0;
 			if(Valeur & BIT3)       PORTDbits.RD3=1; 
			else 					PORTDbits.RD3=0; 
			if(Valeur & BIT4)	    PORTFbits.RF5=1; 
			else 					PORTFbits.RF5=0; 
			if(Valeur & BIT5)		PORTFbits.RF1=1;
			else					PORTFbits.RF1=0;
    		if(Valeur & BIT6)		PORTBbits.RB12=1;
			else					PORTBbits.RB12=0;
			if(Valeur & BIT7)		PORTBbits.RB10=1;
			else					PORTBbits.RB10=0;
			if(Valeur & BIT8)		PORTBbits.RB9=1;
			else					PORTBbits.RB9=0;
			if(Valeur & BIT9)		PORTBbits.RB11=1;
			else					PORTBbits.RB11=0;
			if(Valeur & BIT10)		PORTFbits.RF0=1;
			else					PORTFbits.RF0=0;
			if(Valeur & BIT11)		PORTFbits.RF4=1; //MSB
			else					PORTFbits.RF4=0;
				
}
	

