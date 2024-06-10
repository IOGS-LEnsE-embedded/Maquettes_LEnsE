; ..............................................................................
;    File   FIR_band_2.s
; ..............................................................................

		.equ FIR_band_2NumTaps, 35

; ..............................................................................
; Allocate and initialize filter taps

		.section .FIR_band_2const, "x"
		.align 128

FIR_band_2Taps:
.hword 	0xFF63,	0xFEE8,	0xFF24,	0x0000,	0x009A,	0x0035,	0xFF6C,	0x0000,	0x02E5
.hword 	0x0648,	0x062C,	0x0000,	0xF62C,	0xEFAF,	0xF2FD,	0x0000,	0x0EDE,	0x1560
.hword 	0x0EDE,	0x0000,	0xF2FD,	0xEFAF,	0xF62C,	0x0000,	0x062C,	0x0648,	0x02E5
.hword 	0x0000,	0xFF6C,	0x0035,	0x009A,	0x0000,	0xFF24,	0xFEE8,	0xFF63

; ..............................................................................
; Allocate delay line in (uninitialized) Y data space

		.section .ybss,  "b"
		.align 128

FIR_band_2Delay:
		.space FIR_band_2NumTaps*2

; ..............................................................................
; Allocate and intialize filter structure

		.section .data
		.global _FIR_band_2Filter

_FIR_band_2Filter:
.hword FIR_band_2NumTaps
.hword psvoffset(FIR_band_2Taps)
.hword psvoffset(FIR_band_2Taps)+FIR_band_2NumTaps*2-1
.hword psvpage(FIR_band_2Taps)
.hword FIR_band_2Delay
.hword FIR_band_2Delay+FIR_band_2NumTaps*2-1
.hword FIR_band_2Delay

; ..............................................................................
; ..............................................................................
; Sample assembly language calling program
;  The following declarations can be cut and pasted as needed into a program
;		.extern	_FIRFilterInit
;		.extern	_BlockFIRFilter
;		.extern	_FIR_band_2Filter
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
;		mov	#_FIR_band_2Filter, W0	; Initalize W0 to filter structure
;		call	_FIRFilterInit	; call this function once
;
; The next 4 instructions are required prior to each subroutine call
; to _BlockFIRFilter
;		mov	#_FIR_band_2Filter, W0	; Initalize W0 to filter structure
;		mov	#input, W1	; Initalize W1 to input buffer 
;		mov	#output, W2	; Initalize W2 to output buffer
;		mov	#20, W3	; Initialize W3 with number of required output samples
;		call	_BlockFIRFilter	; call as many times as needed
