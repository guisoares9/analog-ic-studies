* PSpice Model Editor - Version 10.0.0

*$
* MAX942 MACROMODEL
* ------------------------------
* Revision 0, 1/2004
* ------------------------------
* MAX942 consists of dual high-speed comparators with rail-to-rail inputs. It features internal
* hysteresis and has a current driven output stage.
* ------------------------------
* Connections
*   1  = OUTA
*   2  = INA-
*   3  = INA+
*   4  = GND
*   5  = INB+
*   6  = INB-
*   7  = OUTB
*   8  = V+
*
* This is clearly nonsense compared to the following pin numbers, so I changed it to the following:
* (Ronan van der Zee, 14/7/2008)
*
*   1 = VDD
*   2 = in+
*   3 = in-
*   6 = gnd
*   7 = out
*
*****************
.SUBCKT MAX942 1 2 3 6 7
*INPUT STAGE
****************
RIN1 100 99 4.1K
RIN2 3 98 4.1K
DIN1 99 101 DY
DIN2 101 98 DY
DIN3 98 102 DY
DIN4 102 99 DY
****************
RQ 1 6 12K
****************
VOS 2 100 1M
****************
IEE 1 11 100U
Q1 12 98 11 QX
Q2 13 99 11 QY
RC1 12 6 258.5
RC2 13 6 258.5
****************
*INTERMEDIATE STAGE
GA 6 14 12 13 1
RA 14 6 100K
DOH 14 154 DX
VOH 154 1 -0.3
DOL 155 14 DX
VOL 155 6 0.3
CA 14 6 1E-15
**************
*HYSTERESIS
RHIST 99 14 6MEG
**************
EOUT 19 6 14 6 1
**************
*DELAY,RISE AND FALL TIME
EDELQ 105 6 19 6 1
T1Q 105 6 17 6 ZO=50 TD=75N
RTERMQ 17 6 50 
CTERMQ 17 6 1E-15 
****************
EOUT2 150 6 17 6 1
DOUT1 150 151 DX
DOUT2 7 151 DX
DOUT3 152 150 DX
DOUT4 152 7 DX
IOUT 151 152 4M 
****************
*MODELS USED
.MODEL QX PNP(BF=344.828)
.MODEL QY PNP(BF=322)
*.MODEL DX D(N=0.001 TT=1E-15)
.MODEL DX D(N=0.001)
.MODEL DY D(N=0.7 IS=1E-18)
****************
.ENDS  

*$

