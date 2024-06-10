
#ifndef FIRFILT_H
#define FIRFILT_H

/* .......................................................................... */

typedef struct
{
  int  numTaps;
  int *pTapsBase;
  int *pTapsEnd;
  int  tapsPage;
  int *pDelayBase;
  int *pDelayEnd;
  int *pDelayPtr;
} FIRFilterStructure;

extern void BlockFIRFilter( FIRFilterStructure *, int *, int *, int );
extern void FIRFilterInit( FIRFilterStructure * );

/* .......................................................................... */

#endif /* FIRFILT_H*/
