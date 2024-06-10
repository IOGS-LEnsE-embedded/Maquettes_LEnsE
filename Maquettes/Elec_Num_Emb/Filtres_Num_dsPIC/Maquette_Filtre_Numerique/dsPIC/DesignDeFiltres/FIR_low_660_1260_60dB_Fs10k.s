; ..............................................................................
;    File   FIR_low_660_1260_60dB_Fs10k.s
; ..............................................................................

		.equ FIR_low_660_1260_60dB_Fs10kNumTaps, 63

; ..............................................................................
; Allocate and initialize filter taps

		.section .FIR_low_660_1260_60dB_Fs10kconst, "x"
		.align 128

FIR_low_660_1260_60dB_Fs10kTaps:
.hword 	0x0000,	0xFFF7,	0xFFED,	0xFFE8,	0xFFED,	0x0001,	0x0024,	0x0048,	0x005B
.hword 	0x004B,	0x000E,	0xFFB0,	0xFF4F,	0xFF18,	0xFF35,	0xFFB8,	0x008B,	0x016E
.hword 	0x01FF,	0x01E4,	0x00EE,	0xFF39,	0xFD3E,	0xFBB9,	0xFB7C,	0xFD29,	0x00F5
.hword 	0x0681,	0x0CE2,	0x12D3,	0x1709,	0x188E,	0x1709,	0x12D3,	0x0CE2,	0x0681
.hword 	0x00F5,	0xFD29,	0xFB7C,	0xFBB9,	0xFD3E,	0xFF39,	0x00EE,	0x01E4,	0x01FF
.hword 	0x016E,	0x008B,	0xFFB8,	0xFF35,	0xFF18,	0xFF4F,	0xFFB0,	0x000E,	0x004B
.hword 	0x005B,	0x0048,	0x0024,	0x0001,	0xFFED,	0xFFE8,	0xFFED,	0xFFF7,	0x0000

; ..............................................................................
; Allocate delay line in (uninitialized) Y data space

		.section .ybss,  "b"
		.align 128

FIR_low_660_1260_60dB_Fs10kDelay:
		.space FIR_low_660_1260_60dB_Fs10kNumTaps*2

; ..............................................................................
; Allocate and intialize filter structure

		.section .data
		.global _FIR_low_660_1260_60dB_Fs10kFilter

_FIR_low_660_1260_60dB_Fs10kFilter:
.hword FIR_low_660_1260_60dB_Fs10kNumTaps
.hword psvoffset(FIR_low_660_1260_60dB_Fs10kTaps)
.hword psvoffset(FIR_low_660_1260_60dB_Fs10kTaps)+FIR_low_660_1260_60dB_Fs10kNumTaps*2-1
.hword psvpage(FIR_low_660_1260_60dB_Fs10kTaps)
.hword FIR_low_660_1260_60dB_Fs10kDelay
.hword FIR_low_660_1260_60dB_Fs10kDelay+FIR_low_660_1260_60dB_Fs10kNumTaps*2-1
.hword FIR_low_660_1260_60dB_Fs10kDelay

; ..............................................................................
; ..............................................................................
; Sample assembly language calling program
;  The following declarations can be cut and pasted as needed into a program
;		.extern	_FIRFilterInit
;		.extern	_BlockFIRFilter
;		.extern	_FIR_low_660_1260_60dB_Fs10kFilter
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
;		mov	#_FIR_low_660_1260_60dB_Fs10kFilter, W0	; Initalize W0 to filter structure
;		call	_FIRFilterInit	; call this function once
;
; The next 4 instructions are required prior to each subroutine call
; to _BlockFIRFilter
;		mov	#_FIR_low_660_1260_60dB_Fs10kFilter, W0	; Initalize W0 to filter structure
;		mov	#input, W1	; Initalize W1 to input buffer 
;		mov	#output, W2	; Initalize W2 to output buffer
;		mov	#20, W3	; Initialize W3 with number of required output samples
;		call	_BlockFIRFilter	; call as many times as needed
