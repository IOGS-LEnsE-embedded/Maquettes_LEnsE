; ..............................................................................
;    File   filtreFIR660.s
; ..............................................................................

		.equ filtreFIR660NumTaps, 5

; ..............................................................................
; Allocate and initialize filter taps

		.section .filtreFIR660const, "x"
		.align 16

filtreFIR660Taps:
.hword 	0xF1A6,	0x2395,	0x4D3D,	0x2395,	0xF1A6

; ..............................................................................
; Allocate delay line in (uninitialized) Y data space

		.section .ybss,  "b"
		.align 16

filtreFIR660Delay:
		.space filtreFIR660NumTaps*2

; ..............................................................................
; Allocate and intialize filter structure

		.section .data
		.global _filtreFIR660Filter

_filtreFIR660Filter:
.hword filtreFIR660NumTaps
.hword psvoffset(filtreFIR660Taps)
.hword psvoffset(filtreFIR660Taps)+filtreFIR660NumTaps*2-1
.hword psvpage(filtreFIR660Taps)
.hword filtreFIR660Delay
.hword filtreFIR660Delay+filtreFIR660NumTaps*2-1
.hword filtreFIR660Delay

; ..............................................................................
; ..............................................................................
; Sample assembly language calling program
;  The following declarations can be cut and pasted as needed into a program
;		.extern	_FIRFilterInit
;		.extern	_BlockFIRFilter
;		.extern	_filtreFIR660Filter
;
;		.section	.bss
;
;	 The input and output buffers can be made any desired size
;	   the value 40 is just an example - however, one must ensure
;	   that the output buffer is at least as long as the number of samples
;	   to be filtered (parameter 4)
;input:		.space	40
;output:	.space	40
;		.text
;
;
;  This code can be copied and pasted as needed into a program
;
;
; Set up pointers to access input samples, filter taps, delay line and
; output samples.
;		mov	#_filtreFIR660Filter, W0	; Initalize W0 to filter structure
;		call	_FIRFilterInit	; call this function once
;
; The next 4 instructions are required prior to each subroutine call
; to _BlockFIRFilter
;		mov	#_filtreFIR660Filter, W0	; Initalize W0 to filter structure
;		mov	#input, W1	; Initalize W1 to input buffer 
;		mov	#output, W2	; Initalize W2 to output buffer
;		mov	#20, W3	; Initialize W3 with number of required output samples
;		call	_BlockFIRFilter	; call as many times as needed
