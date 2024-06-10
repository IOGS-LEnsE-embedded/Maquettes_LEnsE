#ifndef FILTREFIR660_H
#define FILTREFIR660_H

extern FIRFilterStructure filtreFIR660Filter;

#endif /* FILTREFIR660_H */

/* The following C-code fragment demonstrates how to call the filter routine
#include "FIR_Filter.h"
#include "filtreFIR660.h"

// NUM_SAMPLES defines the number of samples in one block of input data.
// This value should be changed as needed for the application
#define NUM_SAMPLES 100

{
   // Declare input and output sample arrays.
   int  inSamples[NUM_SAMPLES], outSamples[NUM_SAMPLES];


   // Call the FIRFilterInit routine to zero out the delay line
   FIRFilterInit( &filtreFIR660Filter );

   // Call BlockFIRFilter for each block of input samples
   // This routine would normally be called inside a FOR or a DO-WHILE loop
   // Only one instance has been shown
   BlockFIRFilter( &filtreFIR660Filter, &inSamples, &outSamples, NUM_SAMPLES );
}
*/
