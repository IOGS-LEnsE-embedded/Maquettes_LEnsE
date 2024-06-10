#ifndef FIR_LOW_660_1260_60DB_FS10K_H
#define FIR_LOW_660_1260_60DB_FS10K_H

extern FIRFilterStructure FIR_low_660_1260_60dB_Fs10kFilter;

#endif /* FIR_LOW_660_1260_60DB_FS10K_H */

/* The following C-code fragment demonstrates how to call the filter routine
#include "FIR_Filter.h"
#include "FIR_low_660_1260_60dB_Fs10k.h"

// NUM_SAMPLES defines the number of samples in one block of input data.
// This value should be changed as needed for the application
#define NUM_SAMPLES 100

{
   // Declare input and output sample arrays.
   int  inSamples[NUM_SAMPLES], outSamples[NUM_SAMPLES];


   // Call the FIRFilterInit routine to zero out the delay line
   FIRFilterInit( &FIR_low_660_1260_60dB_Fs10kFilter );

   // Call BlockFIRFilter for each block of input samples
   // This routine would normally be called inside a FOR or a DO-WHILE loop
   // Only one instance has been shown
   BlockFIRFilter( &FIR_low_660_1260_60dB_Fs10kFilter, &inSamples, &outSamples, NUM_SAMPLES );
}
*/
