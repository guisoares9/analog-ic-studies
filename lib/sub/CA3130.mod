*****************************
* CA3130 provided by Orcad  *
*  pinout mixup "corrected" *
*    by Brett Holden        * 
* *************************** 
* OS1 and OS2 pins removed by Ronan van der Zee
* they incorrectly influenced the DC gain
*    
*NODE:         +IN     
*                | -IN  
*                |  |  OUT      
*                |  |  |  Vdd               
*                |  |  |  |  Vss       
*                |  |  |  |  |       
*                |  |  |  |  |      
*                |  |  |  |  |    
.subckt ca3130   1  36 11 20 12
*------INPUT STAGE-------
VOSBAL  7  29  4.80000000E-04
EU1     8  1 20 12 3.2E-05
EU2     8  7  5 12 -1
RB1     12 10 1  TC= 3.720792E+00 4.522724E-02
IB4     10 12 1.000000E-06
RB3     12  5 157923  TC= 1.25000000E-03 0.00000000E+00
IB3     12  5 5.065744E-08
G1      12  1 10  12 5.250000E-06
G2      12 36 10  12 4.750000E-06
RDM    36 29 1.500000E+12
RCM    31 13 1.500000E+12
CDM    36 29 4.300000E-12
G5     31 13 36 31 6.66667E-13
G6     31 13  1 31 6.66667E-13
*------INTERMEDIATE  STAGE-------
GDM    31 16 29 36 1
GCM    31 16 13 31 -1.58113883E-05
R1     31 16 1.89815028E+02
C1     31 16 1.61364E-10
VCP    23 31 100
VCM    24 31 -100
DD1    16 23 MD2
.MODEL MD2 D XTI=1.000000P
* SPECTRE: + IMAX=1000
DD2    24 16 MD2
G3     31  6 16 31 -1.53922542E-05
R2     31  6 100k
*  C2 SET TO 155 PF TO CREATE MODEL, THEN C2 CHANGED TO 5 PF
*  FOR UNCOMPENSATED MODEL
C2     11  6 5E-12
*  C2     11  6 1.55E-10
RP1    31 20 3750
RP2    31 12 3750
*------OUTPUT  STAGE-------
G4     31 11 6 31 -1.89845036E+01
ROUT   31 11 60
DD3    11  9 MD3
.MODEL MD3 D IS=10.0F XTI=1.0P N= 3.847001E-01
* SPECTRE: + IMAX=1000
DD4     9 11 MD4
.MODEL MD4 D IS=10.0F XTI=1.0P N= 4.231703E-01
* SPECTRE: + IMAX=1000
EU6     9 31 2 31 1
RO1    11 26 20
FF1    31 28 VFF1  1
VFF1   26 2  0.0
FF2    31 20 VFF2  -1
VFF2   33 31 0.0
FF3    12 31 VFF3  -1
VFF3   31 27 0.0
DD8    27 28 MID
DD7    28 33 MID
.MODEL MID D XTI=1.000000F N=1 IS=10.000000F
* SPECTRE: + IMAX=1000
VP     20 22 -6.66008
VM     21 12 -6.66332
DD5    25 22 MID
DD6    21 17 MID
VP1    20 30 .735644
VM1    32 12 .73318
DD9     2 30 MD9
DD10   32 15 MD9
.MODEL MD9 D XTI=1.000000F N=1 IS=10.000000F
* SPECTRE: + IMAX=1000
HH1 25 2 POLY(2) VIC2 VIC1 0 1734.33 0 1362.69 0 0 0 0 0 0
HH2 2 17 POLY(2) VIC3 VIC1 0 -1734.33 0 -1362.69 0 0 0 0 0 0
VIC1   37 3 0.0
VIC2   2 14 0.0
VIC3   14 15 0.0
VPP   37 0 1
RPP   3 0 100.0K
RO3  15 20 200.0MEG
RO2  15 12 200.0MEG
.ends CA3130
