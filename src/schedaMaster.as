opt subtitle "Microchip Technology Omniscient Code Generator v1.35 (Free mode) build 201507080246"

opt pagewidth 120

	opt lm

	processor	18F2580
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
SDFLC equ 0DD8h ;# 
# 5338 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
BIE0 equ 0DFAh ;# 
# 6262 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXBIE equ 0DFCh ;# 
# 6321 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0CON equ 0E20h ;# 
# 6633 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0SIDH equ 0E21h ;# 
# 6765 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0SIDL equ 0E22h ;# 
# 6892 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0EIDH equ 0E23h ;# 
# 7024 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0EIDL equ 0E24h ;# 
# 7156 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0DLC equ 0E25h ;# 
# 7303 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0D0 equ 0E26h ;# 
# 7364 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0D1 equ 0E27h ;# 
# 7425 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0D2 equ 0E28h ;# 
# 7486 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0D3 equ 0E29h ;# 
# 7547 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1CON equ 0E30h ;# 
# 8278 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1SIDH equ 0E31h ;# 
# 8410 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1SIDL equ 0E32h ;# 
# 8537 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1EIDH equ 0E33h ;# 
# 8669 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1EIDL equ 0E34h ;# 
# 8801 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1DLC equ 0E35h ;# 
# 8948 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1D0 equ 0E36h ;# 
# 9009 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1D1 equ 0E37h ;# 
# 9070 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1D2 equ 0E38h ;# 
# 9131 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1D3 equ 0E39h ;# 
# 9192 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2CON equ 0E40h ;# 
# 9923 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2SIDH equ 0E41h ;# 
# 10055 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2SIDL equ 0E42h ;# 
# 10191 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2EIDH equ 0E43h ;# 
# 10323 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2EIDL equ 0E44h ;# 
# 10455 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2DLC equ 0E45h ;# 
# 10602 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2D0 equ 0E46h ;# 
# 10663 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2D1 equ 0E47h ;# 
# 10724 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2D2 equ 0E48h ;# 
# 10785 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2D3 equ 0E49h ;# 
# 10846 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3CON equ 0E50h ;# 
# 11577 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3SIDH equ 0E51h ;# 
# 11709 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3SIDL equ 0E52h ;# 
# 11845 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3EIDH equ 0E53h ;# 
# 11977 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3EIDL equ 0E54h ;# 
# 12109 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3DLC equ 0E55h ;# 
# 12256 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3D0 equ 0E56h ;# 
# 12317 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3D1 equ 0E57h ;# 
# 12378 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3D2 equ 0E58h ;# 
# 12439 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3D3 equ 0E59h ;# 
# 12500 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4CON equ 0E60h ;# 
# 13231 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4SIDH equ 0E61h ;# 
# 13363 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4SIDL equ 0E62h ;# 
# 13499 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4EIDH equ 0E63h ;# 
# 13631 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4EIDL equ 0E64h ;# 
# 13763 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4DLC equ 0E65h ;# 
# 13910 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4D0 equ 0E66h ;# 
# 13971 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4D1 equ 0E67h ;# 
# 14032 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4D2 equ 0E68h ;# 
# 14093 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4D3 equ 0E69h ;# 
# 14154 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5CON equ 0E70h ;# 
# 14894 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5SIDH equ 0E71h ;# 
# 15026 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5SIDL equ 0E72h ;# 
# 15171 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5EIDH equ 0E73h ;# 
# 15303 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5EIDL equ 0E74h ;# 
# 15435 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5DLC equ 0E75h ;# 
# 15576 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5D0 equ 0E76h ;# 
# 15646 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5D1 equ 0E77h ;# 
# 15707 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5D2 equ 0E78h ;# 
# 15777 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5D3 equ 0E79h ;# 
# 15838 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2CON equ 0F20h ;# 
# 20438 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1CON equ 0F30h ;# 
# 21816 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0CON equ 0F40h ;# 
# 23185 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1CON equ 0F50h ;# 
# 24618 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0CON equ 0F60h ;# 
# 26142 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CANCON equ 0F6Fh ;# 
# 27487 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CIOCON equ 0F73h ;# 
# 27688 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
COMSTAT equ 0F74h ;# 
# 27813 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RXERRCNT equ 0F75h ;# 
# 27874 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXERRCNT equ 0F76h ;# 
# 27935 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
ECANCON equ 0F77h ;# 
# 28005 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PORTA equ 0F80h ;# 
# 28215 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PORTB equ 0F81h ;# 
# 28388 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PORTC equ 0F82h ;# 
# 28560 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PORTE equ 0F84h ;# 
# 28793 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
LATA equ 0F89h ;# 
# 28925 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
LATB equ 0F8Ah ;# 
# 29057 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
LATC equ 0F8Bh ;# 
# 29189 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TRISA equ 0F92h ;# 
# 29194 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
DDRA equ 0F92h ;# 
# 29410 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TRISB equ 0F93h ;# 
# 29415 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
DDRB equ 0F93h ;# 
# 29631 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TRISC equ 0F94h ;# 
# 29636 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
DDRC equ 0F94h ;# 
# 29852 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
OSCTUNE equ 0F9Bh ;# 
# 29923 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PIE1 equ 0F9Dh ;# 
# 29996 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PIR1 equ 0F9Eh ;# 
# 30069 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
IPR1 equ 0F9Fh ;# 
# 30151 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PIE2 equ 0FA0h ;# 
# 30205 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PIR2 equ 0FA1h ;# 
# 30259 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
IPR2 equ 0FA2h ;# 
# 30313 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PIE3 equ 0FA3h ;# 
# 30421 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PIR3 equ 0FA4h ;# 
# 30521 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
IPR3 equ 0FA5h ;# 
# 30621 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
EECON1 equ 0FA6h ;# 
# 30686 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
EECON2 equ 0FA7h ;# 
# 30692 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
EEDATA equ 0FA8h ;# 
# 30698 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
EEADR equ 0FA9h ;# 
# 30704 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RCSTA equ 0FABh ;# 
# 30709 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RCSTA1 equ 0FABh ;# 
# 30913 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXSTA equ 0FACh ;# 
# 30918 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXSTA1 equ 0FACh ;# 
# 31210 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXREG equ 0FADh ;# 
# 31215 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TXREG1 equ 0FADh ;# 
# 31221 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RCREG equ 0FAEh ;# 
# 31226 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RCREG1 equ 0FAEh ;# 
# 31232 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
SPBRG equ 0FAFh ;# 
# 31237 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
SPBRG1 equ 0FAFh ;# 
# 31243 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
SPBRGH equ 0FB0h ;# 
# 31249 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
T3CON equ 0FB1h ;# 
# 31377 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TMR3 equ 0FB2h ;# 
# 31383 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TMR3L equ 0FB2h ;# 
# 31389 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TMR3H equ 0FB3h ;# 
# 31395 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
ECCP1DEL equ 0FB7h ;# 
# 31415 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
BAUDCON equ 0FB8h ;# 
# 31420 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
BAUDCTL equ 0FB8h ;# 
# 31580 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CCP1CON equ 0FBDh ;# 
# 31643 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CCPR1 equ 0FBEh ;# 
# 31649 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CCPR1L equ 0FBEh ;# 
# 31655 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
CCPR1H equ 0FBFh ;# 
# 31661 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
ADCON2 equ 0FC0h ;# 
# 31731 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
ADCON1 equ 0FC1h ;# 
# 31821 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
ADCON0 equ 0FC2h ;# 
# 31943 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
ADRES equ 0FC3h ;# 
# 31949 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
ADRESL equ 0FC3h ;# 
# 31955 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
ADRESH equ 0FC4h ;# 
# 31961 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
SSPCON2 equ 0FC5h ;# 
# 32022 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
SSPCON1 equ 0FC6h ;# 
# 32091 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
SSPSTAT equ 0FC7h ;# 
# 32357 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
SSPADD equ 0FC8h ;# 
# 32363 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
SSPBUF equ 0FC9h ;# 
# 32369 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
T2CON equ 0FCAh ;# 
# 32439 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PR2 equ 0FCBh ;# 
# 32444 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
MEMCON equ 0FCBh ;# 
# 32548 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TMR2 equ 0FCCh ;# 
# 32554 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
T1CON equ 0FCDh ;# 
# 32667 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TMR1 equ 0FCEh ;# 
# 32673 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TMR1L equ 0FCEh ;# 
# 32679 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TMR1H equ 0FCFh ;# 
# 32685 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
RCON equ 0FD0h ;# 
# 32817 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
WDTCON equ 0FD1h ;# 
# 32844 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
HLVDCON equ 0FD2h ;# 
# 32849 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
LVDCON equ 0FD2h ;# 
# 33113 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
OSCCON equ 0FD3h ;# 
# 33189 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
T0CON equ 0FD5h ;# 
# 33264 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TMR0 equ 0FD6h ;# 
# 33270 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TMR0L equ 0FD6h ;# 
# 33276 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TMR0H equ 0FD7h ;# 
# 33282 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
STATUS equ 0FD8h ;# 
# 33360 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
FSR2 equ 0FD9h ;# 
# 33366 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
FSR2L equ 0FD9h ;# 
# 33372 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
FSR2H equ 0FDAh ;# 
# 33378 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PLUSW2 equ 0FDBh ;# 
# 33384 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PREINC2 equ 0FDCh ;# 
# 33390 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
POSTDEC2 equ 0FDDh ;# 
# 33396 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
POSTINC2 equ 0FDEh ;# 
# 33402 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
INDF2 equ 0FDFh ;# 
# 33408 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
BSR equ 0FE0h ;# 
# 33414 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
FSR1 equ 0FE1h ;# 
# 33420 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
FSR1L equ 0FE1h ;# 
# 33426 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
FSR1H equ 0FE2h ;# 
# 33432 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PLUSW1 equ 0FE3h ;# 
# 33438 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PREINC1 equ 0FE4h ;# 
# 33444 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
POSTDEC1 equ 0FE5h ;# 
# 33450 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
POSTINC1 equ 0FE6h ;# 
# 33456 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
INDF1 equ 0FE7h ;# 
# 33462 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
WREG equ 0FE8h ;# 
# 33468 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
FSR0 equ 0FE9h ;# 
# 33474 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
FSR0L equ 0FE9h ;# 
# 33480 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
FSR0H equ 0FEAh ;# 
# 33486 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PLUSW0 equ 0FEBh ;# 
# 33492 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PREINC0 equ 0FECh ;# 
# 33498 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
POSTDEC0 equ 0FEDh ;# 
# 33504 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
POSTINC0 equ 0FEEh ;# 
# 33510 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
INDF0 equ 0FEFh ;# 
# 33516 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
INTCON3 equ 0FF0h ;# 
# 33607 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
INTCON2 equ 0FF1h ;# 
# 33683 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
INTCON equ 0FF2h ;# 
# 33819 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PROD equ 0FF3h ;# 
# 33825 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PRODL equ 0FF3h ;# 
# 33831 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PRODH equ 0FF4h ;# 
# 33837 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TABLAT equ 0FF5h ;# 
# 33845 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TBLPTR equ 0FF6h ;# 
# 33851 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TBLPTRL equ 0FF6h ;# 
# 33857 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TBLPTRH equ 0FF7h ;# 
# 33863 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TBLPTRU equ 0FF8h ;# 
# 33871 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PCLAT equ 0FF9h ;# 
# 33878 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PC equ 0FF9h ;# 
# 33884 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PCL equ 0FF9h ;# 
# 33890 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PCLATH equ 0FFAh ;# 
# 33896 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
PCLATU equ 0FFBh ;# 
# 33902 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
STKPTR equ 0FFCh ;# 
# 33975 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TOS equ 0FFDh ;# 
# 33981 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TOSL equ 0FFDh ;# 
# 33987 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TOSH equ 0FFEh ;# 
# 33993 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f2580.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_bluetoothRX
	FNCALL	_main,_bluetoothSetup
	FNCALL	_main,_cameraRoutine
	FNCALL	_main,_canSetup
	FNCALL	_main,_canTX
	FNCALL	_main,_picSetup
	FNCALL	_main,_ruoteRoutine
	FNCALL	_main,_trapanoRoutine
	FNCALL	_trapanoRoutine,_canTX
	FNCALL	_ruoteRoutine,___awtoft
	FNCALL	_ruoteRoutine,___ftadd
	FNCALL	_ruoteRoutine,___ftdiv
	FNCALL	_ruoteRoutine,___ftge
	FNCALL	_ruoteRoutine,___ftmul
	FNCALL	_ruoteRoutine,___ftneg
	FNCALL	_ruoteRoutine,___fttol
	FNCALL	_ruoteRoutine,_atan
	FNCALL	_ruoteRoutine,_canTX
	FNCALL	_ruoteRoutine,_pow
	FNCALL	_ruoteRoutine,_sqrt
	FNCALL	_sqrt,___ftge
	FNCALL	_sqrt,___ftmul
	FNCALL	_sqrt,___ftsub
	FNCALL	_pow,___ftge
	FNCALL	_pow,___ftmul
	FNCALL	_pow,___ftneg
	FNCALL	_pow,___fttol
	FNCALL	_pow,___lltoft
	FNCALL	_pow,_exp
	FNCALL	_pow,_log
	FNCALL	_log,___awtoft
	FNCALL	_log,___ftadd
	FNCALL	_log,___ftmul
	FNCALL	_log,_eval_poly
	FNCALL	_log,_frexp
	FNCALL	_exp,___awtoft
	FNCALL	_exp,___ftdiv
	FNCALL	_exp,___ftge
	FNCALL	_exp,___ftmul
	FNCALL	_exp,___ftneg
	FNCALL	_exp,___ftsub
	FNCALL	_exp,___fttol
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_floor
	FNCALL	_exp,_ldexp
	FNCALL	_floor,___altoft
	FNCALL	_floor,___ftadd
	FNCALL	_floor,___ftge
	FNCALL	_floor,___fttol
	FNCALL	_floor,_frexp
	FNCALL	___altoft,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	___awtoft,___ftpack
	FNCALL	___lltoft,___ftpack
	FNCALL	_atan,___ftadd
	FNCALL	_atan,___ftdiv
	FNCALL	_atan,___ftge
	FNCALL	_atan,___ftmul
	FNCALL	_atan,___ftneg
	FNCALL	_atan,_eval_poly
	FNCALL	_atan,_fabs
	FNCALL	_fabs,___ftneg
	FNCALL	_eval_poly,___ftadd
	FNCALL	_eval_poly,___ftmul
	FNCALL	_eval_poly,___wmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_canSetup,_canConfigMode
	FNCALL	_canSetup,_canNormalMode
	FNCALL	_cameraRoutine,_canTX
	FNROOT	_main
	FNCALL	_my_ISR,_canRX
	FNCALL	_canRX,___lbtoft
	FNCALL	_canRX,___lwtoft
	FNCALL	_canRX,i2___ftge
	FNCALL	___lwtoft,i2___ftpack
	FNCALL	___lbtoft,i2___ftpack
	FNCALL	intlevel2,_my_ISR
	global	intlevel2
	FNROOT	intlevel2
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\doprnt.c"
	line	354
_dpowers:
	dw	(01h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(064h)&0ffffh
	dw	(03E8h)&0ffffh
	dw	(02710h)&0ffffh
	global __end_of_dpowers
__end_of_dpowers:
	global	_D1
psect	smallconst
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.h"
	line	7
_D1:
	db	low(float24(200.00000000000000))
	db	high(float24(200.00000000000000))
	db	low highword(float24(200.00000000000000))
	global __end_of_D1
__end_of_D1:
	global	_D2
psect	smallconst
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.h"
	line	8
_D2:
	db	low(float24(200.00000000000000))
	db	high(float24(200.00000000000000))
	db	low highword(float24(200.00000000000000))
	global __end_of_D2
__end_of_D2:
	global	_L
psect	smallconst
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.h"
	line	6
_L:
	db	low(float24(400.00000000000000))
	db	high(float24(400.00000000000000))
	db	low highword(float24(400.00000000000000))
	global __end_of_L
__end_of_L:
	global	_RADtoDEG
psect	smallconst
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.h"
	line	3
_RADtoDEG:
	db	low(float24(57.295779513084021))
	db	high(float24(57.295779513084021))
	db	low highword(float24(57.295779513084021))
	global __end_of_RADtoDEG
__end_of_RADtoDEG:
	global	_maxVel
psect	smallconst
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.h"
	line	5
_maxVel:
	db	low(float24(100.00000000000000))
	db	high(float24(100.00000000000000))
	db	low highword(float24(100.00000000000000))
	global __end_of_maxVel
__end_of_maxVel:
	global	exp@coeff
psect	smallconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\exp.c"
	line	17
exp@coeff:
	db	low(float24(1.0000000000000000))
	db	high(float24(1.0000000000000000))
	db	low highword(float24(1.0000000000000000))
	db	low(float24(0.69314718056000002))
	db	high(float24(0.69314718056000002))
	db	low highword(float24(0.69314718056000002))
	db	low(float24(0.24022650695000000))
	db	high(float24(0.24022650695000000))
	db	low highword(float24(0.24022650695000000))
	db	low(float24(0.055504108944999998))
	db	high(float24(0.055504108944999998))
	db	low highword(float24(0.055504108944999998))
	db	low(float24(0.0096181261778999997))
	db	high(float24(0.0096181261778999997))
	db	low highword(float24(0.0096181261778999997))
	db	low(float24(0.0013333710529000000))
	db	high(float24(0.0013333710529000000))
	db	low highword(float24(0.0013333710529000000))
	db	low(float24(0.00015399104432000000))
	db	high(float24(0.00015399104432000000))
	db	low highword(float24(0.00015399104432000000))
	db	low(float24(1.5327675256999998e-005))
	db	high(float24(1.5327675256999998e-005))
	db	low highword(float24(1.5327675256999998e-005))
	db	low(float24(1.2485143336000000e-006))
	db	high(float24(1.2485143336000000e-006))
	db	low highword(float24(1.2485143336000000e-006))
	db	low(float24(1.3908092220999999e-007))
	db	high(float24(1.3908092220999999e-007))
	db	low highword(float24(1.3908092220999999e-007))
	global __end_ofexp@coeff
__end_ofexp@coeff:
	global	log@coeff
psect	smallconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\log.c"
	line	9
log@coeff:
	db	low(float24(0.0000000000000000))
	db	high(float24(0.0000000000000000))
	db	low highword(float24(0.0000000000000000))
	db	low(float24(0.99999642389999999))
	db	high(float24(0.99999642389999999))
	db	low highword(float24(0.99999642389999999))
	db	low(float24(-0.49987412380000001))
	db	high(float24(-0.49987412380000001))
	db	low highword(float24(-0.49987412380000001))
	db	low(float24(0.33179902579999998))
	db	high(float24(0.33179902579999998))
	db	low highword(float24(0.33179902579999998))
	db	low(float24(-0.24073380840000000))
	db	high(float24(-0.24073380840000000))
	db	low highword(float24(-0.24073380840000000))
	db	low(float24(0.16765407110000000))
	db	high(float24(0.16765407110000000))
	db	low highword(float24(0.16765407110000000))
	db	low(float24(-0.095329389700000003))
	db	high(float24(-0.095329389700000003))
	db	low highword(float24(-0.095329389700000003))
	db	low(float24(0.036088493700000002))
	db	high(float24(0.036088493700000002))
	db	low highword(float24(0.036088493700000002))
	db	low(float24(-0.0064535442000000004))
	db	high(float24(-0.0064535442000000004))
	db	low highword(float24(-0.0064535442000000004))
	global __end_oflog@coeff
__end_oflog@coeff:
	global	atan@coeff_a
psect	smallconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\atan.c"
	line	10
atan@coeff_a:
	db	low(float24(33.058618473989547))
	db	high(float24(33.058618473989547))
	db	low highword(float24(33.058618473989547))
	db	low(float24(58.655751569001964))
	db	high(float24(58.655751569001964))
	db	low highword(float24(58.655751569001964))
	db	low(float24(32.390974856200444))
	db	high(float24(32.390974856200444))
	db	low highword(float24(32.390974856200444))
	db	low(float24(5.8531952112628600))
	db	high(float24(5.8531952112628600))
	db	low highword(float24(5.8531952112628600))
	db	low(float24(0.19523741936234276))
	db	high(float24(0.19523741936234276))
	db	low highword(float24(0.19523741936234276))
	db	low(float24(-0.0024346033004411264))
	db	high(float24(-0.0024346033004411264))
	db	low highword(float24(-0.0024346033004411264))
	global __end_ofatan@coeff_a
__end_ofatan@coeff_a:
	global	atan@coeff_b
psect	smallconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\atan.c"
	line	19
atan@coeff_b:
	db	low(float24(33.058618473992418))
	db	high(float24(33.058618473992418))
	db	low highword(float24(33.058618473992418))
	db	low(float24(69.675291059524653))
	db	high(float24(69.675291059524653))
	db	low highword(float24(69.675291059524653))
	db	low(float24(49.004348218216251))
	db	high(float24(49.004348218216251))
	db	low highword(float24(49.004348218216251))
	db	low(float24(12.975578862709240))
	db	high(float24(12.975578862709240))
	db	low highword(float24(12.975578862709240))
	db	low(float24(1.0000000000000000))
	db	high(float24(1.0000000000000000))
	db	low highword(float24(1.0000000000000000))
	global __end_ofatan@coeff_b
__end_ofatan@coeff_b:
	global	_gradiBit
psect	smallconst
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.h"
	line	2
_gradiBit:
	db	low(float24(1.4166666666666667))
	db	high(float24(1.4166666666666667))
	db	low highword(float24(1.4166666666666667))
	global __end_of_gradiBit
__end_of_gradiBit:
	global	_pigreco
psect	smallconst
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.h"
	line	1
_pigreco:
	db	low(float24(3.1415926535896999))
	db	high(float24(3.1415926535896999))
	db	low highword(float24(3.1415926535896999))
	global __end_of_pigreco
__end_of_pigreco:
	global	_D1
	global	_D2
	global	_L
	global	_RADtoDEG
	global	_maxVel
	global	exp@coeff
	global	log@coeff
	global	atan@coeff_a
	global	atan@coeff_b
	global	_gradiBit
	global	_pigreco
	global	_cameraXY
	global	_periferiche_CameraXY
	global	_cassetto
	global	_i
	global	_k
	global	_periferiche_Cassetto
	global	_periferiche_Trapano
	global	_periferiche_statoBatterie
	global	_trapano
	global	_alimentazione_online
	global	_cameraData_NEW
	global	_camera_online
	global	_cassetto_online
	global	_mov1_online
	global	_mov2_online
	global	_mov3_online
	global	_mov4_online
	global	_mov5_online
	global	_mov6_online
	global	_posizioneCameraX
	global	_posizioneCameraY
	global	_posizioneCassetto
	global	_posizioneMov1
	global	_posizioneMov2
	global	_posizioneMov3
	global	_posizioneMov4
	global	_posizioneMov5
	global	_posizioneMov6
	global	_posizioneRot1
	global	_posizioneRot3
	global	_posizioneRot4
	global	_posizioneRot6
	global	_posizioneTrapano
	global	_rot1_online
	global	_rot3_online
	global	_rot4_online
	global	_rot6_online
	global	_ruoteData_NEW
	global	_sensori_online
	global	_serialData_NEW
	global	_trapanoData_NEW
	global	_trapano_online
	global	_bufferDataRX
	global	_errno
	global	_console_cassetto
	global	_console_inclinazioneCamera
	global	_console_posizioneTrapano
	global	_console_puntaTrapano
	global	_console_rotazioneCamera
	global	_console_rotazioneTrapano
	global	_ruote
	global	_periferiche_Ruote
	global	_console_velocitaRuote
	global	_console_distanzaRuote
	global	_console_raggioRuote
	global	_RXF0SIDH
_RXF0SIDH	set	0xF00
	global	_RXF0SIDL
_RXF0SIDL	set	0xF01
	global	_RXF1SIDH
_RXF1SIDH	set	0xF04
	global	_RXF1SIDL
_RXF1SIDL	set	0xF05
	global	_RXF2SIDL
_RXF2SIDL	set	0xF09
	global	_RXM0SIDH
_RXM0SIDH	set	0xF18
	global	_RXM0SIDL
_RXM0SIDL	set	0xF19
	global	_RXM1SIDL
_RXM1SIDL	set	0xF1D
	global	_TXB0D0
_TXB0D0	set	0xF46
	global	_TXB0D1
_TXB0D1	set	0xF47
	global	_TXB0D2
_TXB0D2	set	0xF48
	global	_TXB0D3
_TXB0D3	set	0xF49
	global	_TXB0D4
_TXB0D4	set	0xF4A
	global	_TXB0D5
_TXB0D5	set	0xF4B
	global	_TXB0D6
_TXB0D6	set	0xF4C
	global	_TXB0D7
_TXB0D7	set	0xF4D
	global	_TXB0DLC
_TXB0DLC	set	0xF45
	global	_TXB0SIDH
_TXB0SIDH	set	0xF41
	global	_TXB0SIDL
_TXB0SIDL	set	0xF42
	global	_TXB0REQ
_TXB0REQ	set	0x7A03
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_BRGCON1
_BRGCON1	set	0xF70
	global	_BRGCON2
_BRGCON2	set	0xF71
	global	_BRGCON3
_BRGCON3	set	0xF72
	global	_CANCON
_CANCON	set	0xF6F
	global	_CANSTAT
_CANSTAT	set	0xF6E
	global	_CIOCON
_CIOCON	set	0xF73
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_RCREG
_RCREG	set	0xFAE
	global	_RCSTA
_RCSTA	set	0xFAB
	global	_RXB0CON
_RXB0CON	set	0xF60
	global	_RXB0D0
_RXB0D0	set	0xF66
	global	_RXB0D1
_RXB0D1	set	0xF67
	global	_RXB0D2
_RXB0D2	set	0xF68
	global	_RXB0D3
_RXB0D3	set	0xF69
	global	_RXB0D4
_RXB0D4	set	0xF6A
	global	_RXB0D5
_RXB0D5	set	0xF6B
	global	_RXB0D6
_RXB0D6	set	0xF6C
	global	_RXB0D7
_RXB0D7	set	0xF6D
	global	_RXB0DLC
_RXB0DLC	set	0xF65
	global	_RXB0SIDH
_RXB0SIDH	set	0xF61
	global	_RXB0SIDL
_RXB0SIDL	set	0xF62
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_SPBRGH
_SPBRGH	set	0xFB0
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TXREG
_TXREG	set	0xFAD
	global	_TXSTA
_TXSTA	set	0xFAC
	global	_BRG16
_BRG16	set	0x7DC3
	global	_BRGH
_BRGH	set	0x7D62
	global	_GIE
_GIE	set	0x7F97
	global	_PEIE
_PEIE	set	0x7F96
	global	_RCIE
_RCIE	set	0x7CED
	global	_RCIF
_RCIF	set	0x7CF5
	global	_RXB0FUL
_RXB0FUL	set	0x7B07
	global	_RXB0IE
_RXB0IE	set	0x7D18
	global	_RXB0IF
_RXB0IF	set	0x7D20
	global	_SPEN
_SPEN	set	0x7D5F
	global	_TXEN
_TXEN	set	0x7D65
	global	_TXIF
_TXIF	set	0x7CF4
	
STR_2:
	db	64	;'@'
	db	37
	db	99	;'c'
	db	32
	db	37
	db	51	;'3'
	db	100	;'d'
	db	32
	db	37
	db	51	;'3'
	db	100	;'d'
	db	32
	db	37
	db	51	;'3'
	db	100	;'d'
	db	32
	db	37
	db	51	;'3'
	db	100	;'d'
	db	36
	db	0
	
STR_1:
	db	64	;'@'
	db	37
	db	99	;'c'
	db	32
	db	37
	db	51	;'3'
	db	100	;'d'
	db	32
	db	37
	db	51	;'3'
	db	100	;'d'
	db	32
	db	37
	db	51	;'3'
	db	100	;'d'
	db	32
	db	36
	db	0
; #config settings
global __CFG_OSC$IRCIO7
__CFG_OSC$IRCIO7 equ 0x0
global __CFG_PWRT$ON
__CFG_PWRT$ON equ 0x0
global __CFG_WDTPS$1
__CFG_WDTPS$1 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_DEBUG$ON
__CFG_DEBUG$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
	file	"schedaMaster.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMRAM,class=COMRAM,bit,space=1,noexec
global __pbitbssCOMRAM
__pbitbssCOMRAM:
	global	_alimentazione_online
_alimentazione_online:
       ds      1
	global	_cameraData_NEW
_cameraData_NEW:
       ds      1
	global	_camera_online
_camera_online:
       ds      1
	global	_cassetto_online
_cassetto_online:
       ds      1
	global	_mov1_online
_mov1_online:
       ds      1
	global	_mov2_online
_mov2_online:
       ds      1
	global	_mov3_online
_mov3_online:
       ds      1
	global	_mov4_online
_mov4_online:
       ds      1
	global	_mov5_online
_mov5_online:
       ds      1
	global	_mov6_online
_mov6_online:
       ds      1
	global	_posizioneCameraX
_posizioneCameraX:
       ds      1
	global	_posizioneCameraY
_posizioneCameraY:
       ds      1
	global	_posizioneCassetto
_posizioneCassetto:
       ds      1
	global	_posizioneMov1
_posizioneMov1:
       ds      1
	global	_posizioneMov2
_posizioneMov2:
       ds      1
	global	_posizioneMov3
_posizioneMov3:
       ds      1
	global	_posizioneMov4
_posizioneMov4:
       ds      1
	global	_posizioneMov5
_posizioneMov5:
       ds      1
	global	_posizioneMov6
_posizioneMov6:
       ds      1
	global	_posizioneRot1
_posizioneRot1:
       ds      1
	global	_posizioneRot3
_posizioneRot3:
       ds      1
	global	_posizioneRot4
_posizioneRot4:
       ds      1
	global	_posizioneRot6
_posizioneRot6:
       ds      1
	global	_posizioneTrapano
_posizioneTrapano:
       ds      1
	global	_rot1_online
_rot1_online:
       ds      1
	global	_rot3_online
_rot3_online:
       ds      1
	global	_rot4_online
_rot4_online:
       ds      1
	global	_rot6_online
_rot6_online:
       ds      1
	global	_ruoteData_NEW
_ruoteData_NEW:
       ds      1
	global	_sensori_online
_sensori_online:
       ds      1
	global	_serialData_NEW
_serialData_NEW:
       ds      1
	global	_trapanoData_NEW
_trapanoData_NEW:
       ds      1
	global	_trapano_online
_trapano_online:
       ds      1
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_cameraXY
_cameraXY:
       ds      2
	global	_periferiche_CameraXY
_periferiche_CameraXY:
       ds      2
	global	_cassetto
_cassetto:
       ds      1
	global	_i
_i:
       ds      1
	global	_k
_k:
       ds      1
	global	_periferiche_Cassetto
_periferiche_Cassetto:
       ds      1
	global	_periferiche_Trapano
_periferiche_Trapano:
       ds      1
	global	_periferiche_statoBatterie
_periferiche_statoBatterie:
       ds      1
	global	_trapano
_trapano:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_bufferDataRX
_bufferDataRX:
       ds      19
	global	_errno
_errno:
       ds      2
	global	_console_cassetto
_console_cassetto:
       ds      1
	global	_console_inclinazioneCamera
_console_inclinazioneCamera:
       ds      1
	global	_console_posizioneTrapano
_console_posizioneTrapano:
       ds      1
	global	_console_puntaTrapano
_console_puntaTrapano:
       ds      1
	global	_console_rotazioneCamera
_console_rotazioneCamera:
       ds      1
	global	_console_rotazioneTrapano
_console_rotazioneTrapano:
       ds      1
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_ruote
_ruote:
       ds      60
	global	_periferiche_Ruote
_periferiche_Ruote:
       ds      42
	global	_console_velocitaRuote
_console_velocitaRuote:
       ds      2
	global	_console_distanzaRuote
_console_distanzaRuote:
       ds      2
	global	_console_raggioRuote
_console_raggioRuote:
       ds      2
	file	"schedaMaster.as"
	line	#
psect	cinit
; Clear objects allocated to BANK1 (108 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	108
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (27 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	27
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BITCOMRAM (5 bytes)
	global __pbitbssCOMRAM
clrf	(__pbitbssCOMRAM/8+4)&0xffh,c
clrf	(__pbitbssCOMRAM/8+3)&0xffh,c
clrf	(__pbitbssCOMRAM/8+2)&0xffh,c
clrf	(__pbitbssCOMRAM/8+1)&0xffh,c
clrf	(__pbitbssCOMRAM/8+0)&0xffh,c
; Clear objects allocated to COMRAM (11 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	11
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_ruoteRoutine$971
_ruoteRoutine$971:	; 3 bytes @ 0x0
	ds   3
	global	_ruoteRoutine$972
_ruoteRoutine$972:	; 3 bytes @ 0x3
	ds   3
	global	_ruoteRoutine$268
_ruoteRoutine$268:	; 3 bytes @ 0x6
	ds   3
	global	_ruoteRoutine$269
_ruoteRoutine$269:	; 3 bytes @ 0x9
	ds   3
	global	_ruoteRoutine$270
_ruoteRoutine$270:	; 3 bytes @ 0xC
	ds   3
	global	_ruoteRoutine$271
_ruoteRoutine$271:	; 3 bytes @ 0xF
	ds   3
	global	_ruoteRoutine$272
_ruoteRoutine$272:	; 3 bytes @ 0x12
	ds   3
	global	_ruoteRoutine$273
_ruoteRoutine$273:	; 3 bytes @ 0x15
	ds   3
	global	_ruoteRoutine$274
_ruoteRoutine$274:	; 3 bytes @ 0x18
	ds   3
	global	_ruoteRoutine$275
_ruoteRoutine$275:	; 3 bytes @ 0x1B
	ds   3
	global	ruoteRoutine@velocitaMovimento
ruoteRoutine@velocitaMovimento:	; 3 bytes @ 0x1E
	ds   3
	global	_ruoteRoutine$976
_ruoteRoutine$976:	; 3 bytes @ 0x21
	ds   3
	global	ruoteRoutine@dICR_R
ruoteRoutine@dICR_R:	; 18 bytes @ 0x24
	ds   18
	global	ruoteRoutine@massimaDistanza
ruoteRoutine@massimaDistanza:	; 3 bytes @ 0x36
	ds   3
	global	_ruoteRoutine$967
_ruoteRoutine$967:	; 3 bytes @ 0x39
	ds   3
	global	_ruoteRoutine$973
_ruoteRoutine$973:	; 3 bytes @ 0x3C
	ds   3
	global	_ruoteRoutine$974
_ruoteRoutine$974:	; 3 bytes @ 0x3F
	ds   3
	global	_ruoteRoutine$975
_ruoteRoutine$975:	; 3 bytes @ 0x42
	ds   3
	global	_ruoteRoutine$977
_ruoteRoutine$977:	; 3 bytes @ 0x45
	ds   3
	global	_ruoteRoutine$968
_ruoteRoutine$968:	; 3 bytes @ 0x48
	ds   3
	global	_ruoteRoutine$969
_ruoteRoutine$969:	; 3 bytes @ 0x4B
	ds   3
	global	_ruoteRoutine$970
_ruoteRoutine$970:	; 3 bytes @ 0x4E
	ds   3
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_canConfigMode:	; 0 bytes @ 0x0
??_canNormalMode:	; 0 bytes @ 0x0
??_picSetup:	; 0 bytes @ 0x0
??_bluetoothSetup:	; 0 bytes @ 0x0
??_bluetoothRX:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?_frexp
?_frexp:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	global	frexp@value
frexp@value:	; 3 bytes @ 0x0
	ds   1
??_canSetup:	; 0 bytes @ 0x1
	global	bluetoothRX@n
bluetoothRX@n:	; 1 bytes @ 0x1
	ds   1
	global	bluetoothRX@RXdato3
bluetoothRX@RXdato3:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds   1
	global	bluetoothRX@RXdato2
bluetoothRX@RXdato2:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	frexp@eptr
frexp@eptr:	; 2 bytes @ 0x3
	ds   1
??___wmul:	; 0 bytes @ 0x4
??___fttol:	; 0 bytes @ 0x4
	global	bluetoothRX@RXdato1
bluetoothRX@RXdato1:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds   1
??___ftpack:	; 0 bytes @ 0x5
??_frexp:	; 0 bytes @ 0x5
	ds   3
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds   1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x9
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0xA
	ds   1
??___awtoft:	; 0 bytes @ 0xB
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	ds   1
??___lltoft:	; 0 bytes @ 0xC
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xC
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xC
	ds   2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xE
	ds   1
	global	?_canTX
?_canTX:	; 0 bytes @ 0xF
	global	?___altoft
?___altoft:	; 3 bytes @ 0xF
	global	canTX@nData
canTX@nData:	; 2 bytes @ 0xF
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xF
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0xF
	ds   1
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x10
	ds   2
??___ftmul:	; 0 bytes @ 0x12
	ds   1
??___altoft:	; 0 bytes @ 0x13
	ds   2
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x15
	ds   1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x16
	ds   1
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x17
	ds   1
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x18
	ds   1
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x19
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1A
	ds   1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x1B
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x1B
	ds   3
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x1E
	ds   1
??_canTX:	; 0 bytes @ 0x1F
	global	canTX@ap
canTX@ap:	; 2 bytes @ 0x1F
	ds   2
??_cameraRoutine:	; 0 bytes @ 0x21
??_trapanoRoutine:	; 0 bytes @ 0x21
??___ftdiv:	; 0 bytes @ 0x21
	ds   3
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x24
	ds   1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x25
	ds   3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x28
	ds   1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x29
	ds   1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x2A
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x2A
	ds   3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2D
	ds   3
??___ftadd:	; 0 bytes @ 0x30
	ds   3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x33
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x34
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x35
	ds   1
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x36
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x36
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x36
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x36
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x36
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x36
	ds   3
?___ftge:	; 1 bit 
??___ftneg:	; 0 bytes @ 0x39
	global	?_fabs
?_fabs:	; 3 bytes @ 0x39
	global	eval_poly@d
eval_poly@d:	; 2 bytes @ 0x39
	global	fabs@d
fabs@d:	; 3 bytes @ 0x39
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x39
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x39
	ds   2
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x3B
	ds   1
??___ftsub:	; 0 bytes @ 0x3C
??_fabs:	; 0 bytes @ 0x3C
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3C
	ds   1
??_eval_poly:	; 0 bytes @ 0x3D
	ds   2
??___ftge:	; 0 bytes @ 0x3F
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x3F
	ds   3
	global	?_atan
?_atan:	; 3 bytes @ 0x42
	global	?_log
?_log:	; 3 bytes @ 0x42
	global	?_floor
?_floor:	; 3 bytes @ 0x42
	global	?_ldexp
?_ldexp:	; 3 bytes @ 0x42
	global	atan@f
atan@f:	; 3 bytes @ 0x42
	global	floor@x
floor@x:	; 3 bytes @ 0x42
	global	ldexp@value
ldexp@value:	; 3 bytes @ 0x42
	global	log@x
log@x:	; 3 bytes @ 0x42
	ds   3
??_atan:	; 0 bytes @ 0x45
??_log:	; 0 bytes @ 0x45
??_floor:	; 0 bytes @ 0x45
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x45
	global	log@exponent
log@exponent:	; 2 bytes @ 0x45
	global	atan@y
atan@y:	; 3 bytes @ 0x45
	global	floor@i
floor@i:	; 3 bytes @ 0x45
	ds   2
??_ldexp:	; 0 bytes @ 0x47
	ds   1
	global	floor@expon
floor@expon:	; 2 bytes @ 0x48
	global	atan@x
atan@x:	; 3 bytes @ 0x48
	ds   2
	global	?_exp
?_exp:	; 3 bytes @ 0x4A
	global	exp@x
exp@x:	; 3 bytes @ 0x4A
	ds   1
	global	atan@recip
atan@recip:	; 1 bytes @ 0x4B
	ds   1
	global	atan@val_squared
atan@val_squared:	; 3 bytes @ 0x4C
	ds   1
??_exp:	; 0 bytes @ 0x4D
	global	_exp$980
_exp$980:	; 3 bytes @ 0x4D
	ds   2
	global	atan@val
atan@val:	; 3 bytes @ 0x4F
	ds   1
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x50
	ds   2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x52
	ds   1
	global	?_pow
?_pow:	; 3 bytes @ 0x53
	global	pow@x
pow@x:	; 3 bytes @ 0x53
	ds   3
	global	pow@y
pow@y:	; 3 bytes @ 0x56
	ds   3
??_pow:	; 0 bytes @ 0x59
	global	_pow$978
_pow$978:	; 3 bytes @ 0x59
	ds   3
	global	_pow$979
_pow$979:	; 3 bytes @ 0x5C
	ds   3
	global	pow@sign
pow@sign:	; 1 bytes @ 0x5F
	ds   1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x60
	ds   4
	global	?_sqrt
?_sqrt:	; 3 bytes @ 0x64
	global	sqrt@a
sqrt@a:	; 3 bytes @ 0x64
	ds   3
??_sqrt:	; 0 bytes @ 0x67
	ds   3
	global	sqrt@og
sqrt@og:	; 3 bytes @ 0x6A
	ds   3
	global	sqrt@z
sqrt@z:	; 3 bytes @ 0x6D
	ds   3
	global	sqrt@i
sqrt@i:	; 1 bytes @ 0x70
	ds   1
	global	sqrt@q
sqrt@q:	; 3 bytes @ 0x71
	ds   3
	global	sqrt@x
sqrt@x:	; 3 bytes @ 0x74
	ds   3
??_ruoteRoutine:	; 0 bytes @ 0x77
??_main:	; 0 bytes @ 0x77
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_canConfigMode:	; 0 bytes @ 0x0
?_canNormalMode:	; 0 bytes @ 0x0
?_picSetup:	; 0 bytes @ 0x0
?_ruoteRoutine:	; 0 bytes @ 0x0
?_cameraRoutine:	; 0 bytes @ 0x0
?_trapanoRoutine:	; 0 bytes @ 0x0
?_canSetup:	; 0 bytes @ 0x0
?_canRX:	; 0 bytes @ 0x0
?_bluetoothSetup:	; 0 bytes @ 0x0
?_bluetoothRX:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_my_ISR:	; 0 bytes @ 0x0
	global	?i2___ftpack
?i2___ftpack:	; 3 bytes @ 0x0
	global	i2___ftpack@arg
i2___ftpack@arg:	; 3 bytes @ 0x0
	ds   3
	global	i2___ftpack@exp
i2___ftpack@exp:	; 1 bytes @ 0x3
	ds   1
	global	i2___ftpack@sign
i2___ftpack@sign:	; 1 bytes @ 0x4
	ds   1
??i2___ftpack:	; 0 bytes @ 0x5
	ds   3
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	ds   3
??___lbtoft:	; 0 bytes @ 0xB
??___lwtoft:	; 0 bytes @ 0xB
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0xB
	ds   1
?i2___ftge:	; 1 bit 
	global	i2___ftge@ff1
i2___ftge@ff1:	; 3 bytes @ 0xC
	ds   3
	global	i2___ftge@ff2
i2___ftge@ff2:	; 3 bytes @ 0xF
	ds   3
??i2___ftge:	; 0 bytes @ 0x12
	ds   3
??_canRX:	; 0 bytes @ 0x15
	ds   2
	global	canRX@ID
canRX@ID:	; 1 bytes @ 0x17
	ds   1
	global	canRX@canRX
canRX@canRX:	; 8 bytes @ 0x18
	ds   8
	global	canRX@DLC
canRX@DLC:	; 1 bytes @ 0x20
	ds   1
??_my_ISR:	; 0 bytes @ 0x21
	ds   14
;!
;!Data Sizes:
;!    Strings     39
;!    Constant    121
;!    Data        0
;!    BSS         146
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     47      63
;!    BANK0           160    119     146
;!    BANK1           256     81     189
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    frexp@eptr	PTR int  size(2) Largest target is 2
;!		 -> log@exponent(BANK0[2]), floor@expon(BANK0[2]), 
;!
;!    eval_poly@d	PTR const  size(2) Largest target is 30
;!		 -> log@coeff(CODE[27]), exp@coeff(CODE[30]), atan@coeff_a(CODE[18]), atan@coeff_b(CODE[15]), 
;!
;!    canTX@ap	PTR void [1] size(2) Largest target is 0
;!		 -> ?_canTX(BANK0[0]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _my_ISR in COMRAM
;!
;!    _my_ISR->_canRX
;!    _canRX->i2___ftge
;!    i2___ftge->___lbtoft
;!    ___lwtoft->i2___ftpack
;!    ___lbtoft->i2___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    _trapanoRoutine->_canTX
;!    _ruoteRoutine->_sqrt
;!    _sqrt->_pow
;!    _pow->_exp
;!    _log->_eval_poly
;!    _exp->_floor
;!    _ldexp->_eval_poly
;!    _floor->___ftge
;!    ___altoft->___fttol
;!    ___ftsub->___ftadd
;!    ___awtoft->___ftpack
;!    ___lltoft->___ftpack
;!    _atan->___ftge
;!    _atan->_eval_poly
;!    _fabs->___ftneg
;!    ___ftneg->___ftadd
;!    _eval_poly->___ftadd
;!    ___ftmul->___awtoft
;!    ___ftadd->___ftdiv
;!    ___ftge->___ftneg
;!    ___ftdiv->___ftmul
;!    _canSetup->_canNormalMode
;!    _cameraRoutine->_canTX
;!    _canTX->___fttol
;!
;!Critical Paths under _my_ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_ruoteRoutine
;!
;!Critical Paths under _my_ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _my_ISR in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _my_ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _my_ISR in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _my_ISR in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0  279625
;!                        _bluetoothRX
;!                     _bluetoothSetup
;!                      _cameraRoutine
;!                           _canSetup
;!                              _canTX
;!                           _picSetup
;!                       _ruoteRoutine
;!                     _trapanoRoutine
;! ---------------------------------------------------------------------------------
;! (1) _trapanoRoutine                                       3     3      0    1498
;!                                             33 BANK0      3     3      0
;!                              _canTX
;! ---------------------------------------------------------------------------------
;! (1) _ruoteRoutine                                       195   195      0  274929
;!                                              0 BANK1     81    81      0
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                               _atan
;!                              _canTX
;!                                _pow
;!                               _sqrt
;! ---------------------------------------------------------------------------------
;! (2) _sqrt                                                19    16      3   23178
;!                                            100 BANK0     19    16      3
;!                           ___awtoft (ARG)
;!                            ___ftdiv (ARG)
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg (ARG)
;!                            ___ftsub
;!                                _pow (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _pow                                                 17    11      6  145118
;!                                             83 BANK0     17    11      6
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                           ___lltoft
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (3) _log                                                  5     2      3   44751
;!                                             66 BANK0      5     2      3
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (3) _exp                                                  9     6      3   77195
;!                                             74 BANK0      9     6      3
;!                           ___awtoft
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                          _eval_poly
;!                              _floor
;!                              _ldexp
;!                                _log (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _ldexp                                                7     2      5     376
;!                                             66 BANK0      7     2      5
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _floor                                                8     5      3   16253
;!                                             66 BANK0      8     5      3
;!                           ___altoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (4) _frexp                                                7     2      5     480
;!                                              0 BANK0      7     2      5
;! ---------------------------------------------------------------------------------
;! (5) ___fttol                                             15    11      4    2236
;!                                              0 BANK0     15    11      4
;! ---------------------------------------------------------------------------------
;! (5) ___altoft                                            10     6      4    2272
;!                                             15 BANK0     10     6      4
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftsub                                              6     0      6    8394
;!                                             54 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                            ___ftadd
;! ---------------------------------------------------------------------------------
;! (4) ___awtoft                                             4     1      3    4975
;!                                              8 BANK0      4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___lltoft                                             9     5      4    2203
;!                                              8 BANK0      9     5      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) _atan                                                16    13      3   55323
;!                                             66 BANK0     16    13      3
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                          _eval_poly
;!                               _fabs
;! ---------------------------------------------------------------------------------
;! (3) _fabs                                                 3     0      3    2314
;!                                             57 BANK0      3     0      3
;!                            ___ftneg
;! ---------------------------------------------------------------------------------
;! (4) ___ftneg                                              3     0      3    2144
;!                                             54 BANK0      3     0      3
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _eval_poly                                           12     5      7   20372
;!                                             54 BANK0     12     5      7
;!                            ___ftadd
;!                            ___ftmul
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (5) ___wmul                                               6     2      4     654
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             15     9      6   10664
;!                                             12 BANK0     15     9      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftadd                                             12     6      6    7876
;!                                             42 BANK0     12     6      6
;!                           ___awtoft (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                             ___wmul (ARG)
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftge                                               9     3      6    2944
;!                                             57 BANK0      9     3      6
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftdiv                                             15     9      6    8212
;!                                             27 BANK0     15     9      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___ftpack                                             8     3      5    2070
;!                                              0 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _picSetup                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _canSetup                                             0     0      0       0
;!                      _canConfigMode
;!                      _canNormalMode
;! ---------------------------------------------------------------------------------
;! (2) _canNormalMode                                        1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _canConfigMode                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _cameraRoutine                                        0     0      0    1498
;!                              _canTX
;! ---------------------------------------------------------------------------------
;! (2) _canTX                                               18     2     16    1498
;!                                             15 BANK0     18     2     16
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _bluetoothSetup                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _bluetoothRX                                          7     7      0     202
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _my_ISR                                              14    14      0    3454
;!                                             33 COMRAM    14    14      0
;!                              _canRX
;! ---------------------------------------------------------------------------------
;! (8) _canRX                                               12    12      0    3454
;!                                             21 COMRAM    12    12      0
;!                           ___lbtoft
;!                           ___lwtoft
;!                           i2___ftge
;! ---------------------------------------------------------------------------------
;! (9) i2___ftge                                             9     3      6     656
;!                                             12 COMRAM     9     3      6
;!                           ___lbtoft (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (9) ___lwtoft                                             3     0      3     793
;!                                              8 COMRAM     3     0      3
;!                         i2___ftpack
;! ---------------------------------------------------------------------------------
;! (9) ___lbtoft                                             4     1      3     409
;!                                              8 COMRAM     4     1      3
;!                         i2___ftpack
;! ---------------------------------------------------------------------------------
;! (10) i2___ftpack                                          8     3      5     387
;!                                              0 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 10
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _bluetoothRX
;!   _bluetoothSetup
;!   _cameraRoutine
;!     _canTX
;!       ___fttol (ARG)
;!   _canSetup
;!     _canConfigMode
;!     _canNormalMode
;!   _canTX
;!     ___fttol (ARG)
;!   _picSetup
;!   _ruoteRoutine
;!     ___awtoft
;!       ___ftpack
;!     ___ftadd
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftpack (ARG)
;!       ___wmul (ARG)
;!       _frexp (ARG)
;!     ___ftdiv
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftpack (ARG)
;!     ___ftge
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!         _frexp (ARG)
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftneg
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!         _frexp (ARG)
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!     ___fttol
;!     _atan
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!         _frexp (ARG)
;!       ___ftdiv
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!       ___ftge
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftneg
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!       _eval_poly
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___wmul
;!       _fabs
;!         ___ftneg
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!     _canTX
;!       ___fttol (ARG)
;!     _pow
;!       ___ftge
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftneg
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!       ___fttol
;!       ___lltoft
;!         ___ftpack
;!       _exp
;!         ___awtoft
;!           ___ftpack
;!         ___ftdiv
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!         ___ftge
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftneg
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!         ___ftsub
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!         ___fttol
;!         _eval_poly
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___wmul
;!         _floor
;!           ___altoft
;!             ___ftpack
;!             ___fttol (ARG)
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftge
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!           ___fttol
;!           _frexp
;!         _ldexp
;!           _eval_poly (ARG)
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___wmul
;!         _log (ARG)
;!           ___awtoft
;!             ___ftpack
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___wmul
;!           _frexp
;!       _log
;!         ___awtoft
;!           ___ftpack
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         _eval_poly
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___wmul
;!         _frexp
;!     _sqrt
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!       ___ftge (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!       ___ftsub (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!       _pow (ARG)
;!         ___ftge
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftneg
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!         ___fttol
;!         ___lltoft
;!           ___ftpack
;!         _exp
;!           ___awtoft
;!             ___ftpack
;!           ___ftdiv
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!           ___ftge
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftneg
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!           ___ftsub
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!           ___fttol
;!           _eval_poly
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___wmul
;!           _floor
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftge
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftdiv (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       _frexp (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!             ___fttol
;!             _frexp
;!           _ldexp
;!             _eval_poly (ARG)
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___wmul
;!           _log (ARG)
;!             ___awtoft
;!               ___ftpack
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___wmul
;!             _frexp
;!         _log
;!           ___awtoft
;!             ___ftpack
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___wmul
;!           _frexp
;!   _trapanoRoutine
;!     _canTX
;!       ___fttol (ARG)
;!
;! _my_ISR (ROOT)
;!   _canRX
;!     ___lbtoft
;!       i2___ftpack
;!     ___lwtoft
;!       i2___ftpack
;!     i2___ftge
;!       ___lbtoft (ARG)
;!         i2___ftpack
;!       ___lwtoft (ARG)
;!         i2___ftpack
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      16        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100     51      BD       7       73.8%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     77      92       5       91.3%
;!BITCOMRAM           5E      0       5       0        5.3%
;!COMRAM              5E     2F      3F       1       67.0%
;!BITSFR_3             0      0       0      40        0.0%
;!SFR_3                0      0       0      40        0.0%
;!BITSFR_2             0      0       0      40        0.0%
;!SFR_2                0      0       0      40        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     18E       3        0.0%
;!DATA                 0      0     18E      17        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_bluetoothRX
;;		_bluetoothSetup
;;		_cameraRoutine
;;		_canSetup
;;		_canTX
;;		_picSetup
;;		_ruoteRoutine
;;		_trapanoRoutine
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
	line	19
global __ptext0
__ptext0:
psect	text0
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 21
	line	20
	
l4640:
;schedaMaster.c: 20: picSetup();
	call	_picSetup	;wreg free
	line	21
	
l4642:
;schedaMaster.c: 21: canSetup();
	call	_canSetup	;wreg free
	line	22
	
l4644:
;schedaMaster.c: 22: bluetoothSetup();
	call	_bluetoothSetup	;wreg free
	line	23
	
l4646:
;schedaMaster.c: 23: PEIE= 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	24
	
l4648:
;schedaMaster.c: 24: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	25
	
l4650:
;schedaMaster.c: 25: canTX(0, 0x30);
	movlw	high(0)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(0)
	movwf	((canTX@nData))&0ffh
	movlw	high(030h)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(030h)
	movwf	(0+(?_canTX+02h))&0ffh
	call	_canTX	;wreg free
	goto	l4652
	line	26
;schedaMaster.c: 26: while(1){
	
l417:
	line	27
	
l4652:
;schedaMaster.c: 27: if (serialData_NEW){
	btfss	(_serialData_NEW/8),c,(_serialData_NEW)&7
	goto	u4901
	goto	u4900
u4901:
	goto	l418
u4900:
	line	28
	
l4654:
;schedaMaster.c: 28: serialData_NEW = 0;
	bcf	(_serialData_NEW/8),c,(_serialData_NEW)&7
	line	29
	
l4656:
;schedaMaster.c: 29: bluetoothRX();
	call	_bluetoothRX	;wreg free
	line	30
;schedaMaster.c: 30: }
	goto	l4652
	line	31
	
l418:
;schedaMaster.c: 31: else if (ruoteData_NEW){
	btfss	(_ruoteData_NEW/8),c,(_ruoteData_NEW)&7
	goto	u4911
	goto	u4910
u4911:
	goto	l420
u4910:
	line	32
	
l4658:
;schedaMaster.c: 32: ruoteData_NEW = 0;
	bcf	(_ruoteData_NEW/8),c,(_ruoteData_NEW)&7
	line	33
	
l4660:
;schedaMaster.c: 33: ruoteRoutine();
	call	_ruoteRoutine	;wreg free
	line	34
;schedaMaster.c: 34: }
	goto	l4652
	line	36
	
l420:
;schedaMaster.c: 36: else if (cameraData_NEW){
	btfss	(_cameraData_NEW/8),c,(_cameraData_NEW)&7
	goto	u4921
	goto	u4920
u4921:
	goto	l422
u4920:
	line	37
	
l4662:
;schedaMaster.c: 37: cameraData_NEW = 0;
	bcf	(_cameraData_NEW/8),c,(_cameraData_NEW)&7
	line	38
	
l4664:
;schedaMaster.c: 38: cameraRoutine();
	call	_cameraRoutine	;wreg free
	line	39
;schedaMaster.c: 39: }
	goto	l4652
	line	40
	
l422:
;schedaMaster.c: 40: else if (trapanoData_NEW && posizioneTrapano == 0 && posizioneCassetto == 0){
	btfss	(_trapanoData_NEW/8),c,(_trapanoData_NEW)&7
	goto	u4931
	goto	u4930
u4931:
	goto	l4652
u4930:
	
l4666:
	btfsc	(_posizioneTrapano/8),c,(_posizioneTrapano)&7
	goto	u4941
	goto	u4940
u4941:
	goto	l4652
u4940:
	
l4668:
	btfsc	(_posizioneCassetto/8),c,(_posizioneCassetto)&7
	goto	u4951
	goto	u4950
u4951:
	goto	l4652
u4950:
	line	41
	
l4670:
;schedaMaster.c: 41: trapanoData_NEW = 0;
	bcf	(_trapanoData_NEW/8),c,(_trapanoData_NEW)&7
	line	42
	
l4672:
;schedaMaster.c: 42: trapanoRoutine();
	call	_trapanoRoutine	;wreg free
	line	43
;schedaMaster.c: 43: canTX(1, 0x2B, trapano);
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(01h)
	movwf	((canTX@nData))&0ffh
	movlw	high(02Bh)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(02Bh)
	movwf	(0+(?_canTX+02h))&0ffh
	movff	(c:_trapano),0+(?_canTX+04h)
	movlb	0	; () banked
	clrf	(1+(?_canTX+04h))&0ffh
	call	_canTX	;wreg free
	goto	l4652
	line	44
	
l424:
	goto	l4652
	line	48
	
l423:
	goto	l4652
	
l421:
	goto	l4652
	
l419:
	goto	l4652
	
l425:
	line	26
	goto	l4652
	
l426:
	line	50
	
l427:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_trapanoRoutine

;; *************** function _trapanoRoutine *****************
;; Defined at:
;;		line 89 in file "C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_canTX
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	line	89
global __ptext1
__ptext1:
psect	text1
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
	line	89
	global	__size_of_trapanoRoutine
	__size_of_trapanoRoutine	equ	__end_of_trapanoRoutine-_trapanoRoutine
	
_trapanoRoutine:
;incstack = 0
	opt	stack 25
	line	90
	
l4602:
;schedaMaster.c: 90: if (console_cassetto == 1){
	movlb	0	; () banked
		decf	((_console_cassetto))&0ffh,w
	btfss	status,2
	goto	u4801
	goto	u4800

u4801:
	goto	l4606
u4800:
	line	91
	
l4604:; BSR set to: 0

;schedaMaster.c: 91: posizioneTrapano = 1;
	bsf	(_posizioneTrapano/8),c,(_posizioneTrapano)&7
	line	93
;schedaMaster.c: 93: return;
	goto	l447
	line	94
	
l446:; BSR set to: 0

	line	95
	
l4606:; BSR set to: 0

;schedaMaster.c: 94: }
;schedaMaster.c: 95: if (cassetto == 0 && periferiche_Cassetto == 0){
	movf	((c:_cassetto)),c,w
	btfss	status,2
	goto	u4811
	goto	u4810
u4811:
	goto	l447
u4810:
	
l4608:; BSR set to: 0

	movf	((c:_periferiche_Cassetto)),c,w
	btfss	status,2
	goto	u4821
	goto	u4820
u4821:
	goto	l447
u4820:
	line	96
	
l4610:; BSR set to: 0

;schedaMaster.c: 96: if (trapano == 0b00001010){
		movlw	10
	xorwf	((c:_trapano)),c,w
	btfss	status,2
	goto	u4831
	goto	u4830

u4831:
	goto	l4618
u4830:
	line	97
	
l4612:; BSR set to: 0

;schedaMaster.c: 97: posizioneCassetto = 1;
	bsf	(_posizioneCassetto/8),c,(_posizioneCassetto)&7
	line	98
	
l4614:; BSR set to: 0

;schedaMaster.c: 98: cassetto = 1;
	movlw	low(01h)
	movwf	((c:_cassetto)),c
	line	99
	
l4616:; BSR set to: 0

;schedaMaster.c: 99: canTX(1, 0x2F, cassetto);
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(01h)
	movwf	((canTX@nData))&0ffh
	movlw	high(02Fh)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(02Fh)
	movwf	(0+(?_canTX+02h))&0ffh
	movff	(c:_cassetto),0+(?_canTX+04h)
	movlb	0	; () banked
	clrf	(1+(?_canTX+04h))&0ffh
	call	_canTX	;wreg free
	goto	l4618
	line	100
	
l449:
	line	101
	
l4618:
;schedaMaster.c: 100: }
;schedaMaster.c: 101: if (console_posizioneTrapano == 0){
	movlb	0	; () banked
	movf	((_console_posizioneTrapano))&0ffh,w
	btfss	status,2
	goto	u4841
	goto	u4840
u4841:
	goto	l4626
u4840:
	line	102
	
l4620:; BSR set to: 0

;schedaMaster.c: 102: posizioneTrapano = 1;
	bsf	(_posizioneTrapano/8),c,(_posizioneTrapano)&7
	line	103
	
l4622:; BSR set to: 0

;schedaMaster.c: 103: trapano = 0b00001000;
	movlw	low(08h)
	movwf	((c:_trapano)),c
	goto	l447
	line	104
	
l4624:; BSR set to: 0

;schedaMaster.c: 104: return;
	goto	l447
	line	105
	
l450:; BSR set to: 0

	line	106
	
l4626:; BSR set to: 0

;schedaMaster.c: 105: }
;schedaMaster.c: 106: if (console_posizioneTrapano == 1 && cassetto==0 && periferiche_Cassetto == 0 && console_cassetto == 0){
	movlb	0	; () banked
		decf	((_console_posizioneTrapano))&0ffh,w
	btfss	status,2
	goto	u4851
	goto	u4850

u4851:
	goto	l447
u4850:
	
l4628:; BSR set to: 0

	movf	((c:_cassetto)),c,w
	btfss	status,2
	goto	u4861
	goto	u4860
u4861:
	goto	l447
u4860:
	
l4630:; BSR set to: 0

	movf	((c:_periferiche_Cassetto)),c,w
	btfss	status,2
	goto	u4871
	goto	u4870
u4871:
	goto	l447
u4870:
	
l4632:; BSR set to: 0

	movlb	0	; () banked
	movf	((_console_cassetto))&0ffh,w
	btfss	status,2
	goto	u4881
	goto	u4880
u4881:
	goto	l447
u4880:
	line	107
	
l4634:; BSR set to: 0

;schedaMaster.c: 107: posizioneTrapano = 1;
	bsf	(_posizioneTrapano/8),c,(_posizioneTrapano)&7
	line	108
	
l4636:; BSR set to: 0

;schedaMaster.c: 108: trapano = ((console_rotazioneTrapano & 0x01) << 5) + ((console_puntaTrapano & 0x01) << 4) + 0b0111;
	movff	(_console_puntaTrapano),??_trapanoRoutine+0+0
	movlw	01h
	movlb	0	; () banked
	andwf	(??_trapanoRoutine+0+0)&0ffh
	movlb	0	; () banked
	swapf	(??_trapanoRoutine+0+0)&0ffh
	movlw	(0ffh shl 4) & 0ffh
	andwf	(??_trapanoRoutine+0+0)&0ffh
	movff	(_console_rotazioneTrapano),??_trapanoRoutine+1+0
	movlw	01h
	movlb	0	; () banked
	andwf	(??_trapanoRoutine+1+0)&0ffh
	movlw	05h
	movlb	0	; () banked
	movwf	(??_trapanoRoutine+2+0)&0ffh
u4895:
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_trapanoRoutine+1+0)&0ffh
	movlb	0	; () banked
	decfsz	(??_trapanoRoutine+2+0)&0ffh
	goto	u4895
	movlb	0	; () banked
	movf	(??_trapanoRoutine+1+0)&0ffh,w
	movlb	0	; () banked
	addwf	(??_trapanoRoutine+0+0)&0ffh,w
	addlw	low(07h)
	movwf	((c:_trapano)),c
	goto	l447
	line	109
	
l4638:; BSR set to: 0

;schedaMaster.c: 109: return;
	goto	l447
	line	110
	
l451:; BSR set to: 0

	goto	l447
	line	111
	
l448:; BSR set to: 0

	line	112
	
l447:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_trapanoRoutine
	__end_of_trapanoRoutine:
	signat	_trapanoRoutine,88
	global	_ruoteRoutine

;; *************** function _ruoteRoutine *****************
;; Defined at:
;;		line 116 in file "C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dICR_R         18   36[BANK1 ] float [6]
;;  massimaDista    3   54[BANK1 ] float 
;;  velocitaMovi    3   30[BANK1 ] float 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0      81       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0      81       0       0       0       0
;;Total ram usage:       81 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		_atan
;;		_canTX
;;		_pow
;;		_sqrt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	116
global __ptext2
__ptext2:
psect	text2
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
	line	116
	global	__size_of_ruoteRoutine
	__size_of_ruoteRoutine	equ	__end_of_ruoteRoutine-_ruoteRoutine
	
_ruoteRoutine:; BSR set to: 0

;incstack = 0
	opt	stack 21
	line	120
	
l4290:
;schedaMaster.c: 117: float dICR_R[6];
;schedaMaster.c: 118: float velocitaMovimento;
;schedaMaster.c: 119: float massimaDistanza;
;schedaMaster.c: 120: velocitaMovimento = ((float)(maxVel * console_velocitaRuote) / 255);
	movlw	low((_maxVel))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_maxVel))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_maxVel))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f2)
	tblrd*+
	
	movff	tablat,(___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f2+2)

	movff	(_console_velocitaRuote),(___awtoft@c)
	movff	(_console_velocitaRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftdiv@f1)
	movff	1+?___ftmul,(___ftdiv@f1+1)
	movff	2+?___ftmul,(___ftdiv@f1+2)
	movlw	low(float24(255.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(255.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(255.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(ruoteRoutine@velocitaMovimento)
	movff	1+?___ftdiv,(ruoteRoutine@velocitaMovimento+1)
	movff	2+?___ftdiv,(ruoteRoutine@velocitaMovimento+2)
	line	121
	
l4292:
;schedaMaster.c: 121: massimaDistanza = 0;
	movlw	low(float24(0.0000000000000000))
	movlb	1	; () banked
	movwf	((ruoteRoutine@massimaDistanza))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	1	; () banked
	movwf	((ruoteRoutine@massimaDistanza+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	1	; () banked
	movwf	((ruoteRoutine@massimaDistanza+2))&0ffh

	line	122
	
l4294:; BSR set to: 1

;schedaMaster.c: 122: if (console_raggioRuote == 0 || console_velocitaRuote == 0){
	movlb	1	; () banked
	movf	((_console_raggioRuote))&0ffh,w
	movlb	1	; () banked
iorwf	((_console_raggioRuote+1))&0ffh,w
	btfsc	status,2
	goto	u4431
	goto	u4430

u4431:
	goto	l4298
u4430:
	
l4296:; BSR set to: 1

	movlb	1	; () banked
	movf	((_console_velocitaRuote))&0ffh,w
	movlb	1	; () banked
iorwf	((_console_velocitaRuote+1))&0ffh,w
	btfss	status,2
	goto	u4441
	goto	u4440

u4441:
	goto	l4316
u4440:
	goto	l4298
	
l456:; BSR set to: 1

	line	123
	
l4298:; BSR set to: 1

;schedaMaster.c: 123: for (i=0;i<6;i++){
	movlw	low(0)
	movwf	((c:_i)),c
	
l4300:; BSR set to: 1

		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4451
	goto	u4450

u4451:
	goto	l4304
u4450:
	goto	l4310
	
l4302:; BSR set to: 1

	goto	l4310
	
l457:; BSR set to: 1

	line	124
	
l4304:
;schedaMaster.c: 124: ruote[i].direzione = 0;
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	123
	
l4306:
	incf	((c:_i)),c
	
l4308:
		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4461
	goto	u4460

u4461:
	goto	l4304
u4460:
	goto	l4310
	
l458:
	line	126
	
l4310:
;schedaMaster.c: 125: }
;schedaMaster.c: 126: canTX(1, 0x20, 1);
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(01h)
	movwf	((canTX@nData))&0ffh
	movlw	high(020h)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(020h)
	movwf	(0+(?_canTX+02h))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	movwf	(1+(?_canTX+04h))&0ffh
	movlw	low(01h)
	movwf	(0+(?_canTX+04h))&0ffh
	call	_canTX	;wreg free
	goto	l459
	line	127
	
l4312:
;schedaMaster.c: 127: return;
	goto	l459
	line	128
	
l4314:
;schedaMaster.c: 128: }
	goto	l460
	line	130
	
l454:
	
l4316:
;schedaMaster.c: 130: else if (console_raggioRuote == -2 || console_raggioRuote == 2){
		movlw	254
	movlb	1	; () banked
	xorwf	((_console_raggioRuote))&0ffh,w
	bnz	u4470
	movlb	1	; () banked
	incf	((_console_raggioRuote+1))&0ffh,w
	btfsc	status,2
	goto	u4471
	goto	u4470

u4471:
	goto	l4320
u4470:
	
l4318:; BSR set to: 1

		movlw	2
	movlb	1	; () banked
	xorwf	((_console_raggioRuote))&0ffh,w
	movlb	1	; () banked
iorwf	((_console_raggioRuote+1))&0ffh,w
	btfss	status,2
	goto	u4481
	goto	u4480

u4481:
	goto	l4424
u4480:
	goto	l4320
	
l463:; BSR set to: 1

	line	131
	
l4320:; BSR set to: 1

;schedaMaster.c: 131: if (console_raggioRuote == -2){
		movlw	254
	movlb	1	; () banked
	xorwf	((_console_raggioRuote))&0ffh,w
	bnz	u4491
	movlb	1	; () banked
	incf	((_console_raggioRuote+1))&0ffh,w
	btfss	status,2
	goto	u4491
	goto	u4490

u4491:
	goto	l4340
u4490:
	line	132
	
l4322:; BSR set to: 1

;schedaMaster.c: 132: for (i=0;i<3;i++){
	movlw	low(0)
	movwf	((c:_i)),c
	
l4324:; BSR set to: 1

		movlw	03h-1
	cpfsgt	((c:_i)),c
	goto	u4501
	goto	u4500

u4501:
	goto	l4328
u4500:
	goto	l4338
	
l4326:; BSR set to: 1

	goto	l4338
	
l465:; BSR set to: 1

	line	133
	
l4328:
;schedaMaster.c: 133: ruote[i].direzione = -1;
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlw	low(0FFh)
	movwf	indf2
	line	132
	
l4330:
	incf	((c:_i)),c
	
l4332:
		movlw	03h-1
	cpfsgt	((c:_i)),c
	goto	u4511
	goto	u4510

u4511:
	goto	l4328
u4510:
	goto	l4338
	
l466:
	line	135
	goto	l4338
	
l468:
	line	136
	
l4334:
;schedaMaster.c: 136: ruote[i].direzione = 1;
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlw	low(01h)
	movwf	indf2
	line	135
	
l4336:
	incf	((c:_i)),c
	goto	l4338
	
l467:
	
l4338:
		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4521
	goto	u4520

u4521:
	goto	l4334
u4520:
	goto	l4358
	
l469:
	line	138
;schedaMaster.c: 137: }
;schedaMaster.c: 138: }
	goto	l4358
	line	139
	
l464:
	line	140
	
l4340:
;schedaMaster.c: 139: else{
;schedaMaster.c: 140: for (i=0;i<3;i++){
	movlw	low(0)
	movwf	((c:_i)),c
	
l4342:
		movlw	03h-1
	cpfsgt	((c:_i)),c
	goto	u4531
	goto	u4530

u4531:
	goto	l4346
u4530:
	goto	l4356
	
l4344:
	goto	l4356
	
l471:
	line	141
	
l4346:
;schedaMaster.c: 141: ruote[i].direzione = 1;
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlw	low(01h)
	movwf	indf2
	line	140
	
l4348:
	incf	((c:_i)),c
	
l4350:
		movlw	03h-1
	cpfsgt	((c:_i)),c
	goto	u4541
	goto	u4540

u4541:
	goto	l4346
u4540:
	goto	l4356
	
l472:
	line	143
	goto	l4356
	
l474:
	line	144
	
l4352:
;schedaMaster.c: 144: ruote[i].direzione = -1;
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlw	low(0FFh)
	movwf	indf2
	line	143
	
l4354:
	incf	((c:_i)),c
	goto	l4356
	
l473:
	
l4356:
		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4551
	goto	u4550

u4551:
	goto	l4352
u4550:
	goto	l4358
	
l475:
	goto	l4358
	line	146
	
l470:
	line	148
	
l4358:
;schedaMaster.c: 145: }
;schedaMaster.c: 146: }
;schedaMaster.c: 148: ruote[0].angolo = (float) 45 * gradiBit;
	movlw	low((_gradiBit))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_gradiBit))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_gradiBit))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f1)
	tblrd*+
	
	movff	tablat,(___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f1+2)

	movlw	low(float24(45.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(45.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(45.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_ruote+07h)
	movff	1+?___ftmul,1+(_ruote+07h)
	movff	2+?___ftmul,2+(_ruote+07h)
	line	149
;schedaMaster.c: 149: ruote[2].angolo = (float) 135 * gradiBit;
	movlw	low((_gradiBit))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_gradiBit))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_gradiBit))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f1)
	tblrd*+
	
	movff	tablat,(___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f1+2)

	movlw	low(float24(135.00000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(135.00000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(135.00000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_ruote+01Bh)
	movff	1+?___ftmul,1+(_ruote+01Bh)
	movff	2+?___ftmul,2+(_ruote+01Bh)
	line	150
;schedaMaster.c: 150: ruote[3].angolo = (float) 45 * gradiBit;
	movlw	low((_gradiBit))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_gradiBit))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_gradiBit))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f1)
	tblrd*+
	
	movff	tablat,(___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f1+2)

	movlw	low(float24(45.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(45.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(45.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_ruote+025h)
	movff	1+?___ftmul,1+(_ruote+025h)
	movff	2+?___ftmul,2+(_ruote+025h)
	line	151
;schedaMaster.c: 151: ruote[5].angolo = (float) 135 * gradiBit;
	movlw	low((_gradiBit))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_gradiBit))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_gradiBit))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f1)
	tblrd*+
	
	movff	tablat,(___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f1+2)

	movlw	low(float24(135.00000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(135.00000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(135.00000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_ruote+039h)
	movff	1+?___ftmul,1+(_ruote+039h)
	movff	2+?___ftmul,2+(_ruote+039h)
	line	153
;schedaMaster.c: 153: dICR_R[0] = ((float) sqrt(pow((L/2.0),2) + pow(D1,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_ruoteRoutine$967)
	movff	1+?___ftdiv,(_ruoteRoutine$967+1)
	movff	2+?___ftdiv,(_ruoteRoutine$967+2)
	
l4360:
;schedaMaster.c: 153: dICR_R[0] = ((float) sqrt(pow((L/2.0),2) + pow(D1,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(_ruoteRoutine$967),(pow@x)
	movff	(_ruoteRoutine$967+1),(pow@x+1)
	movff	(_ruoteRoutine$967+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$968)
	movff	1+?_pow,(_ruoteRoutine$968+1)
	movff	2+?_pow,(_ruoteRoutine$968+2)
	
l4362:
;schedaMaster.c: 153: dICR_R[0] = ((float) sqrt(pow((L/2.0),2) + pow(D1,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movlw	low((_D1))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_D1))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_D1))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(pow@x)
	tblrd*+
	
	movff	tablat,(pow@x+1)
	tblrd*-
	
	movff	tablat,(pow@x+2)

	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$969)
	movff	1+?_pow,(_ruoteRoutine$969+1)
	movff	2+?_pow,(_ruoteRoutine$969+2)
	
l4364:
;schedaMaster.c: 153: dICR_R[0] = ((float) sqrt(pow((L/2.0),2) + pow(D1,2)));
	movff	(_ruoteRoutine$968),(___ftadd@f1)
	movff	(_ruoteRoutine$968+1),(___ftadd@f1+1)
	movff	(_ruoteRoutine$968+2),(___ftadd@f1+2)
	movff	(_ruoteRoutine$969),(___ftadd@f2)
	movff	(_ruoteRoutine$969+1),(___ftadd@f2+1)
	movff	(_ruoteRoutine$969+2),(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$970)
	movff	1+?___ftadd,(_ruoteRoutine$970+1)
	movff	2+?___ftadd,(_ruoteRoutine$970+2)
	
l4366:
;schedaMaster.c: 153: dICR_R[0] = ((float) sqrt(pow((L/2.0),2) + pow(D1,2)));
	movff	(_ruoteRoutine$970),(sqrt@a)
	movff	(_ruoteRoutine$970+1),(sqrt@a+1)
	movff	(_ruoteRoutine$970+2),(sqrt@a+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,(ruoteRoutine@dICR_R)
	movff	1+?_sqrt,(ruoteRoutine@dICR_R+1)
	movff	2+?_sqrt,(ruoteRoutine@dICR_R+2)
	line	154
;schedaMaster.c: 154: dICR_R[1] = ((float) (L/2.0));
	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,0+(ruoteRoutine@dICR_R+03h)
	movff	1+?___ftdiv,1+(ruoteRoutine@dICR_R+03h)
	movff	2+?___ftdiv,2+(ruoteRoutine@dICR_R+03h)
	line	155
;schedaMaster.c: 155: dICR_R[2] = ((float) sqrt(pow((L/2.0),2) + pow(D2,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_ruoteRoutine$967)
	movff	1+?___ftdiv,(_ruoteRoutine$967+1)
	movff	2+?___ftdiv,(_ruoteRoutine$967+2)
	
l4368:
;schedaMaster.c: 155: dICR_R[2] = ((float) sqrt(pow((L/2.0),2) + pow(D2,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(_ruoteRoutine$967),(pow@x)
	movff	(_ruoteRoutine$967+1),(pow@x+1)
	movff	(_ruoteRoutine$967+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$968)
	movff	1+?_pow,(_ruoteRoutine$968+1)
	movff	2+?_pow,(_ruoteRoutine$968+2)
	
l4370:
;schedaMaster.c: 155: dICR_R[2] = ((float) sqrt(pow((L/2.0),2) + pow(D2,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movlw	low((_D2))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_D2))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_D2))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(pow@x)
	tblrd*+
	
	movff	tablat,(pow@x+1)
	tblrd*-
	
	movff	tablat,(pow@x+2)

	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$969)
	movff	1+?_pow,(_ruoteRoutine$969+1)
	movff	2+?_pow,(_ruoteRoutine$969+2)
	
l4372:
;schedaMaster.c: 155: dICR_R[2] = ((float) sqrt(pow((L/2.0),2) + pow(D2,2)));
	movff	(_ruoteRoutine$968),(___ftadd@f1)
	movff	(_ruoteRoutine$968+1),(___ftadd@f1+1)
	movff	(_ruoteRoutine$968+2),(___ftadd@f1+2)
	movff	(_ruoteRoutine$969),(___ftadd@f2)
	movff	(_ruoteRoutine$969+1),(___ftadd@f2+1)
	movff	(_ruoteRoutine$969+2),(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$970)
	movff	1+?___ftadd,(_ruoteRoutine$970+1)
	movff	2+?___ftadd,(_ruoteRoutine$970+2)
	
l4374:
;schedaMaster.c: 155: dICR_R[2] = ((float) sqrt(pow((L/2.0),2) + pow(D2,2)));
	movff	(_ruoteRoutine$970),(sqrt@a)
	movff	(_ruoteRoutine$970+1),(sqrt@a+1)
	movff	(_ruoteRoutine$970+2),(sqrt@a+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,0+(ruoteRoutine@dICR_R+06h)
	movff	1+?_sqrt,1+(ruoteRoutine@dICR_R+06h)
	movff	2+?_sqrt,2+(ruoteRoutine@dICR_R+06h)
	line	156
;schedaMaster.c: 156: dICR_R[3] = ((float) sqrt(pow((L/2.0),2) + pow(D2,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_ruoteRoutine$967)
	movff	1+?___ftdiv,(_ruoteRoutine$967+1)
	movff	2+?___ftdiv,(_ruoteRoutine$967+2)
	
l4376:
;schedaMaster.c: 156: dICR_R[3] = ((float) sqrt(pow((L/2.0),2) + pow(D2,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(_ruoteRoutine$967),(pow@x)
	movff	(_ruoteRoutine$967+1),(pow@x+1)
	movff	(_ruoteRoutine$967+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$968)
	movff	1+?_pow,(_ruoteRoutine$968+1)
	movff	2+?_pow,(_ruoteRoutine$968+2)
	
l4378:
;schedaMaster.c: 156: dICR_R[3] = ((float) sqrt(pow((L/2.0),2) + pow(D2,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movlw	low((_D2))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_D2))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_D2))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(pow@x)
	tblrd*+
	
	movff	tablat,(pow@x+1)
	tblrd*-
	
	movff	tablat,(pow@x+2)

	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$969)
	movff	1+?_pow,(_ruoteRoutine$969+1)
	movff	2+?_pow,(_ruoteRoutine$969+2)
	
l4380:
;schedaMaster.c: 156: dICR_R[3] = ((float) sqrt(pow((L/2.0),2) + pow(D2,2)));
	movff	(_ruoteRoutine$968),(___ftadd@f1)
	movff	(_ruoteRoutine$968+1),(___ftadd@f1+1)
	movff	(_ruoteRoutine$968+2),(___ftadd@f1+2)
	movff	(_ruoteRoutine$969),(___ftadd@f2)
	movff	(_ruoteRoutine$969+1),(___ftadd@f2+1)
	movff	(_ruoteRoutine$969+2),(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$970)
	movff	1+?___ftadd,(_ruoteRoutine$970+1)
	movff	2+?___ftadd,(_ruoteRoutine$970+2)
	
l4382:
;schedaMaster.c: 156: dICR_R[3] = ((float) sqrt(pow((L/2.0),2) + pow(D2,2)));
	movff	(_ruoteRoutine$970),(sqrt@a)
	movff	(_ruoteRoutine$970+1),(sqrt@a+1)
	movff	(_ruoteRoutine$970+2),(sqrt@a+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,0+(ruoteRoutine@dICR_R+09h)
	movff	1+?_sqrt,1+(ruoteRoutine@dICR_R+09h)
	movff	2+?_sqrt,2+(ruoteRoutine@dICR_R+09h)
	line	157
;schedaMaster.c: 157: dICR_R[4] = ((float) (L/2.0));
	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,0+(ruoteRoutine@dICR_R+0Ch)
	movff	1+?___ftdiv,1+(ruoteRoutine@dICR_R+0Ch)
	movff	2+?___ftdiv,2+(ruoteRoutine@dICR_R+0Ch)
	line	158
;schedaMaster.c: 158: dICR_R[5] = ((float) sqrt(pow((L/2.0),2) + pow(D1,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_ruoteRoutine$967)
	movff	1+?___ftdiv,(_ruoteRoutine$967+1)
	movff	2+?___ftdiv,(_ruoteRoutine$967+2)
	
l4384:
;schedaMaster.c: 158: dICR_R[5] = ((float) sqrt(pow((L/2.0),2) + pow(D1,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(_ruoteRoutine$967),(pow@x)
	movff	(_ruoteRoutine$967+1),(pow@x+1)
	movff	(_ruoteRoutine$967+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$968)
	movff	1+?_pow,(_ruoteRoutine$968+1)
	movff	2+?_pow,(_ruoteRoutine$968+2)
	
l4386:
;schedaMaster.c: 158: dICR_R[5] = ((float) sqrt(pow((L/2.0),2) + pow(D1,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movlw	low((_D1))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_D1))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_D1))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(pow@x)
	tblrd*+
	
	movff	tablat,(pow@x+1)
	tblrd*-
	
	movff	tablat,(pow@x+2)

	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$969)
	movff	1+?_pow,(_ruoteRoutine$969+1)
	movff	2+?_pow,(_ruoteRoutine$969+2)
	
l4388:
;schedaMaster.c: 158: dICR_R[5] = ((float) sqrt(pow((L/2.0),2) + pow(D1,2)));
	movff	(_ruoteRoutine$968),(___ftadd@f1)
	movff	(_ruoteRoutine$968+1),(___ftadd@f1+1)
	movff	(_ruoteRoutine$968+2),(___ftadd@f1+2)
	movff	(_ruoteRoutine$969),(___ftadd@f2)
	movff	(_ruoteRoutine$969+1),(___ftadd@f2+1)
	movff	(_ruoteRoutine$969+2),(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$970)
	movff	1+?___ftadd,(_ruoteRoutine$970+1)
	movff	2+?___ftadd,(_ruoteRoutine$970+2)
	
l4390:
;schedaMaster.c: 158: dICR_R[5] = ((float) sqrt(pow((L/2.0),2) + pow(D1,2)));
	movff	(_ruoteRoutine$970),(sqrt@a)
	movff	(_ruoteRoutine$970+1),(sqrt@a+1)
	movff	(_ruoteRoutine$970+2),(sqrt@a+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,0+(ruoteRoutine@dICR_R+0Fh)
	movff	1+?_sqrt,1+(ruoteRoutine@dICR_R+0Fh)
	movff	2+?_sqrt,2+(ruoteRoutine@dICR_R+0Fh)
	line	159
	
l4392:
;schedaMaster.c: 159: for(i=0; i<6; i++){
	movlw	low(0)
	movwf	((c:_i)),c
	
l4394:
		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4561
	goto	u4560

u4561:
	goto	l4398
u4560:
	goto	l4412
	
l4396:
	goto	l4412
	
l476:
	line	160
	
l4398:
;schedaMaster.c: 160: ruote[i].distanza = ((float) (console_distanzaRuote/360.0)*(2.0 * pigreco * dICR_R[i]));
	movlw	low((_pigreco))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_pigreco))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_pigreco))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f2)
	tblrd*+
	
	movff	tablat,(___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f2+2)

	movf	((c:_i)),c,w
	mullw	03h
	movlw	low(ruoteRoutine@dICR_R)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(ruoteRoutine@dICR_R)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(___ftmul@f1)
	movff	postinc2,(___ftmul@f1+1)
	movff	postdec2,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_ruoteRoutine$971)
	movff	1+?___ftmul,(_ruoteRoutine$971+1)
	movff	2+?___ftmul,(_ruoteRoutine$971+2)
	
l4400:
;schedaMaster.c: 160: ruote[i].distanza = ((float) (console_distanzaRuote/360.0)*(2.0 * pigreco * dICR_R[i]));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_ruoteRoutine$971),(___ftmul@f1)
	movff	(_ruoteRoutine$971+1),(___ftmul@f1+1)
	movff	(_ruoteRoutine$971+2),(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_ruoteRoutine$972)
	movff	1+?___ftmul,(_ruoteRoutine$972+1)
	movff	2+?___ftmul,(_ruoteRoutine$972+2)
	
l4402:
;schedaMaster.c: 160: ruote[i].distanza = ((float) (console_distanzaRuote/360.0)*(2.0 * pigreco * dICR_R[i]));
	movlw	low(float24(360.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(360.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(360.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movff	(_console_distanzaRuote),(___awtoft@c)
	movff	(_console_distanzaRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftdiv@f1)
	movff	1+?___awtoft,(___ftdiv@f1+1)
	movff	2+?___awtoft,(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftmul@f1)
	movff	1+?___ftdiv,(___ftmul@f1+1)
	movff	2+?___ftdiv,(___ftmul@f1+2)
	movff	(_ruoteRoutine$972),(___ftmul@f2)
	movff	(_ruoteRoutine$972+1),(___ftmul@f2+1)
	movff	(_ruoteRoutine$972+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	0+?___ftmul,postinc2
	movff	1+?___ftmul,postinc2
	movff	2+?___ftmul,postinc2

	line	161
	
l4404:
;schedaMaster.c: 161: if (ruote[i].distanza > massimaDistanza){
	movff	(ruoteRoutine@massimaDistanza),(___ftge@ff1)
	movff	(ruoteRoutine@massimaDistanza+1),(___ftge@ff1+1)
	movff	(ruoteRoutine@massimaDistanza+2),(___ftge@ff1+2)
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(___ftge@ff2)
	movff	postinc2,(___ftge@ff2+1)
	movff	postdec2,(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfsc	status,0
	goto	u4571
	goto	u4570
u4571:
	goto	l4408
u4570:
	line	162
	
l4406:; BSR set to: 0

;schedaMaster.c: 162: massimaDistanza = ruote[i].distanza;
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(ruoteRoutine@massimaDistanza)
	movff	postinc2,(ruoteRoutine@massimaDistanza+1)
	movff	postdec2,(ruoteRoutine@massimaDistanza+2)
	goto	l4408
	line	163
	
l478:; BSR set to: 0

	line	159
	
l4408:; BSR set to: 0

	incf	((c:_i)),c
	
l4410:; BSR set to: 0

		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4581
	goto	u4580

u4581:
	goto	l4398
u4580:
	goto	l4412
	
l477:; BSR set to: 0

	line	165
	
l4412:
;schedaMaster.c: 163: }
;schedaMaster.c: 164: }
;schedaMaster.c: 165: for (i=0; i<6; i++){
	movlw	low(0)
	movwf	((c:_i)),c
	
l4414:
		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4591
	goto	u4590

u4591:
	goto	l4418
u4590:
	goto	l460
	
l4416:
	goto	l460
	
l479:
	line	166
	
l4418:
;schedaMaster.c: 166: ruote[i].velocita = (float) (ruote[i].distanza * velocitaMovimento) / massimaDistanza;
	movff	(ruoteRoutine@velocitaMovimento),(___ftmul@f2)
	movff	(ruoteRoutine@velocitaMovimento+1),(___ftmul@f2+1)
	movff	(ruoteRoutine@velocitaMovimento+2),(___ftmul@f2+2)
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(___ftmul@f1)
	movff	postinc2,(___ftmul@f1+1)
	movff	postdec2,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftdiv@f1)
	movff	1+?___ftmul,(___ftdiv@f1+1)
	movff	2+?___ftmul,(___ftdiv@f1+2)
	movff	(ruoteRoutine@massimaDistanza),(___ftdiv@f2)
	movff	(ruoteRoutine@massimaDistanza+1),(___ftdiv@f2+1)
	movff	(ruoteRoutine@massimaDistanza+2),(___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	0+?___ftdiv,postinc2
	movff	1+?___ftdiv,postinc2
	movff	2+?___ftdiv,postinc2

	line	165
	
l4420:
	incf	((c:_i)),c
	
l4422:
		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4601
	goto	u4600

u4601:
	goto	l4418
u4600:
	goto	l460
	
l480:
	line	168
;schedaMaster.c: 167: }
;schedaMaster.c: 168: }
	goto	l460
	line	170
	
l461:
	
l4424:
;schedaMaster.c: 170: else if (console_raggioRuote == 1 || console_raggioRuote == -1){
	movlb	1	; () banked
		decf	((_console_raggioRuote))&0ffh,w
	movlb	1	; () banked
iorwf	((_console_raggioRuote+1))&0ffh,w
	btfsc	status,2
	goto	u4611
	goto	u4610

u4611:
	goto	l4428
u4610:
	
l4426:; BSR set to: 1

	movlb	1	; () banked
		incf	((_console_raggioRuote))&0ffh,w
	bnz	u4621
	movlb	1	; () banked
	incf	((_console_raggioRuote+1))&0ffh,w
	btfss	status,2
	goto	u4621
	goto	u4620

u4621:
	goto	l4448
u4620:
	goto	l4428
	
l484:; BSR set to: 1

	line	171
	
l4428:; BSR set to: 1

;schedaMaster.c: 171: ruote[0].angolo = (float) 90 * gradiBit;
	movlw	low((_gradiBit))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_gradiBit))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_gradiBit))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f1)
	tblrd*+
	
	movff	tablat,(___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f1+2)

	movlw	low(float24(90.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(90.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(90.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_ruote+07h)
	movff	1+?___ftmul,1+(_ruote+07h)
	movff	2+?___ftmul,2+(_ruote+07h)
	line	172
;schedaMaster.c: 172: ruote[2].angolo = (float) 90 * gradiBit;
	movlw	low((_gradiBit))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_gradiBit))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_gradiBit))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f1)
	tblrd*+
	
	movff	tablat,(___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f1+2)

	movlw	low(float24(90.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(90.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(90.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_ruote+01Bh)
	movff	1+?___ftmul,1+(_ruote+01Bh)
	movff	2+?___ftmul,2+(_ruote+01Bh)
	line	173
;schedaMaster.c: 173: ruote[3].angolo = (float) 90 * gradiBit;
	movlw	low((_gradiBit))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_gradiBit))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_gradiBit))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f1)
	tblrd*+
	
	movff	tablat,(___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f1+2)

	movlw	low(float24(90.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(90.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(90.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_ruote+025h)
	movff	1+?___ftmul,1+(_ruote+025h)
	movff	2+?___ftmul,2+(_ruote+025h)
	line	174
;schedaMaster.c: 174: ruote[5].angolo = (float) 90 * gradiBit;
	movlw	low((_gradiBit))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_gradiBit))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_gradiBit))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f1)
	tblrd*+
	
	movff	tablat,(___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f1+2)

	movlw	low(float24(90.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(90.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(90.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_ruote+039h)
	movff	1+?___ftmul,1+(_ruote+039h)
	movff	2+?___ftmul,2+(_ruote+039h)
	line	175
	
l4430:
;schedaMaster.c: 175: for (i=0;i<6;i++){
	movlw	low(0)
	movwf	((c:_i)),c
	
l4432:
		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4631
	goto	u4630

u4631:
	goto	l4436
u4630:
	goto	l460
	
l4434:
	goto	l460
	
l485:
	line	176
	
l4436:
;schedaMaster.c: 176: ruote[i].direzione = console_raggioRuote;
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	(_console_raggioRuote),indf2

	line	177
;schedaMaster.c: 177: ruote[i].velocita = velocitaMovimento;
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(ruoteRoutine@velocitaMovimento),postinc2
	movff	(ruoteRoutine@velocitaMovimento+1),postinc2
	movff	(ruoteRoutine@velocitaMovimento+2),postinc2

	line	178
	
l4438:
;schedaMaster.c: 178: if (console_distanzaRuote == 0){
	movlb	1	; () banked
	movf	((_console_distanzaRuote))&0ffh,w
	movlb	1	; () banked
iorwf	((_console_distanzaRuote+1))&0ffh,w
	btfss	status,2
	goto	u4641
	goto	u4640

u4641:
	goto	l4442
u4640:
	line	179
	
l4440:; BSR set to: 1

;schedaMaster.c: 179: ruote[i].distanza = 65535;
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlw	low((float24(65535.000000000000)))
	movwf	postinc2,c
	movlw	high((float24(65535.000000000000)))
	movwf	postinc2,c
	movlw	low highword((float24(65535.000000000000)))
	movwf	postinc2,c

	line	180
;schedaMaster.c: 180: }
	goto	l4444
	line	181
	
l487:; BSR set to: 1

	line	182
	
l4442:; BSR set to: 1

;schedaMaster.c: 181: else{
;schedaMaster.c: 182: ruote[i].distanza = 10.0 * console_distanzaRuote;
	movff	(_console_distanzaRuote),(___awtoft@c)
	movff	(_console_distanzaRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	0+?___ftmul,postinc2
	movff	1+?___ftmul,postinc2
	movff	2+?___ftmul,postinc2

	goto	l4444
	line	183
	
l488:
	line	175
	
l4444:
	incf	((c:_i)),c
	
l4446:
		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4651
	goto	u4650

u4651:
	goto	l4436
u4650:
	goto	l460
	
l486:
	line	185
;schedaMaster.c: 183: }
;schedaMaster.c: 184: }
;schedaMaster.c: 185: }
	goto	l460
	line	186
	
l482:
	line	187
	
l4448:
;schedaMaster.c: 186: else{
;schedaMaster.c: 187: ruote[0].angolo = (float) ((180.0 - (RADtoDEG * atan( ((10.0 * console_raggioRuote + (L/2.0)) > 0 ? (10.0 * console_raggioRuote + (L/2.0)) : -(10.0 * console_raggioRuote + (L/2.0))) / D1))) * gradiBit);
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftadd@f2)
	movff	1+?___ftdiv,(___ftadd@f2+1)
	movff	2+?___ftdiv,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftge@ff2)
	movff	1+?___ftadd,(___ftge@ff2+1)
	movff	2+?___ftadd,(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u4661
	goto	u4660
u4661:
	goto	l4452
u4660:
	
l4450:; BSR set to: 0

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftadd@f2)
	movff	1+?___ftdiv,(___ftadd@f2+1)
	movff	2+?___ftdiv,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftneg@f1)
	movff	1+?___ftadd,(___ftneg@f1+1)
	movff	2+?___ftadd,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(_ruoteRoutine$268)
	movff	1+?___ftneg,(_ruoteRoutine$268+1)
	movff	2+?___ftneg,(_ruoteRoutine$268+2)
	goto	l493
	
l491:
	
l4452:
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftadd@f2)
	movff	1+?___ftdiv,(___ftadd@f2+1)
	movff	2+?___ftdiv,(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$268)
	movff	1+?___ftadd,(_ruoteRoutine$268+1)
	movff	2+?___ftadd,(_ruoteRoutine$268+2)
	
l493:
	movlw	low((_D1))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_D1))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_D1))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f2)
	tblrd*+
	
	movff	tablat,(___ftdiv@f2+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f2+2)

	movff	(_ruoteRoutine$268),(___ftdiv@f1)
	movff	(_ruoteRoutine$268+1),(___ftdiv@f1+1)
	movff	(_ruoteRoutine$268+2),(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_ruoteRoutine$973)
	movff	1+?___ftdiv,(_ruoteRoutine$973+1)
	movff	2+?___ftdiv,(_ruoteRoutine$973+2)
	
l4454:
	movff	(_ruoteRoutine$973),(atan@f)
	movff	(_ruoteRoutine$973+1),(atan@f+1)
	movff	(_ruoteRoutine$973+2),(atan@f+2)
	call	_atan	;wreg free
	movff	0+?_atan,(_ruoteRoutine$974)
	movff	1+?_atan,(_ruoteRoutine$974+1)
	movff	2+?_atan,(_ruoteRoutine$974+2)
	
l4456:
	movlw	low(float24(180.00000000000000))
	movlb	0	; () banked
	movwf	((___ftadd@f2))&0ffh
	movlw	high(float24(180.00000000000000))
	movlb	0	; () banked
	movwf	((___ftadd@f2+1))&0ffh
	movlw	low highword(float24(180.00000000000000))
	movlb	0	; () banked
	movwf	((___ftadd@f2+2))&0ffh

	movlw	low((_RADtoDEG))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_RADtoDEG))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_RADtoDEG))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f2)
	tblrd*+
	
	movff	tablat,(___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f2+2)

	movff	(_ruoteRoutine$974),(___ftmul@f1)
	movff	(_ruoteRoutine$974+1),(___ftmul@f1+1)
	movff	(_ruoteRoutine$974+2),(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftneg@f1)
	movff	1+?___ftmul,(___ftneg@f1+1)
	movff	2+?___ftmul,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f1)
	movff	1+?___ftneg,(___ftadd@f1+1)
	movff	2+?___ftneg,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$975)
	movff	1+?___ftadd,(_ruoteRoutine$975+1)
	movff	2+?___ftadd,(_ruoteRoutine$975+2)
	
l4458:
	movff	(_ruoteRoutine$975),(___ftmul@f1)
	movff	(_ruoteRoutine$975+1),(___ftmul@f1+1)
	movff	(_ruoteRoutine$975+2),(___ftmul@f1+2)
	movlw	low((_gradiBit))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_gradiBit))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_gradiBit))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f2)
	tblrd*+
	
	movff	tablat,(___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_ruote+07h)
	movff	1+?___ftmul,1+(_ruote+07h)
	movff	2+?___ftmul,2+(_ruote+07h)
	line	188
	
l4460:
;schedaMaster.c: 188: ruote[2].angolo = (float) ((RADtoDEG * atan( ((10.0 * console_raggioRuote + (L/2.0)) > 0 ? (10.0 * console_raggioRuote + (L/2.0)) : -(10.0 * console_raggioRuote + (L/2.0))) / D2)) * gradiBit);
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftadd@f2)
	movff	1+?___ftdiv,(___ftadd@f2+1)
	movff	2+?___ftdiv,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftge@ff2)
	movff	1+?___ftadd,(___ftge@ff2+1)
	movff	2+?___ftadd,(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u4671
	goto	u4670
u4671:
	goto	l4464
u4670:
	
l4462:; BSR set to: 0

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftadd@f2)
	movff	1+?___ftdiv,(___ftadd@f2+1)
	movff	2+?___ftdiv,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftneg@f1)
	movff	1+?___ftadd,(___ftneg@f1+1)
	movff	2+?___ftadd,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(_ruoteRoutine$269)
	movff	1+?___ftneg,(_ruoteRoutine$269+1)
	movff	2+?___ftneg,(_ruoteRoutine$269+2)
	goto	l497
	
l495:
	
l4464:
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftadd@f2)
	movff	1+?___ftdiv,(___ftadd@f2+1)
	movff	2+?___ftdiv,(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$269)
	movff	1+?___ftadd,(_ruoteRoutine$269+1)
	movff	2+?___ftadd,(_ruoteRoutine$269+2)
	
l497:
	movlw	low((_D2))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_D2))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_D2))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f2)
	tblrd*+
	
	movff	tablat,(___ftdiv@f2+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f2+2)

	movff	(_ruoteRoutine$269),(___ftdiv@f1)
	movff	(_ruoteRoutine$269+1),(___ftdiv@f1+1)
	movff	(_ruoteRoutine$269+2),(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_ruoteRoutine$973)
	movff	1+?___ftdiv,(_ruoteRoutine$973+1)
	movff	2+?___ftdiv,(_ruoteRoutine$973+2)
	
l4466:
	movff	(_ruoteRoutine$973),(atan@f)
	movff	(_ruoteRoutine$973+1),(atan@f+1)
	movff	(_ruoteRoutine$973+2),(atan@f+2)
	call	_atan	;wreg free
	movff	0+?_atan,(_ruoteRoutine$974)
	movff	1+?_atan,(_ruoteRoutine$974+1)
	movff	2+?_atan,(_ruoteRoutine$974+2)
	
l4468:
	movlw	low((_RADtoDEG))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_RADtoDEG))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_RADtoDEG))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f2)
	tblrd*+
	
	movff	tablat,(___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f2+2)

	movff	(_ruoteRoutine$974),(___ftmul@f1)
	movff	(_ruoteRoutine$974+1),(___ftmul@f1+1)
	movff	(_ruoteRoutine$974+2),(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_ruoteRoutine$975)
	movff	1+?___ftmul,(_ruoteRoutine$975+1)
	movff	2+?___ftmul,(_ruoteRoutine$975+2)
	
l4470:
	movff	(_ruoteRoutine$975),(___ftmul@f1)
	movff	(_ruoteRoutine$975+1),(___ftmul@f1+1)
	movff	(_ruoteRoutine$975+2),(___ftmul@f1+2)
	movlw	low((_gradiBit))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_gradiBit))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_gradiBit))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f2)
	tblrd*+
	
	movff	tablat,(___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_ruote+01Bh)
	movff	1+?___ftmul,1+(_ruote+01Bh)
	movff	2+?___ftmul,2+(_ruote+01Bh)
	line	189
	
l4472:
;schedaMaster.c: 189: ruote[3].angolo = (float) ((RADtoDEG * atan( ((10.0 * console_raggioRuote - (L/2.0)) > 0 ? (10.0 * console_raggioRuote - (L/2.0)) : -(10.0 * console_raggioRuote - (L/2.0))) / D2)) * gradiBit);
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftneg@f1)
	movff	1+?___ftdiv,(___ftneg@f1+1)
	movff	2+?___ftdiv,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f2)
	movff	1+?___ftneg,(___ftadd@f2+1)
	movff	2+?___ftneg,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftge@ff2)
	movff	1+?___ftadd,(___ftge@ff2+1)
	movff	2+?___ftadd,(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u4681
	goto	u4680
u4681:
	goto	l4478
u4680:
	
l4474:; BSR set to: 0

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftneg@f1)
	movff	1+?___ftdiv,(___ftneg@f1+1)
	movff	2+?___ftdiv,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f2)
	movff	1+?___ftneg,(___ftadd@f2+1)
	movff	2+?___ftneg,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$976)
	movff	1+?___ftadd,(_ruoteRoutine$976+1)
	movff	2+?___ftadd,(_ruoteRoutine$976+2)
	
l4476:
	movff	(_ruoteRoutine$976),(___ftneg@f1)
	movff	(_ruoteRoutine$976+1),(___ftneg@f1+1)
	movff	(_ruoteRoutine$976+2),(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(_ruoteRoutine$270)
	movff	1+?___ftneg,(_ruoteRoutine$270+1)
	movff	2+?___ftneg,(_ruoteRoutine$270+2)
	goto	l501
	
l499:
	
l4478:
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftneg@f1)
	movff	1+?___ftdiv,(___ftneg@f1+1)
	movff	2+?___ftdiv,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f2)
	movff	1+?___ftneg,(___ftadd@f2+1)
	movff	2+?___ftneg,(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$270)
	movff	1+?___ftadd,(_ruoteRoutine$270+1)
	movff	2+?___ftadd,(_ruoteRoutine$270+2)
	
l501:
	movlw	low((_D2))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_D2))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_D2))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f2)
	tblrd*+
	
	movff	tablat,(___ftdiv@f2+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f2+2)

	movff	(_ruoteRoutine$270),(___ftdiv@f1)
	movff	(_ruoteRoutine$270+1),(___ftdiv@f1+1)
	movff	(_ruoteRoutine$270+2),(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_ruoteRoutine$973)
	movff	1+?___ftdiv,(_ruoteRoutine$973+1)
	movff	2+?___ftdiv,(_ruoteRoutine$973+2)
	
l4480:
	movff	(_ruoteRoutine$973),(atan@f)
	movff	(_ruoteRoutine$973+1),(atan@f+1)
	movff	(_ruoteRoutine$973+2),(atan@f+2)
	call	_atan	;wreg free
	movff	0+?_atan,(_ruoteRoutine$974)
	movff	1+?_atan,(_ruoteRoutine$974+1)
	movff	2+?_atan,(_ruoteRoutine$974+2)
	
l4482:
	movlw	low((_RADtoDEG))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_RADtoDEG))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_RADtoDEG))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f2)
	tblrd*+
	
	movff	tablat,(___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f2+2)

	movff	(_ruoteRoutine$974),(___ftmul@f1)
	movff	(_ruoteRoutine$974+1),(___ftmul@f1+1)
	movff	(_ruoteRoutine$974+2),(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_ruoteRoutine$975)
	movff	1+?___ftmul,(_ruoteRoutine$975+1)
	movff	2+?___ftmul,(_ruoteRoutine$975+2)
	
l4484:
	movff	(_ruoteRoutine$975),(___ftmul@f1)
	movff	(_ruoteRoutine$975+1),(___ftmul@f1+1)
	movff	(_ruoteRoutine$975+2),(___ftmul@f1+2)
	movlw	low((_gradiBit))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_gradiBit))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_gradiBit))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f2)
	tblrd*+
	
	movff	tablat,(___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_ruote+025h)
	movff	1+?___ftmul,1+(_ruote+025h)
	movff	2+?___ftmul,2+(_ruote+025h)
	line	190
	
l4486:
;schedaMaster.c: 190: ruote[5].angolo = (float) ((180.0 - (RADtoDEG * atan( ((10.0 * console_raggioRuote - (L/2.0)) > 0 ? (10.0 * console_raggioRuote - (L/2.0)) : -(10.0 * console_raggioRuote - (L/2.0))) / D1))) * gradiBit);
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftneg@f1)
	movff	1+?___ftdiv,(___ftneg@f1+1)
	movff	2+?___ftdiv,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f2)
	movff	1+?___ftneg,(___ftadd@f2+1)
	movff	2+?___ftneg,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftge@ff2)
	movff	1+?___ftadd,(___ftge@ff2+1)
	movff	2+?___ftadd,(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u4691
	goto	u4690
u4691:
	goto	l4492
u4690:
	
l4488:; BSR set to: 0

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftneg@f1)
	movff	1+?___ftdiv,(___ftneg@f1+1)
	movff	2+?___ftdiv,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f2)
	movff	1+?___ftneg,(___ftadd@f2+1)
	movff	2+?___ftneg,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$976)
	movff	1+?___ftadd,(_ruoteRoutine$976+1)
	movff	2+?___ftadd,(_ruoteRoutine$976+2)
	
l4490:
	movff	(_ruoteRoutine$976),(___ftneg@f1)
	movff	(_ruoteRoutine$976+1),(___ftneg@f1+1)
	movff	(_ruoteRoutine$976+2),(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(_ruoteRoutine$271)
	movff	1+?___ftneg,(_ruoteRoutine$271+1)
	movff	2+?___ftneg,(_ruoteRoutine$271+2)
	goto	l505
	
l503:
	
l4492:
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftneg@f1)
	movff	1+?___ftdiv,(___ftneg@f1+1)
	movff	2+?___ftdiv,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f2)
	movff	1+?___ftneg,(___ftadd@f2+1)
	movff	2+?___ftneg,(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$271)
	movff	1+?___ftadd,(_ruoteRoutine$271+1)
	movff	2+?___ftadd,(_ruoteRoutine$271+2)
	
l505:
	movlw	low((_D1))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_D1))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_D1))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f2)
	tblrd*+
	
	movff	tablat,(___ftdiv@f2+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f2+2)

	movff	(_ruoteRoutine$271),(___ftdiv@f1)
	movff	(_ruoteRoutine$271+1),(___ftdiv@f1+1)
	movff	(_ruoteRoutine$271+2),(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_ruoteRoutine$973)
	movff	1+?___ftdiv,(_ruoteRoutine$973+1)
	movff	2+?___ftdiv,(_ruoteRoutine$973+2)
	
l4494:
	movff	(_ruoteRoutine$973),(atan@f)
	movff	(_ruoteRoutine$973+1),(atan@f+1)
	movff	(_ruoteRoutine$973+2),(atan@f+2)
	call	_atan	;wreg free
	movff	0+?_atan,(_ruoteRoutine$974)
	movff	1+?_atan,(_ruoteRoutine$974+1)
	movff	2+?_atan,(_ruoteRoutine$974+2)
	
l4496:
	movlw	low(float24(180.00000000000000))
	movlb	0	; () banked
	movwf	((___ftadd@f2))&0ffh
	movlw	high(float24(180.00000000000000))
	movlb	0	; () banked
	movwf	((___ftadd@f2+1))&0ffh
	movlw	low highword(float24(180.00000000000000))
	movlb	0	; () banked
	movwf	((___ftadd@f2+2))&0ffh

	movlw	low((_RADtoDEG))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_RADtoDEG))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_RADtoDEG))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f2)
	tblrd*+
	
	movff	tablat,(___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f2+2)

	movff	(_ruoteRoutine$974),(___ftmul@f1)
	movff	(_ruoteRoutine$974+1),(___ftmul@f1+1)
	movff	(_ruoteRoutine$974+2),(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftneg@f1)
	movff	1+?___ftmul,(___ftneg@f1+1)
	movff	2+?___ftmul,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f1)
	movff	1+?___ftneg,(___ftadd@f1+1)
	movff	2+?___ftneg,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$975)
	movff	1+?___ftadd,(_ruoteRoutine$975+1)
	movff	2+?___ftadd,(_ruoteRoutine$975+2)
	
l4498:
	movff	(_ruoteRoutine$975),(___ftmul@f1)
	movff	(_ruoteRoutine$975+1),(___ftmul@f1+1)
	movff	(_ruoteRoutine$975+2),(___ftmul@f1+2)
	movlw	low((_gradiBit))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_gradiBit))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_gradiBit))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f2)
	tblrd*+
	
	movff	tablat,(___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_ruote+039h)
	movff	1+?___ftmul,1+(_ruote+039h)
	movff	2+?___ftmul,2+(_ruote+039h)
	line	192
	
l4500:
;schedaMaster.c: 192: dICR_R[0] = (float) sqrt(pow((10.0 * console_raggioRuote + (L/2.0)),2) + pow(D1,2));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftadd@f2)
	movff	1+?___ftdiv,(___ftadd@f2+1)
	movff	2+?___ftdiv,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$977)
	movff	1+?___ftadd,(_ruoteRoutine$977+1)
	movff	2+?___ftadd,(_ruoteRoutine$977+2)
	
l4502:
;schedaMaster.c: 192: dICR_R[0] = (float) sqrt(pow((10.0 * console_raggioRuote + (L/2.0)),2) + pow(D1,2));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(_ruoteRoutine$977),(pow@x)
	movff	(_ruoteRoutine$977+1),(pow@x+1)
	movff	(_ruoteRoutine$977+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$968)
	movff	1+?_pow,(_ruoteRoutine$968+1)
	movff	2+?_pow,(_ruoteRoutine$968+2)
	
l4504:
;schedaMaster.c: 192: dICR_R[0] = (float) sqrt(pow((10.0 * console_raggioRuote + (L/2.0)),2) + pow(D1,2));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movlw	low((_D1))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_D1))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_D1))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(pow@x)
	tblrd*+
	
	movff	tablat,(pow@x+1)
	tblrd*-
	
	movff	tablat,(pow@x+2)

	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$969)
	movff	1+?_pow,(_ruoteRoutine$969+1)
	movff	2+?_pow,(_ruoteRoutine$969+2)
	
l4506:
;schedaMaster.c: 192: dICR_R[0] = (float) sqrt(pow((10.0 * console_raggioRuote + (L/2.0)),2) + pow(D1,2));
	movff	(_ruoteRoutine$968),(___ftadd@f1)
	movff	(_ruoteRoutine$968+1),(___ftadd@f1+1)
	movff	(_ruoteRoutine$968+2),(___ftadd@f1+2)
	movff	(_ruoteRoutine$969),(___ftadd@f2)
	movff	(_ruoteRoutine$969+1),(___ftadd@f2+1)
	movff	(_ruoteRoutine$969+2),(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$970)
	movff	1+?___ftadd,(_ruoteRoutine$970+1)
	movff	2+?___ftadd,(_ruoteRoutine$970+2)
	
l4508:
;schedaMaster.c: 192: dICR_R[0] = (float) sqrt(pow((10.0 * console_raggioRuote + (L/2.0)),2) + pow(D1,2));
	movff	(_ruoteRoutine$970),(sqrt@a)
	movff	(_ruoteRoutine$970+1),(sqrt@a+1)
	movff	(_ruoteRoutine$970+2),(sqrt@a+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,(ruoteRoutine@dICR_R)
	movff	1+?_sqrt,(ruoteRoutine@dICR_R+1)
	movff	2+?_sqrt,(ruoteRoutine@dICR_R+2)
	line	193
	
l4510:
;schedaMaster.c: 193: dICR_R[1] = (float) ((10.0 * console_raggioRuote + (L/2)) > 0 ? (10.0 * console_raggioRuote + (L/2)) : -(10.0 * console_raggioRuote + (L/2)));
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftadd@f2)
	movff	1+?___ftdiv,(___ftadd@f2+1)
	movff	2+?___ftdiv,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftge@ff2)
	movff	1+?___ftadd,(___ftge@ff2+1)
	movff	2+?___ftadd,(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u4701
	goto	u4700
u4701:
	goto	l4514
u4700:
	
l4512:; BSR set to: 0

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftadd@f2)
	movff	1+?___ftdiv,(___ftadd@f2+1)
	movff	2+?___ftdiv,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftneg@f1)
	movff	1+?___ftadd,(___ftneg@f1+1)
	movff	2+?___ftadd,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(_ruoteRoutine$272)
	movff	1+?___ftneg,(_ruoteRoutine$272+1)
	movff	2+?___ftneg,(_ruoteRoutine$272+2)
	goto	l4516
	
l507:
	
l4514:
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftadd@f2)
	movff	1+?___ftdiv,(___ftadd@f2+1)
	movff	2+?___ftdiv,(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$272)
	movff	1+?___ftadd,(_ruoteRoutine$272+1)
	movff	2+?___ftadd,(_ruoteRoutine$272+2)
	goto	l4516
	
l509:
	
l4516:
	movff	(_ruoteRoutine$272),0+(ruoteRoutine@dICR_R+03h)
	movff	(_ruoteRoutine$272+1),1+(ruoteRoutine@dICR_R+03h)
	movff	(_ruoteRoutine$272+2),2+(ruoteRoutine@dICR_R+03h)
	line	194
;schedaMaster.c: 194: dICR_R[2] = (float) sqrt(pow((10.0 * console_raggioRuote + (L/2.0)),2) + pow(D2,2));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftadd@f2)
	movff	1+?___ftdiv,(___ftadd@f2+1)
	movff	2+?___ftdiv,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$977)
	movff	1+?___ftadd,(_ruoteRoutine$977+1)
	movff	2+?___ftadd,(_ruoteRoutine$977+2)
	
l4518:
;schedaMaster.c: 194: dICR_R[2] = (float) sqrt(pow((10.0 * console_raggioRuote + (L/2.0)),2) + pow(D2,2));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(_ruoteRoutine$977),(pow@x)
	movff	(_ruoteRoutine$977+1),(pow@x+1)
	movff	(_ruoteRoutine$977+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$968)
	movff	1+?_pow,(_ruoteRoutine$968+1)
	movff	2+?_pow,(_ruoteRoutine$968+2)
	
l4520:
;schedaMaster.c: 194: dICR_R[2] = (float) sqrt(pow((10.0 * console_raggioRuote + (L/2.0)),2) + pow(D2,2));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movlw	low((_D2))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_D2))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_D2))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(pow@x)
	tblrd*+
	
	movff	tablat,(pow@x+1)
	tblrd*-
	
	movff	tablat,(pow@x+2)

	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$969)
	movff	1+?_pow,(_ruoteRoutine$969+1)
	movff	2+?_pow,(_ruoteRoutine$969+2)
	
l4522:
;schedaMaster.c: 194: dICR_R[2] = (float) sqrt(pow((10.0 * console_raggioRuote + (L/2.0)),2) + pow(D2,2));
	movff	(_ruoteRoutine$968),(___ftadd@f1)
	movff	(_ruoteRoutine$968+1),(___ftadd@f1+1)
	movff	(_ruoteRoutine$968+2),(___ftadd@f1+2)
	movff	(_ruoteRoutine$969),(___ftadd@f2)
	movff	(_ruoteRoutine$969+1),(___ftadd@f2+1)
	movff	(_ruoteRoutine$969+2),(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$970)
	movff	1+?___ftadd,(_ruoteRoutine$970+1)
	movff	2+?___ftadd,(_ruoteRoutine$970+2)
	
l4524:
;schedaMaster.c: 194: dICR_R[2] = (float) sqrt(pow((10.0 * console_raggioRuote + (L/2.0)),2) + pow(D2,2));
	movff	(_ruoteRoutine$970),(sqrt@a)
	movff	(_ruoteRoutine$970+1),(sqrt@a+1)
	movff	(_ruoteRoutine$970+2),(sqrt@a+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,0+(ruoteRoutine@dICR_R+06h)
	movff	1+?_sqrt,1+(ruoteRoutine@dICR_R+06h)
	movff	2+?_sqrt,2+(ruoteRoutine@dICR_R+06h)
	line	195
;schedaMaster.c: 195: dICR_R[3] = (float) sqrt(pow((10.0 * console_raggioRuote - (L/2.0)),2) + pow(D2,2));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftneg@f1)
	movff	1+?___ftdiv,(___ftneg@f1+1)
	movff	2+?___ftdiv,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f2)
	movff	1+?___ftneg,(___ftadd@f2+1)
	movff	2+?___ftneg,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$977)
	movff	1+?___ftadd,(_ruoteRoutine$977+1)
	movff	2+?___ftadd,(_ruoteRoutine$977+2)
	
l4526:
;schedaMaster.c: 195: dICR_R[3] = (float) sqrt(pow((10.0 * console_raggioRuote - (L/2.0)),2) + pow(D2,2));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(_ruoteRoutine$977),(pow@x)
	movff	(_ruoteRoutine$977+1),(pow@x+1)
	movff	(_ruoteRoutine$977+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$968)
	movff	1+?_pow,(_ruoteRoutine$968+1)
	movff	2+?_pow,(_ruoteRoutine$968+2)
	
l4528:
;schedaMaster.c: 195: dICR_R[3] = (float) sqrt(pow((10.0 * console_raggioRuote - (L/2.0)),2) + pow(D2,2));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movlw	low((_D2))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_D2))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_D2))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(pow@x)
	tblrd*+
	
	movff	tablat,(pow@x+1)
	tblrd*-
	
	movff	tablat,(pow@x+2)

	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$969)
	movff	1+?_pow,(_ruoteRoutine$969+1)
	movff	2+?_pow,(_ruoteRoutine$969+2)
	
l4530:
;schedaMaster.c: 195: dICR_R[3] = (float) sqrt(pow((10.0 * console_raggioRuote - (L/2.0)),2) + pow(D2,2));
	movff	(_ruoteRoutine$968),(___ftadd@f1)
	movff	(_ruoteRoutine$968+1),(___ftadd@f1+1)
	movff	(_ruoteRoutine$968+2),(___ftadd@f1+2)
	movff	(_ruoteRoutine$969),(___ftadd@f2)
	movff	(_ruoteRoutine$969+1),(___ftadd@f2+1)
	movff	(_ruoteRoutine$969+2),(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$970)
	movff	1+?___ftadd,(_ruoteRoutine$970+1)
	movff	2+?___ftadd,(_ruoteRoutine$970+2)
	
l4532:
;schedaMaster.c: 195: dICR_R[3] = (float) sqrt(pow((10.0 * console_raggioRuote - (L/2.0)),2) + pow(D2,2));
	movff	(_ruoteRoutine$970),(sqrt@a)
	movff	(_ruoteRoutine$970+1),(sqrt@a+1)
	movff	(_ruoteRoutine$970+2),(sqrt@a+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,0+(ruoteRoutine@dICR_R+09h)
	movff	1+?_sqrt,1+(ruoteRoutine@dICR_R+09h)
	movff	2+?_sqrt,2+(ruoteRoutine@dICR_R+09h)
	line	196
;schedaMaster.c: 196: dICR_R[4] = (float) ((10.0 * console_raggioRuote - (L/2)) > 0 ? (10.0 * console_raggioRuote - (L/2)) : -(10.0 * console_raggioRuote - (L/2)));
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftneg@f1)
	movff	1+?___ftdiv,(___ftneg@f1+1)
	movff	2+?___ftdiv,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f2)
	movff	1+?___ftneg,(___ftadd@f2+1)
	movff	2+?___ftneg,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftge@ff2)
	movff	1+?___ftadd,(___ftge@ff2+1)
	movff	2+?___ftadd,(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u4711
	goto	u4710
u4711:
	goto	l4538
u4710:
	
l4534:; BSR set to: 0

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftneg@f1)
	movff	1+?___ftdiv,(___ftneg@f1+1)
	movff	2+?___ftdiv,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f2)
	movff	1+?___ftneg,(___ftadd@f2+1)
	movff	2+?___ftneg,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$976)
	movff	1+?___ftadd,(_ruoteRoutine$976+1)
	movff	2+?___ftadd,(_ruoteRoutine$976+2)
	
l4536:
	movff	(_ruoteRoutine$976),(___ftneg@f1)
	movff	(_ruoteRoutine$976+1),(___ftneg@f1+1)
	movff	(_ruoteRoutine$976+2),(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(_ruoteRoutine$273)
	movff	1+?___ftneg,(_ruoteRoutine$273+1)
	movff	2+?___ftneg,(_ruoteRoutine$273+2)
	goto	l4540
	
l511:
	
l4538:
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftneg@f1)
	movff	1+?___ftdiv,(___ftneg@f1+1)
	movff	2+?___ftdiv,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f2)
	movff	1+?___ftneg,(___ftadd@f2+1)
	movff	2+?___ftneg,(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$273)
	movff	1+?___ftadd,(_ruoteRoutine$273+1)
	movff	2+?___ftadd,(_ruoteRoutine$273+2)
	goto	l4540
	
l513:
	
l4540:
	movff	(_ruoteRoutine$273),0+(ruoteRoutine@dICR_R+0Ch)
	movff	(_ruoteRoutine$273+1),1+(ruoteRoutine@dICR_R+0Ch)
	movff	(_ruoteRoutine$273+2),2+(ruoteRoutine@dICR_R+0Ch)
	line	197
;schedaMaster.c: 197: dICR_R[5] = (float) sqrt(pow((10.0 * console_raggioRuote - (L/2.0)),2) + pow(D1,2));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low((_L))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_L))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_L))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftdiv@f1)
	tblrd*+
	
	movff	tablat,(___ftdiv@f1+1)
	tblrd*-
	
	movff	tablat,(___ftdiv@f1+2)

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftneg@f1)
	movff	1+?___ftdiv,(___ftneg@f1+1)
	movff	2+?___ftdiv,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f2)
	movff	1+?___ftneg,(___ftadd@f2+1)
	movff	2+?___ftneg,(___ftadd@f2+2)
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$977)
	movff	1+?___ftadd,(_ruoteRoutine$977+1)
	movff	2+?___ftadd,(_ruoteRoutine$977+2)
	
l4542:
;schedaMaster.c: 197: dICR_R[5] = (float) sqrt(pow((10.0 * console_raggioRuote - (L/2.0)),2) + pow(D1,2));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(_ruoteRoutine$977),(pow@x)
	movff	(_ruoteRoutine$977+1),(pow@x+1)
	movff	(_ruoteRoutine$977+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$968)
	movff	1+?_pow,(_ruoteRoutine$968+1)
	movff	2+?_pow,(_ruoteRoutine$968+2)
	
l4544:
;schedaMaster.c: 197: dICR_R[5] = (float) sqrt(pow((10.0 * console_raggioRuote - (L/2.0)),2) + pow(D1,2));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movlw	low((_D1))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_D1))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_D1))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(pow@x)
	tblrd*+
	
	movff	tablat,(pow@x+1)
	tblrd*-
	
	movff	tablat,(pow@x+2)

	call	_pow	;wreg free
	movff	0+?_pow,(_ruoteRoutine$969)
	movff	1+?_pow,(_ruoteRoutine$969+1)
	movff	2+?_pow,(_ruoteRoutine$969+2)
	
l4546:
;schedaMaster.c: 197: dICR_R[5] = (float) sqrt(pow((10.0 * console_raggioRuote - (L/2.0)),2) + pow(D1,2));
	movff	(_ruoteRoutine$968),(___ftadd@f1)
	movff	(_ruoteRoutine$968+1),(___ftadd@f1+1)
	movff	(_ruoteRoutine$968+2),(___ftadd@f1+2)
	movff	(_ruoteRoutine$969),(___ftadd@f2)
	movff	(_ruoteRoutine$969+1),(___ftadd@f2+1)
	movff	(_ruoteRoutine$969+2),(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_ruoteRoutine$970)
	movff	1+?___ftadd,(_ruoteRoutine$970+1)
	movff	2+?___ftadd,(_ruoteRoutine$970+2)
	
l4548:
;schedaMaster.c: 197: dICR_R[5] = (float) sqrt(pow((10.0 * console_raggioRuote - (L/2.0)),2) + pow(D1,2));
	movff	(_ruoteRoutine$970),(sqrt@a)
	movff	(_ruoteRoutine$970+1),(sqrt@a+1)
	movff	(_ruoteRoutine$970+2),(sqrt@a+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,0+(ruoteRoutine@dICR_R+0Fh)
	movff	1+?_sqrt,1+(ruoteRoutine@dICR_R+0Fh)
	movff	2+?_sqrt,2+(ruoteRoutine@dICR_R+0Fh)
	line	200
	
l4550:
;schedaMaster.c: 200: for (i=0;i<6;i++){
	movlw	low(0)
	movwf	((c:_i)),c
	
l4552:
		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4721
	goto	u4720

u4721:
	goto	l4556
u4720:
	goto	l515
	
l4554:
	goto	l515
	
l514:
	line	201
	
l4556:
;schedaMaster.c: 201: ruote[i].direzione = 1;
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlw	low(01h)
	movwf	indf2
	line	202
	
l4558:
;schedaMaster.c: 202: if (console_distanzaRuote == 0){
	movlb	1	; () banked
	movf	((_console_distanzaRuote))&0ffh,w
	movlb	1	; () banked
iorwf	((_console_distanzaRuote+1))&0ffh,w
	btfss	status,2
	goto	u4731
	goto	u4730

u4731:
	goto	l4568
u4730:
	line	203
	
l4560:; BSR set to: 1

;schedaMaster.c: 203: ruote[i].distanza = (float) ((65535.0 * dICR_R[i] / console_raggioRuote) > 0 ? (65535.0 * dICR_R[i] / console_raggioRuote) : -(65535.0 * dICR_R[i] / console_raggioRuote));
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftdiv@f2)
	movff	1+?___awtoft,(___ftdiv@f2+1)
	movff	2+?___awtoft,(___ftdiv@f2+2)
	movlw	low(float24(65535.000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(65535.000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(65535.000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movf	((c:_i)),c,w
	mullw	03h
	movlw	low(ruoteRoutine@dICR_R)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(ruoteRoutine@dICR_R)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(___ftmul@f1)
	movff	postinc2,(___ftmul@f1+1)
	movff	postdec2,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftdiv@f1)
	movff	1+?___ftmul,(___ftdiv@f1+1)
	movff	2+?___ftmul,(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftge@ff2)
	movff	1+?___ftdiv,(___ftge@ff2+1)
	movff	2+?___ftdiv,(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u4741
	goto	u4740
u4741:
	goto	l4564
u4740:
	
l4562:; BSR set to: 0

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftdiv@f2)
	movff	1+?___awtoft,(___ftdiv@f2+1)
	movff	2+?___awtoft,(___ftdiv@f2+2)
	movlw	low(float24(65535.000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(65535.000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(65535.000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movf	((c:_i)),c,w
	mullw	03h
	movlw	low(ruoteRoutine@dICR_R)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(ruoteRoutine@dICR_R)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(___ftmul@f1)
	movff	postinc2,(___ftmul@f1+1)
	movff	postdec2,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftdiv@f1)
	movff	1+?___ftmul,(___ftdiv@f1+1)
	movff	2+?___ftmul,(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftneg@f1)
	movff	1+?___ftdiv,(___ftneg@f1+1)
	movff	2+?___ftdiv,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(_ruoteRoutine$274)
	movff	1+?___ftneg,(_ruoteRoutine$274+1)
	movff	2+?___ftneg,(_ruoteRoutine$274+2)
	goto	l4566
	
l518:
	
l4564:
	movlw	low(float24(65535.000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(65535.000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(65535.000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movf	((c:_i)),c,w
	mullw	03h
	movlw	low(ruoteRoutine@dICR_R)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(ruoteRoutine@dICR_R)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(___ftmul@f1)
	movff	postinc2,(___ftmul@f1+1)
	movff	postdec2,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftdiv@f1)
	movff	1+?___ftmul,(___ftdiv@f1+1)
	movff	2+?___ftmul,(___ftdiv@f1+2)
	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftdiv@f2)
	movff	1+?___awtoft,(___ftdiv@f2+1)
	movff	2+?___awtoft,(___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_ruoteRoutine$274)
	movff	1+?___ftdiv,(_ruoteRoutine$274+1)
	movff	2+?___ftdiv,(_ruoteRoutine$274+2)
	goto	l4566
	
l520:
	
l4566:
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	(_ruoteRoutine$274),postinc2
	movff	(_ruoteRoutine$274+1),postinc2
	movff	(_ruoteRoutine$274+2),postinc2

	line	204
;schedaMaster.c: 204: }
	goto	l4576
	line	205
	
l516:
	line	206
	
l4568:
;schedaMaster.c: 205: else{
;schedaMaster.c: 206: ruote[i].distanza = (float) ((console_distanzaRuote * dICR_R[i] / console_raggioRuote) > 0 ? (console_distanzaRuote * dICR_R[i] / console_raggioRuote) : -(console_distanzaRuote * dICR_R[i] / console_raggioRuote));
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftdiv@f2)
	movff	1+?___awtoft,(___ftdiv@f2+1)
	movff	2+?___awtoft,(___ftdiv@f2+2)
	movf	((c:_i)),c,w
	mullw	03h
	movlw	low(ruoteRoutine@dICR_R)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(ruoteRoutine@dICR_R)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(___ftmul@f2)
	movff	postinc2,(___ftmul@f2+1)
	movff	postdec2,(___ftmul@f2+2)
	movff	(_console_distanzaRuote),(___awtoft@c)
	movff	(_console_distanzaRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftdiv@f1)
	movff	1+?___ftmul,(___ftdiv@f1+1)
	movff	2+?___ftmul,(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftge@ff2)
	movff	1+?___ftdiv,(___ftge@ff2+1)
	movff	2+?___ftdiv,(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u4751
	goto	u4750
u4751:
	goto	l4572
u4750:
	
l4570:; BSR set to: 0

	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftdiv@f2)
	movff	1+?___awtoft,(___ftdiv@f2+1)
	movff	2+?___awtoft,(___ftdiv@f2+2)
	movf	((c:_i)),c,w
	mullw	03h
	movlw	low(ruoteRoutine@dICR_R)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(ruoteRoutine@dICR_R)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(___ftmul@f2)
	movff	postinc2,(___ftmul@f2+1)
	movff	postdec2,(___ftmul@f2+2)
	movff	(_console_distanzaRuote),(___awtoft@c)
	movff	(_console_distanzaRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftdiv@f1)
	movff	1+?___ftmul,(___ftdiv@f1+1)
	movff	2+?___ftmul,(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftneg@f1)
	movff	1+?___ftdiv,(___ftneg@f1+1)
	movff	2+?___ftdiv,(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(_ruoteRoutine$275)
	movff	1+?___ftneg,(_ruoteRoutine$275+1)
	movff	2+?___ftneg,(_ruoteRoutine$275+2)
	goto	l4574
	
l523:
	
l4572:
	movf	((c:_i)),c,w
	mullw	03h
	movlw	low(ruoteRoutine@dICR_R)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(ruoteRoutine@dICR_R)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(___ftmul@f2)
	movff	postinc2,(___ftmul@f2+1)
	movff	postdec2,(___ftmul@f2+2)
	movff	(_console_distanzaRuote),(___awtoft@c)
	movff	(_console_distanzaRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftdiv@f1)
	movff	1+?___ftmul,(___ftdiv@f1+1)
	movff	2+?___ftmul,(___ftdiv@f1+2)
	movff	(_console_raggioRuote),(___awtoft@c)
	movff	(_console_raggioRuote+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftdiv@f2)
	movff	1+?___awtoft,(___ftdiv@f2+1)
	movff	2+?___awtoft,(___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_ruoteRoutine$275)
	movff	1+?___ftdiv,(_ruoteRoutine$275+1)
	movff	2+?___ftdiv,(_ruoteRoutine$275+2)
	goto	l4574
	
l525:
	
l4574:
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	(_ruoteRoutine$275),postinc2
	movff	(_ruoteRoutine$275+1),postinc2
	movff	(_ruoteRoutine$275+2),postinc2

	goto	l4576
	line	207
	
l521:
	line	208
	
l4576:
;schedaMaster.c: 207: }
;schedaMaster.c: 208: if (ruote[i].distanza > massimaDistanza){
	movff	(ruoteRoutine@massimaDistanza),(___ftge@ff1)
	movff	(ruoteRoutine@massimaDistanza+1),(___ftge@ff1+1)
	movff	(ruoteRoutine@massimaDistanza+2),(___ftge@ff1+2)
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(___ftge@ff2)
	movff	postinc2,(___ftge@ff2+1)
	movff	postdec2,(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfsc	status,0
	goto	u4761
	goto	u4760
u4761:
	goto	l4580
u4760:
	line	209
	
l4578:; BSR set to: 0

;schedaMaster.c: 209: massimaDistanza = ruote[i].distanza;
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(ruoteRoutine@massimaDistanza)
	movff	postinc2,(ruoteRoutine@massimaDistanza+1)
	movff	postdec2,(ruoteRoutine@massimaDistanza+2)
	goto	l4580
	line	210
	
l526:; BSR set to: 0

	line	200
	
l4580:; BSR set to: 0

	incf	((c:_i)),c
	
l4582:; BSR set to: 0

		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4771
	goto	u4770

u4771:
	goto	l4556
u4770:
	
l515:
	line	212
;schedaMaster.c: 210: }
;schedaMaster.c: 211: }
;schedaMaster.c: 212: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	213
;schedaMaster.c: 213: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	214
;schedaMaster.c: 214: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	215
	
l4584:
;schedaMaster.c: 215: for (i=0; i<6; i++){
	movlw	low(0)
	movwf	((c:_i)),c
	
l4586:
		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4781
	goto	u4780

u4781:
	goto	l4590
u4780:
	goto	l460
	
l4588:
	goto	l460
	
l527:
	line	216
	
l4590:
;schedaMaster.c: 216: ruote[i].velocita = (float) ((ruote[i].distanza * velocitaMovimento) / massimaDistanza);
	movff	(ruoteRoutine@velocitaMovimento),(___ftmul@f2)
	movff	(ruoteRoutine@velocitaMovimento+1),(___ftmul@f2+1)
	movff	(ruoteRoutine@velocitaMovimento+2),(___ftmul@f2+2)
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(___ftmul@f1)
	movff	postinc2,(___ftmul@f1+1)
	movff	postdec2,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftdiv@f1)
	movff	1+?___ftmul,(___ftdiv@f1+1)
	movff	2+?___ftmul,(___ftdiv@f1+2)
	movff	(ruoteRoutine@massimaDistanza),(___ftdiv@f2)
	movff	(ruoteRoutine@massimaDistanza+1),(___ftdiv@f2+1)
	movff	(ruoteRoutine@massimaDistanza+2),(___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movf	((c:_i)),c,w
	mullw	0Ah
	movlw	low(_ruote)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ruote)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	0+?___ftdiv,postinc2
	movff	1+?___ftdiv,postinc2
	movff	2+?___ftdiv,postinc2

	line	215
	
l4592:
	incf	((c:_i)),c
	
l4594:
		movlw	06h-1
	cpfsgt	((c:_i)),c
	goto	u4791
	goto	u4790

u4791:
	goto	l4590
u4790:
	goto	l460
	
l528:
	goto	l460
	line	218
	
l489:
	goto	l460
	
l481:
	
l460:
	line	220
;schedaMaster.c: 217: }
;schedaMaster.c: 218: }
;schedaMaster.c: 220: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	221
;schedaMaster.c: 221: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	222
;schedaMaster.c: 222: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	224
	
l4596:
;schedaMaster.c: 224: canTX(1,0x27, (int) ruote[0].angolo);
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(01h)
	movwf	((canTX@nData))&0ffh
	movlw	high(027h)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(027h)
	movwf	(0+(?_canTX+02h))&0ffh
	movff	0+(_ruote+07h),(___fttol@f1)
	movff	1+(_ruote+07h),(___fttol@f1+1)
	movff	2+(_ruote+07h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,0+(?_canTX+04h)
	movff	1+?___fttol,1+(?_canTX+04h)
	call	_canTX	;wreg free
	line	225
;schedaMaster.c: 225: canTX(1,0x28, (int) ruote[2].angolo);
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(01h)
	movwf	((canTX@nData))&0ffh
	movlw	high(028h)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(028h)
	movwf	(0+(?_canTX+02h))&0ffh
	movff	0+(_ruote+01Bh),(___fttol@f1)
	movff	1+(_ruote+01Bh),(___fttol@f1+1)
	movff	2+(_ruote+01Bh),(___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,0+(?_canTX+04h)
	movff	1+?___fttol,1+(?_canTX+04h)
	call	_canTX	;wreg free
	line	226
;schedaMaster.c: 226: canTX(1,0x29, (int) ruote[3].angolo);
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(01h)
	movwf	((canTX@nData))&0ffh
	movlw	high(029h)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(029h)
	movwf	(0+(?_canTX+02h))&0ffh
	movff	0+(_ruote+025h),(___fttol@f1)
	movff	1+(_ruote+025h),(___fttol@f1+1)
	movff	2+(_ruote+025h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,0+(?_canTX+04h)
	movff	1+?___fttol,1+(?_canTX+04h)
	call	_canTX	;wreg free
	line	227
;schedaMaster.c: 227: canTX(1,0x2A, (int) ruote[5].angolo);
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(01h)
	movwf	((canTX@nData))&0ffh
	movlw	high(02Ah)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(02Ah)
	movwf	(0+(?_canTX+02h))&0ffh
	movff	0+(_ruote+039h),(___fttol@f1)
	movff	1+(_ruote+039h),(___fttol@f1+1)
	movff	2+(_ruote+039h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,0+(?_canTX+04h)
	movff	1+?___fttol,1+(?_canTX+04h)
	call	_canTX	;wreg free
	line	229
;schedaMaster.c: 229: canTX(6,0x21, 0, (int) ruote[0].velocita & 0xFF, (int) ruote[0].velocita >> 8, (int) ruote[0].distanza & 0xFF, (int) ruote[0].distanza >> 8, ruote[0].direzione);
	movlw	high(06h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(06h)
	movwf	((canTX@nData))&0ffh
	movlw	high(021h)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(021h)
	movwf	(0+(?_canTX+02h))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(?_canTX+04h))&0ffh
	movlw	low(0)
	movwf	(0+(?_canTX+04h))&0ffh
	movff	(_ruote),(___fttol@f1)
	movff	(_ruote+1),(___fttol@f1+1)
	movff	(_ruote+2),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___fttol)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_canTX+06h))&0ffh
	clrf	(1+(?_canTX+06h))&0ffh
	movff	(_ruote),(___fttol@f1)
	movff	(_ruote+1),(___fttol@f1+1)
	movff	(_ruote+2),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movff	1+?___fttol,0+?___fttol
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(1+?___fttol)&0ffh
	movlb	0	; () banked
	btfsc	(0+?___fttol)&0ffh,7
	setf	(1+?___fttol)&0ffh
	movff	0+?___fttol,0+(?_canTX+08h)
	movff	1+?___fttol,1+(?_canTX+08h)
	movff	0+(_ruote+03h),(___fttol@f1)
	movff	1+(_ruote+03h),(___fttol@f1+1)
	movff	2+(_ruote+03h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___fttol)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_canTX+0Ah))&0ffh
	clrf	(1+(?_canTX+0Ah))&0ffh
	movff	0+(_ruote+03h),(___fttol@f1)
	movff	1+(_ruote+03h),(___fttol@f1+1)
	movff	2+(_ruote+03h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movff	1+?___fttol,0+?___fttol
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(1+?___fttol)&0ffh
	movlb	0	; () banked
	btfsc	(0+?___fttol)&0ffh,7
	setf	(1+?___fttol)&0ffh
	movff	0+?___fttol,0+(?_canTX+0Ch)
	movff	1+?___fttol,1+(?_canTX+0Ch)
	movff	0+(_ruote+06h),0+(?_canTX+0Eh)
	movlb	0	; () banked
	clrf	(1+(?_canTX+0Eh))&0ffh
	call	_canTX	;wreg free
	line	230
;schedaMaster.c: 230: canTX(6,0x22, 0, (int) ruote[1].velocita & 0xFF, (int) ruote[1].velocita >> 8, (int) ruote[1].distanza & 0xFF, (int) ruote[1].distanza >> 8, ruote[1].direzione);
	movlw	high(06h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(06h)
	movwf	((canTX@nData))&0ffh
	movlw	high(022h)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(022h)
	movwf	(0+(?_canTX+02h))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(?_canTX+04h))&0ffh
	movlw	low(0)
	movwf	(0+(?_canTX+04h))&0ffh
	movff	0+(_ruote+0Ah),(___fttol@f1)
	movff	1+(_ruote+0Ah),(___fttol@f1+1)
	movff	2+(_ruote+0Ah),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___fttol)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_canTX+06h))&0ffh
	clrf	(1+(?_canTX+06h))&0ffh
	movff	0+(_ruote+0Ah),(___fttol@f1)
	movff	1+(_ruote+0Ah),(___fttol@f1+1)
	movff	2+(_ruote+0Ah),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movff	1+?___fttol,0+?___fttol
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(1+?___fttol)&0ffh
	movlb	0	; () banked
	btfsc	(0+?___fttol)&0ffh,7
	setf	(1+?___fttol)&0ffh
	movff	0+?___fttol,0+(?_canTX+08h)
	movff	1+?___fttol,1+(?_canTX+08h)
	movff	0+(_ruote+0Dh),(___fttol@f1)
	movff	1+(_ruote+0Dh),(___fttol@f1+1)
	movff	2+(_ruote+0Dh),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___fttol)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_canTX+0Ah))&0ffh
	clrf	(1+(?_canTX+0Ah))&0ffh
	movff	0+(_ruote+0Dh),(___fttol@f1)
	movff	1+(_ruote+0Dh),(___fttol@f1+1)
	movff	2+(_ruote+0Dh),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movff	1+?___fttol,0+?___fttol
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(1+?___fttol)&0ffh
	movlb	0	; () banked
	btfsc	(0+?___fttol)&0ffh,7
	setf	(1+?___fttol)&0ffh
	movff	0+?___fttol,0+(?_canTX+0Ch)
	movff	1+?___fttol,1+(?_canTX+0Ch)
	movff	0+(_ruote+010h),0+(?_canTX+0Eh)
	movlb	0	; () banked
	clrf	(1+(?_canTX+0Eh))&0ffh
	call	_canTX	;wreg free
	line	231
;schedaMaster.c: 231: canTX(6,0x23, 0, (int) ruote[2].velocita & 0xFF, (int) ruote[2].velocita >> 8, (int) ruote[2].distanza & 0xFF, (int) ruote[2].distanza >> 8, ruote[2].direzione);
	movlw	high(06h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(06h)
	movwf	((canTX@nData))&0ffh
	movlw	high(023h)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(023h)
	movwf	(0+(?_canTX+02h))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(?_canTX+04h))&0ffh
	movlw	low(0)
	movwf	(0+(?_canTX+04h))&0ffh
	movff	0+(_ruote+014h),(___fttol@f1)
	movff	1+(_ruote+014h),(___fttol@f1+1)
	movff	2+(_ruote+014h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___fttol)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_canTX+06h))&0ffh
	clrf	(1+(?_canTX+06h))&0ffh
	movff	0+(_ruote+014h),(___fttol@f1)
	movff	1+(_ruote+014h),(___fttol@f1+1)
	movff	2+(_ruote+014h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movff	1+?___fttol,0+?___fttol
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(1+?___fttol)&0ffh
	movlb	0	; () banked
	btfsc	(0+?___fttol)&0ffh,7
	setf	(1+?___fttol)&0ffh
	movff	0+?___fttol,0+(?_canTX+08h)
	movff	1+?___fttol,1+(?_canTX+08h)
	movff	0+(_ruote+017h),(___fttol@f1)
	movff	1+(_ruote+017h),(___fttol@f1+1)
	movff	2+(_ruote+017h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___fttol)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_canTX+0Ah))&0ffh
	clrf	(1+(?_canTX+0Ah))&0ffh
	movff	0+(_ruote+017h),(___fttol@f1)
	movff	1+(_ruote+017h),(___fttol@f1+1)
	movff	2+(_ruote+017h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movff	1+?___fttol,0+?___fttol
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(1+?___fttol)&0ffh
	movlb	0	; () banked
	btfsc	(0+?___fttol)&0ffh,7
	setf	(1+?___fttol)&0ffh
	movff	0+?___fttol,0+(?_canTX+0Ch)
	movff	1+?___fttol,1+(?_canTX+0Ch)
	movff	0+(_ruote+01Ah),0+(?_canTX+0Eh)
	movlb	0	; () banked
	clrf	(1+(?_canTX+0Eh))&0ffh
	call	_canTX	;wreg free
	line	232
;schedaMaster.c: 232: canTX(6,0x24, 0, (int) ruote[3].velocita & 0xFF, (int) ruote[3].velocita >> 8, (int) ruote[3].distanza & 0xFF, (int) ruote[3].distanza >> 8, ruote[3].direzione);
	movlw	high(06h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(06h)
	movwf	((canTX@nData))&0ffh
	movlw	high(024h)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(024h)
	movwf	(0+(?_canTX+02h))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(?_canTX+04h))&0ffh
	movlw	low(0)
	movwf	(0+(?_canTX+04h))&0ffh
	movff	0+(_ruote+01Eh),(___fttol@f1)
	movff	1+(_ruote+01Eh),(___fttol@f1+1)
	movff	2+(_ruote+01Eh),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___fttol)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_canTX+06h))&0ffh
	clrf	(1+(?_canTX+06h))&0ffh
	movff	0+(_ruote+01Eh),(___fttol@f1)
	movff	1+(_ruote+01Eh),(___fttol@f1+1)
	movff	2+(_ruote+01Eh),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movff	1+?___fttol,0+?___fttol
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(1+?___fttol)&0ffh
	movlb	0	; () banked
	btfsc	(0+?___fttol)&0ffh,7
	setf	(1+?___fttol)&0ffh
	movff	0+?___fttol,0+(?_canTX+08h)
	movff	1+?___fttol,1+(?_canTX+08h)
	movff	0+(_ruote+021h),(___fttol@f1)
	movff	1+(_ruote+021h),(___fttol@f1+1)
	movff	2+(_ruote+021h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___fttol)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_canTX+0Ah))&0ffh
	clrf	(1+(?_canTX+0Ah))&0ffh
	movff	0+(_ruote+021h),(___fttol@f1)
	movff	1+(_ruote+021h),(___fttol@f1+1)
	movff	2+(_ruote+021h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movff	1+?___fttol,0+?___fttol
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(1+?___fttol)&0ffh
	movlb	0	; () banked
	btfsc	(0+?___fttol)&0ffh,7
	setf	(1+?___fttol)&0ffh
	movff	0+?___fttol,0+(?_canTX+0Ch)
	movff	1+?___fttol,1+(?_canTX+0Ch)
	movff	0+(_ruote+024h),0+(?_canTX+0Eh)
	movlb	0	; () banked
	clrf	(1+(?_canTX+0Eh))&0ffh
	call	_canTX	;wreg free
	line	233
;schedaMaster.c: 233: canTX(6,0x25, 0, (int) ruote[4].velocita & 0xFF, (int) ruote[4].velocita >> 8, (int) ruote[4].distanza & 0xFF, (int) ruote[4].distanza >> 8, ruote[4].direzione);
	movlw	high(06h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(06h)
	movwf	((canTX@nData))&0ffh
	movlw	high(025h)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(025h)
	movwf	(0+(?_canTX+02h))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(?_canTX+04h))&0ffh
	movlw	low(0)
	movwf	(0+(?_canTX+04h))&0ffh
	movff	0+(_ruote+028h),(___fttol@f1)
	movff	1+(_ruote+028h),(___fttol@f1+1)
	movff	2+(_ruote+028h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___fttol)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_canTX+06h))&0ffh
	clrf	(1+(?_canTX+06h))&0ffh
	movff	0+(_ruote+028h),(___fttol@f1)
	movff	1+(_ruote+028h),(___fttol@f1+1)
	movff	2+(_ruote+028h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movff	1+?___fttol,0+?___fttol
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(1+?___fttol)&0ffh
	movlb	0	; () banked
	btfsc	(0+?___fttol)&0ffh,7
	setf	(1+?___fttol)&0ffh
	movff	0+?___fttol,0+(?_canTX+08h)
	movff	1+?___fttol,1+(?_canTX+08h)
	movff	0+(_ruote+02Bh),(___fttol@f1)
	movff	1+(_ruote+02Bh),(___fttol@f1+1)
	movff	2+(_ruote+02Bh),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___fttol)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_canTX+0Ah))&0ffh
	clrf	(1+(?_canTX+0Ah))&0ffh
	movff	0+(_ruote+02Bh),(___fttol@f1)
	movff	1+(_ruote+02Bh),(___fttol@f1+1)
	movff	2+(_ruote+02Bh),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movff	1+?___fttol,0+?___fttol
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(1+?___fttol)&0ffh
	movlb	0	; () banked
	btfsc	(0+?___fttol)&0ffh,7
	setf	(1+?___fttol)&0ffh
	movff	0+?___fttol,0+(?_canTX+0Ch)
	movff	1+?___fttol,1+(?_canTX+0Ch)
	movff	0+(_ruote+02Eh),0+(?_canTX+0Eh)
	movlb	0	; () banked
	clrf	(1+(?_canTX+0Eh))&0ffh
	call	_canTX	;wreg free
	line	234
;schedaMaster.c: 234: canTX(6,0x26, 0, (int) ruote[5].velocita & 0xFF, (int) ruote[5].velocita >> 8, (int) ruote[5].distanza & 0xFF, (int) ruote[5].distanza >> 8, ruote[5].direzione);
	movlw	high(06h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(06h)
	movwf	((canTX@nData))&0ffh
	movlw	high(026h)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(026h)
	movwf	(0+(?_canTX+02h))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(?_canTX+04h))&0ffh
	movlw	low(0)
	movwf	(0+(?_canTX+04h))&0ffh
	movff	0+(_ruote+032h),(___fttol@f1)
	movff	1+(_ruote+032h),(___fttol@f1+1)
	movff	2+(_ruote+032h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___fttol)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_canTX+06h))&0ffh
	clrf	(1+(?_canTX+06h))&0ffh
	movff	0+(_ruote+032h),(___fttol@f1)
	movff	1+(_ruote+032h),(___fttol@f1+1)
	movff	2+(_ruote+032h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movff	1+?___fttol,0+?___fttol
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(1+?___fttol)&0ffh
	movlb	0	; () banked
	btfsc	(0+?___fttol)&0ffh,7
	setf	(1+?___fttol)&0ffh
	movff	0+?___fttol,0+(?_canTX+08h)
	movff	1+?___fttol,1+(?_canTX+08h)
	movff	0+(_ruote+035h),(___fttol@f1)
	movff	1+(_ruote+035h),(___fttol@f1+1)
	movff	2+(_ruote+035h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___fttol)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_canTX+0Ah))&0ffh
	clrf	(1+(?_canTX+0Ah))&0ffh
	movff	0+(_ruote+035h),(___fttol@f1)
	movff	1+(_ruote+035h),(___fttol@f1+1)
	movff	2+(_ruote+035h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movff	1+?___fttol,0+?___fttol
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(1+?___fttol)&0ffh
	movlb	0	; () banked
	btfsc	(0+?___fttol)&0ffh,7
	setf	(1+?___fttol)&0ffh
	movff	0+?___fttol,0+(?_canTX+0Ch)
	movff	1+?___fttol,1+(?_canTX+0Ch)
	movff	0+(_ruote+038h),0+(?_canTX+0Eh)
	movlb	0	; () banked
	clrf	(1+(?_canTX+0Eh))&0ffh
	call	_canTX	;wreg free
	line	235
	
l459:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ruoteRoutine
	__end_of_ruoteRoutine:
	signat	_ruoteRoutine,88
	global	_sqrt

;; *************** function _sqrt *****************
;; Defined at:
;;		line 9 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\sprcsqrt.c"
;; Parameters:    Size  Location     Type
;;  a               3  100[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  x               3  116[BANK0 ] float 
;;  q               3  113[BANK0 ] float 
;;  z               3  109[BANK0 ] float 
;;  og              3  106[BANK0 ] float 
;;  i               1  112[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3  100[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0      13       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0      19       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftsub
;; This function is called by:
;;		_ruoteRoutine
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\sprcsqrt.c"
	line	9
global __ptext3
__ptext3:
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\sprcsqrt.c"
	line	9
	global	__size_of_sqrt
	__size_of_sqrt	equ	__end_of_sqrt-_sqrt
	
_sqrt:
;incstack = 0
	opt	stack 22
	line	138
	
l4182:
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movff	(sqrt@a),(___ftge@ff2)
	movff	(sqrt@a+1),(___ftge@ff2+1)
	movff	(sqrt@a+2),(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u4351
	goto	u4350
u4351:
	goto	l1175
u4350:
	line	139
	
l4184:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((sqrt@a+2))&0ffh,7
	goto	u4360
	goto	u4361

u4361:
	goto	l1176
u4360:
	line	140
	
l4186:; BSR set to: 0

	movlw	high(021h)
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(021h)
	movwf	((_errno))&0ffh
	line	141
	
l1176:; BSR set to: 0

	line	142
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_sqrt))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_sqrt+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_sqrt+2))&0ffh

	goto	l1177
	
l4188:; BSR set to: 0

	goto	l1177
	line	143
	
l1175:; BSR set to: 0

	line	144
	movff	(sqrt@a),(sqrt@z)
	movff	(sqrt@a+1),(sqrt@z+1)
	movff	(sqrt@a+2),(sqrt@z+2)
	line	145
	
l4190:; BSR set to: 0

	movff	(sqrt@a),??_sqrt+0+0
	movff	(sqrt@a+1),??_sqrt+0+0+1
	movff	(sqrt@a+2),??_sqrt+0+0+2
	movlb	0	; () banked
	comf	(??_sqrt+0+0)&0ffh
	comf	(??_sqrt+0+1)&0ffh
	comf	(??_sqrt+0+2)&0ffh
	incf	(??_sqrt+0+0)&0ffh
	movlw	0
	addwfc	(??_sqrt+0+1)&0ffh
	addwfc	(??_sqrt+0+2)&0ffh

	movlw	low(0BE6EC8h)
	movlb	0	; () banked
	addwf	(??_sqrt+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((sqrt@x))&0ffh
	movlw	06Eh
	movlb	0	; () banked
	addwfc	(??_sqrt+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+((sqrt@x))&0ffh
	
	movlw	0BEh
	movlb	0	; () banked
	addwfc	(??_sqrt+0+2)&0ffh,w
	movlb	0	; () banked
	movwf	2+((sqrt@x))&0ffh
	line	146
	
l4192:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((sqrt@x+2))&0ffh
	rrcf	((sqrt@x+1))&0ffh
	rrcf	((sqrt@x))&0ffh
	line	147
	
l4194:; BSR set to: 0

	movlw	low(08000h)
	movlb	0	; () banked
	subwf	((sqrt@z))&0ffh
	movlw	high(08000h)
	movlb	0	; () banked
	subwfb	((sqrt@z+1))&0ffh
	movlw	low highword(08000h)
	movlb	0	; () banked
	subwfb	((sqrt@z+2))&0ffh

	line	148
	
l4196:; BSR set to: 0

	movlw	low(04h)
	movlb	0	; () banked
	movwf	((sqrt@i))&0ffh
	goto	l4198
	line	149
	
l1178:; BSR set to: 0

	line	150
	
l4198:; BSR set to: 0

	movff	(sqrt@x),(sqrt@og)
	movff	(sqrt@x+1),(sqrt@og+1)
	movff	(sqrt@x+2),(sqrt@og+2)
	line	151
	
l4200:; BSR set to: 0

	movff	(sqrt@x),(___ftmul@f1)
	movff	(sqrt@x+1),(___ftmul@f1+1)
	movff	(sqrt@x+2),(___ftmul@f1+2)
	movff	(sqrt@z),(___ftmul@f2)
	movff	(sqrt@z+1),(___ftmul@f2+1)
	movff	(sqrt@z+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(sqrt@q)
	movff	1+?___ftmul,(sqrt@q+1)
	movff	2+?___ftmul,(sqrt@q+2)
	line	152
	
l4202:
	movff	(sqrt@q),(___ftmul@f1)
	movff	(sqrt@q+1),(___ftmul@f1+1)
	movff	(sqrt@q+2),(___ftmul@f1+2)
	movff	(sqrt@x),(___ftmul@f2)
	movff	(sqrt@x+1),(___ftmul@f2+1)
	movff	(sqrt@x+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(sqrt@q)
	movff	1+?___ftmul,(sqrt@q+1)
	movff	2+?___ftmul,(sqrt@q+2)
	line	153
	
l4204:
	movff	(sqrt@q),(___ftmul@f1)
	movff	(sqrt@q+1),(___ftmul@f1+1)
	movff	(sqrt@q+2),(___ftmul@f1+2)
	movff	(sqrt@x),(___ftmul@f2)
	movff	(sqrt@x+1),(___ftmul@f2+1)
	movff	(sqrt@x+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(sqrt@q)
	movff	1+?___ftmul,(sqrt@q+1)
	movff	2+?___ftmul,(sqrt@q+2)
	line	154
	
l4206:
	movff	(sqrt@x),(___ftmul@f1)
	movff	(sqrt@x+1),(___ftmul@f1+1)
	movff	(sqrt@x+2),(___ftmul@f1+2)
	movlw	low(float24(1.5000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(1.5000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(1.5000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(sqrt@x)
	movff	1+?___ftmul,(sqrt@x+1)
	movff	2+?___ftmul,(sqrt@x+2)
	line	155
	
l4208:
	movff	(sqrt@x),(___ftsub@f1)
	movff	(sqrt@x+1),(___ftsub@f1+1)
	movff	(sqrt@x+2),(___ftsub@f1+2)
	movff	(sqrt@q),(___ftsub@f2)
	movff	(sqrt@q+1),(___ftsub@f2+1)
	movff	(sqrt@q+2),(___ftsub@f2+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(sqrt@x)
	movff	1+?___ftsub,(sqrt@x+1)
	movff	2+?___ftsub,(sqrt@x+2)
	line	156
	
l4210:
	movlb	0	; () banked
	decfsz	((sqrt@i))&0ffh
	
	goto	l4198
	goto	l4212
	
l1179:; BSR set to: 0

	line	157
	
l4212:; BSR set to: 0

	movff	(sqrt@x),(___ftmul@f1)
	movff	(sqrt@x+1),(___ftmul@f1+1)
	movff	(sqrt@x+2),(___ftmul@f1+2)
	movff	(sqrt@a),(___ftmul@f2)
	movff	(sqrt@a+1),(___ftmul@f2+1)
	movff	(sqrt@a+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(?_sqrt)
	movff	1+?___ftmul,(?_sqrt+1)
	movff	2+?___ftmul,(?_sqrt+2)
	goto	l1177
	
l4214:
	line	159
	
l1177:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_sqrt
	__end_of_sqrt:
	signat	_sqrt,4219
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\pow.c"
;; Parameters:    Size  Location     Type
;;  x               3   83[BANK0 ] unsigned char 
;;  y               3   86[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  yi              4   96[BANK0 ] unsigned long 
;;  sign            1   95[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   83[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0      11       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      17       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		___lltoft
;;		_exp
;;		_log
;; This function is called by:
;;		_ruoteRoutine
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\pow.c"
	line	5
global __ptext4
__ptext4:
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:
;incstack = 0
	opt	stack 21
	line	7
	
l4142:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((pow@sign))&0ffh
	line	10
	
l4144:; BSR set to: 0

	movlb	0	; () banked
	movf	((pow@x))&0ffh,w
	movlb	0	; () banked
iorwf	((pow@x+1))&0ffh,w
	movlb	0	; () banked
iorwf	((pow@x+2))&0ffh,w
	btfss	status,2
	goto	u4291
	goto	u4290

u4291:
	goto	l4152
u4290:
	line	11
	
l4146:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movff	(pow@y),(___ftge@ff2)
	movff	(pow@y+1),(___ftge@ff2+1)
	movff	(pow@y+2),(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u4301
	goto	u4300
u4301:
	goto	l1045
u4300:
	line	12
	
l4148:; BSR set to: 0

	movlw	high(021h)
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(021h)
	movwf	((_errno))&0ffh
	line	13
	
l1045:; BSR set to: 0

	line	14
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow+2))&0ffh

	goto	l1046
	
l4150:; BSR set to: 0

	goto	l1046
	line	15
	
l1044:; BSR set to: 0

	line	16
	
l4152:; BSR set to: 0

	movlb	0	; () banked
	movf	((pow@y))&0ffh,w
	movlb	0	; () banked
iorwf	((pow@y+1))&0ffh,w
	movlb	0	; () banked
iorwf	((pow@y+2))&0ffh,w
	btfss	status,2
	goto	u4311
	goto	u4310

u4311:
	goto	l4158
u4310:
	line	17
	
l4154:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow))&0ffh
	movlw	high(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow+1))&0ffh
	movlw	low highword(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow+2))&0ffh

	goto	l1046
	
l4156:; BSR set to: 0

	goto	l1046
	
l1047:; BSR set to: 0

	line	18
	
l4158:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((pow@x+2))&0ffh,7
	goto	u4320
	goto	u4321

u4321:
	goto	l4170
u4320:
	line	19
	
l4160:; BSR set to: 0

	movff	(pow@y),(___fttol@f1)
	movff	(pow@y+1),(___fttol@f1+1)
	movff	(pow@y+2),(___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(pow@yi)
	movff	1+?___fttol,(pow@yi+1)
	movff	2+?___fttol,(pow@yi+2)
	movff	3+?___fttol,(pow@yi+3)
	
	line	20
	movff	(pow@yi),(___lltoft@c)
	movff	(pow@yi+1),(___lltoft@c+1)
	movff	(pow@yi+2),(___lltoft@c+2)
	movff	(pow@yi+3),(___lltoft@c+3)
	call	___lltoft	;wreg free
	movlb	0	; () banked
	movf	((pow@y))&0ffh,w
	movlb	0	; () banked
xorwf	(0+?___lltoft)&0ffh,w
	bnz	u4330
	movlb	0	; () banked
movf	((pow@y+1))&0ffh,w
	movlb	0	; () banked
xorwf	(1+?___lltoft)&0ffh,w
	bnz	u4330
	movlb	0	; () banked
movf	((pow@y+2))&0ffh,w
	movlb	0	; () banked
xorwf	(2+?___lltoft)&0ffh,w
	btfsc	status,2
	goto	u4331
	goto	u4330

u4331:
	goto	l4166
u4330:
	line	21
	
l4162:; BSR set to: 0

	movlw	high(021h)
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(021h)
	movwf	((_errno))&0ffh
	line	22
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow+2))&0ffh

	goto	l1046
	
l4164:; BSR set to: 0

	goto	l1046
	line	23
	
l1049:; BSR set to: 0

	line	24
	
l4166:; BSR set to: 0

	movlb	0	; () banked
	movf	((pow@yi))&0ffh,w
	andlw	low(01h)
	movlb	0	; () banked
	movwf	((pow@sign))&0ffh
	line	25
	
l4168:; BSR set to: 0

	movff	(pow@x),(___ftneg@f1)
	movff	(pow@x+1),(___ftneg@f1+1)
	movff	(pow@x+2),(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(pow@x)
	movff	1+?___ftneg,(pow@x+1)
	movff	2+?___ftneg,(pow@x+2)
	goto	l4170
	line	26
	
l1048:
	line	27
	
l4170:
	movff	(pow@x),(log@x)
	movff	(pow@x+1),(log@x+1)
	movff	(pow@x+2),(log@x+2)
	call	_log	;wreg free
	movff	0+?_log,(_pow$978)
	movff	1+?_log,(_pow$978+1)
	movff	2+?_log,(_pow$978+2)
	
l4172:
	movff	(_pow$978),(___ftmul@f1)
	movff	(_pow$978+1),(___ftmul@f1+1)
	movff	(_pow$978+2),(___ftmul@f1+2)
	movff	(pow@y),(___ftmul@f2)
	movff	(pow@y+1),(___ftmul@f2+1)
	movff	(pow@y+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_pow$979)
	movff	1+?___ftmul,(_pow$979+1)
	movff	2+?___ftmul,(_pow$979+2)
	
l4174:
	movff	(_pow$979),(exp@x)
	movff	(_pow$979+1),(exp@x+1)
	movff	(_pow$979+2),(exp@x+2)
	call	_exp	;wreg free
	movff	0+?_exp,(pow@x)
	movff	1+?_exp,(pow@x+1)
	movff	2+?_exp,(pow@x+2)
	line	28
	
l4176:
	movlb	0	; () banked
	movf	((pow@sign))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u4341
	goto	u4340
u4341:
	goto	l1050
u4340:
	line	29
	
l4178:; BSR set to: 0

	movff	(pow@x),(___ftneg@f1)
	movff	(pow@x+1),(___ftneg@f1+1)
	movff	(pow@x+2),(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(?_pow)
	movff	1+?___ftneg,(?_pow+1)
	movff	2+?___ftneg,(?_pow+2)
	goto	l1046
	
l4180:
	goto	l1046
	
l1050:; BSR set to: 0

	line	30
	movff	(pow@x),(?_pow)
	movff	(pow@x+1),(?_pow+1)
	movff	(pow@x+2),(?_pow+2)
	line	31
	
l1046:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8315
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               3   66[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   69[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   66[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		_eval_poly
;;		_frexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\log.c"
	line	5
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:
;incstack = 0
	opt	stack 21
	line	24
	
l4042:
	movlb	0	; () banked
	btfsc	((log@x+2))&0ffh,7
	goto	u4170
	goto	u4171

u4171:
	goto	l4048
u4170:
	line	25
	
l4044:; BSR set to: 0

	movlw	high(021h)
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(021h)
	movwf	((_errno))&0ffh
	line	26
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_log))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_log+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_log+2))&0ffh

	goto	l1256
	
l4046:; BSR set to: 0

	goto	l1256
	line	27
	
l1255:; BSR set to: 0

	line	28
	
l4048:; BSR set to: 0

	movlb	0	; () banked
	movf	((log@x))&0ffh,w
	movlb	0	; () banked
iorwf	((log@x+1))&0ffh,w
	movlb	0	; () banked
iorwf	((log@x+2))&0ffh,w
	btfss	status,2
	goto	u4181
	goto	u4180

u4181:
	goto	l4054
u4180:
	line	29
	
l4050:; BSR set to: 0

	movlw	high(022h)
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(022h)
	movwf	((_errno))&0ffh
	line	30
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_log))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_log+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_log+2))&0ffh

	goto	l1256
	
l4052:; BSR set to: 0

	goto	l1256
	line	31
	
l1257:; BSR set to: 0

	line	32
	
l4054:; BSR set to: 0

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

		movlw	low(log@exponent)
	movlb	0	; () banked
	movwf	((frexp@eptr))&0ffh
	movlw	high(log@exponent)
	movlb	0	; () banked
	movwf	((frexp@eptr+1))&0ffh

	movff	(log@x),(frexp@value)
	movff	(log@x+1),(frexp@value+1)
	movff	(log@x+2),(frexp@value+2)
	call	_frexp	;wreg free
	movff	0+?_frexp,(___ftmul@f1)
	movff	1+?_frexp,(___ftmul@f1+1)
	movff	2+?_frexp,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	movlw	low(float24(-1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftadd@f2))&0ffh
	movlw	high(float24(-1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftadd@f2+1))&0ffh
	movlw	low highword(float24(-1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftadd@f2+2))&0ffh

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(log@x)
	movff	1+?___ftadd,(log@x+1)
	movff	2+?___ftadd,(log@x+2)
	line	33
	
l4056:
	movlb	0	; () banked
	decf	((log@exponent))&0ffh
	btfss	status,0
	decf	((log@exponent+1))&0ffh
	line	34
	
l4058:; BSR set to: 0

	movff	(log@x),(eval_poly@x)
	movff	(log@x+1),(eval_poly@x+1)
	movff	(log@x+2),(eval_poly@x+2)
		movlw	low(log@coeff)
	movlb	0	; () banked
	movwf	((eval_poly@d))&0ffh
	movlw	high(log@coeff)
	movlb	0	; () banked
	movwf	((eval_poly@d+1))&0ffh

	movlw	high(08h)
	movlb	0	; () banked
	movwf	((eval_poly@n+1))&0ffh
	movlw	low(08h)
	movwf	((eval_poly@n))&0ffh
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(log@x)
	movff	1+?_eval_poly,(log@x+1)
	movff	2+?_eval_poly,(log@x+2)
	line	35
	
l4060:
	movlw	low(float24(0.69314718055994995))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(0.69314718055994995))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(0.69314718055994995))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(log@exponent),(___awtoft@c)
	movff	(log@exponent+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	movff	(log@x),(___ftadd@f2)
	movff	(log@x+1),(___ftadd@f2+1)
	movff	(log@x+2),(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(?_log)
	movff	1+?___ftadd,(?_log+1)
	movff	2+?___ftadd,(?_log+2)
	goto	l1256
	
l4062:
	line	36
	
l1256:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
	signat	_log,4219
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\exp.c"
;; Parameters:    Size  Location     Type
;;  x               3   74[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  exponent        2   80[BANK0 ] int 
;;  sign            1   82[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   74[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		_eval_poly
;;		_floor
;;		_ldexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\exp.c"
	line	12
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:
;incstack = 0
	opt	stack 21
	line	31
	
l4064:
	movlb	0	; () banked
	movf	((exp@x))&0ffh,w
	movlb	0	; () banked
iorwf	((exp@x+1))&0ffh,w
	movlb	0	; () banked
iorwf	((exp@x+2))&0ffh,w
	btfss	status,2
	goto	u4191
	goto	u4190

u4191:
	goto	l4070
u4190:
	line	32
	
l4066:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp))&0ffh
	movlw	high(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp+1))&0ffh
	movlw	low highword(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp+2))&0ffh

	goto	l1214
	
l4068:; BSR set to: 0

	goto	l1214
	
l1213:; BSR set to: 0

	line	34
	
l4070:; BSR set to: 0

	movlw	low(float24(709.78271289338397))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(709.78271289338397))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(709.78271289338397))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movff	(exp@x),(___ftge@ff2)
	movff	(exp@x+1),(___ftge@ff2+1)
	movff	(exp@x+2),(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfsc	status,0
	goto	u4201
	goto	u4200
u4201:
	goto	l4076
u4200:
	line	35
	
l4072:; BSR set to: 0

	movlw	high(022h)
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(022h)
	movwf	((_errno))&0ffh
	line	36
	movlw	low(float24(3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_exp))&0ffh
	movlw	high(float24(3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_exp+1))&0ffh
	movlw	low highword(float24(3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_exp+2))&0ffh

	goto	l1214
	
l4074:; BSR set to: 0

	goto	l1214
	line	37
	
l1215:; BSR set to: 0

	line	38
	
l4076:; BSR set to: 0

	movff	(exp@x),(___ftge@ff1)
	movff	(exp@x+1),(___ftge@ff1+1)
	movff	(exp@x+2),(___ftge@ff1+2)
	movlw	low(float24(-745.13321910194111))
	movlb	0	; () banked
	movwf	((___ftge@ff2))&0ffh
	movlw	high(float24(-745.13321910194111))
	movlb	0	; () banked
	movwf	((___ftge@ff2+1))&0ffh
	movlw	low highword(float24(-745.13321910194111))
	movlb	0	; () banked
	movwf	((___ftge@ff2+2))&0ffh

	call	___ftge	;wreg free
	movlb	0	; () banked
	btfsc	status,0
	goto	u4211
	goto	u4210
u4211:
	goto	l4082
u4210:
	line	39
	
l4078:; BSR set to: 0

	movlw	high(022h)
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(022h)
	movwf	((_errno))&0ffh
	line	40
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp+2))&0ffh

	goto	l1214
	
l4080:; BSR set to: 0

	goto	l1214
	line	41
	
l1216:; BSR set to: 0

	line	43
	
l4082:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((exp@x+2))&0ffh,7
	goto	u4221
	goto	u4220

u4221:
	movlw	1
	goto	u4230
u4220:
	movlw	0
u4230:
	movlb	0	; () banked
	movwf	((exp@sign))&0ffh
	line	44
	
l4084:; BSR set to: 0

	movlb	0	; () banked
	movf	((exp@sign))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l1217
u4240:
	line	45
	
l4086:; BSR set to: 0

	movff	(exp@x),(___ftneg@f1)
	movff	(exp@x+1),(___ftneg@f1+1)
	movff	(exp@x+2),(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(exp@x)
	movff	1+?___ftneg,(exp@x+1)
	movff	2+?___ftneg,(exp@x+2)
	
l1217:
	line	46
	movff	(exp@x),(___ftmul@f1)
	movff	(exp@x+1),(___ftmul@f1+1)
	movff	(exp@x+2),(___ftmul@f1+2)
	movlw	low(float24(1.4426950408999999))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(1.4426950408999999))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(1.4426950408999999))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(exp@x)
	movff	1+?___ftmul,(exp@x+1)
	movff	2+?___ftmul,(exp@x+2)
	line	47
	
l4088:
	movff	(exp@x),(floor@x)
	movff	(exp@x+1),(floor@x+1)
	movff	(exp@x+2),(floor@x+2)
	call	_floor	;wreg free
	movff	0+?_floor,(_exp$980)
	movff	1+?_floor,(_exp$980+1)
	movff	2+?_floor,(_exp$980+2)
	
l4090:
	movff	(_exp$980),(___fttol@f1)
	movff	(_exp$980+1),(___fttol@f1+1)
	movff	(_exp$980+2),(___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(exp@exponent)
	movff	1+?___fttol,(exp@exponent+1)
	line	48
	
l4092:
	movff	(exp@x),(___ftsub@f1)
	movff	(exp@x+1),(___ftsub@f1+1)
	movff	(exp@x+2),(___ftsub@f1+2)
	movff	(exp@exponent),(___awtoft@c)
	movff	(exp@exponent+1),(___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftsub@f2)
	movff	1+?___awtoft,(___ftsub@f2+1)
	movff	2+?___awtoft,(___ftsub@f2+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(exp@x)
	movff	1+?___ftsub,(exp@x+1)
	movff	2+?___ftsub,(exp@x+2)
	line	49
	
l4094:
	movff	(exp@x),(eval_poly@x)
	movff	(exp@x+1),(eval_poly@x+1)
	movff	(exp@x+2),(eval_poly@x+2)
		movlw	low(exp@coeff)
	movlb	0	; () banked
	movwf	((eval_poly@d))&0ffh
	movlw	high(exp@coeff)
	movlb	0	; () banked
	movwf	((eval_poly@d+1))&0ffh

	movlw	high(09h)
	movlb	0	; () banked
	movwf	((eval_poly@n+1))&0ffh
	movlw	low(09h)
	movwf	((eval_poly@n))&0ffh
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(ldexp@value)
	movff	1+?_eval_poly,(ldexp@value+1)
	movff	2+?_eval_poly,(ldexp@value+2)
	movff	(exp@exponent),(ldexp@newexp)
	movff	(exp@exponent+1),(ldexp@newexp+1)
	call	_ldexp	;wreg free
	movff	0+?_ldexp,(exp@x)
	movff	1+?_ldexp,(exp@x+1)
	movff	2+?_ldexp,(exp@x+2)
	line	50
	
l4096:
	movlb	0	; () banked
	movf	((exp@sign))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u4251
	goto	u4250
u4251:
	goto	l1218
u4250:
	line	52
	
l4098:; BSR set to: 0

	movlb	0	; () banked
		incf	((exp@x))&0ffh,w
	bnz	u4261
	movlw	127
	movlb	0	; () banked
	xorwf	((exp@x+1))&0ffh,w
	bnz	u4261
	movlw	127
	movlb	0	; () banked
	xorwf	((exp@x+2))&0ffh,w
	btfss	status,2
	goto	u4261
	goto	u4260

u4261:
	goto	l4104
u4260:
	line	53
	
l4100:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp+2))&0ffh

	goto	l1214
	
l4102:; BSR set to: 0

	goto	l1214
	
l1219:; BSR set to: 0

	line	54
	
l4104:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f1))&0ffh
	movlw	high(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f1+1))&0ffh
	movlw	low highword(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f1+2))&0ffh

	movff	(exp@x),(___ftdiv@f2)
	movff	(exp@x+1),(___ftdiv@f2+1)
	movff	(exp@x+2),(___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(?_exp)
	movff	1+?___ftdiv,(?_exp+1)
	movff	2+?___ftdiv,(?_exp+2)
	goto	l1214
	
l4106:
	goto	l1214
	line	55
	
l1218:; BSR set to: 0

	line	56
	movff	(exp@x),(?_exp)
	movff	(exp@x+1),(?_exp+1)
	movff	(exp@x+2),(?_exp+2)
	line	57
	
l1214:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4219
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   66[BANK0 ] unsigned char 
;;  newexp          2   69[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   66[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       5       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\frexp.c"
	line	277
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:
;incstack = 0
	opt	stack 23
	line	279
	
l3050:
	movlb	0	; () banked
	movf	((ldexp@value))&0ffh,w
	movlb	0	; () banked
iorwf	((ldexp@value+1))&0ffh,w
	movlb	0	; () banked
iorwf	((ldexp@value+2))&0ffh,w
	btfss	status,2
	goto	u2711
	goto	u2710

u2711:
	goto	l3056
u2710:
	line	280
	
l3052:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_ldexp))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_ldexp+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_ldexp+2))&0ffh

	goto	l1238
	
l3054:; BSR set to: 0

	goto	l1238
	
l1237:; BSR set to: 0

	line	282
	
l3056:; BSR set to: 0

	movlb	0	; () banked
	movf	(0+(ldexp@value+02h))&0ffh,w
	andlw	(1<<7)-1
	movlb	0	; () banked
	movwf	(??_ldexp+0+0)&0ffh
	clrf	(??_ldexp+0+0+1)&0ffh

	bcf	status,0
	movlb	0	; () banked
	rlcf	(??_ldexp+0+0)&0ffh,f
	rlcf	(??_ldexp+0+1)&0ffh,f
	movlb	0	; () banked
	movf	(??_ldexp+0+0)&0ffh,w
	movlb	0	; () banked
	addwf	((ldexp@newexp))&0ffh
	movlb	0	; () banked
	movf	(??_ldexp+0+1)&0ffh,w
	movlb	0	; () banked
	addwfc	((ldexp@newexp+1))&0ffh

	line	283
	movlb	0	; () banked
	btfsc	(0+(ldexp@value+01h))&0ffh,7
	goto	u2721
	goto	u2720
u2721:
	movlb	0	; () banked
	clrf	(??_ldexp+0+0)&0ffh
	incf	(??_ldexp+0+0)&0ffh
	goto	u2728
u2720:
	movlb	0	; () banked
	clrf	(??_ldexp+0+0)&0ffh
u2728:
	movlb	0	; () banked
	movf	(??_ldexp+0+0)&0ffh,w
	movlb	0	; () banked
	addwf	((ldexp@newexp))&0ffh
	movlw	0
	addwfc	((ldexp@newexp+1))&0ffh
	line	287
	movlb	0	; () banked
	btfsc	((ldexp@newexp+1))&0ffh,7
	goto	u2730
	goto	u2731

u2731:
	goto	l3064
u2730:
	line	288
	
l3058:; BSR set to: 0

	movlw	high(022h)
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(022h)
	movwf	((_errno))&0ffh
	line	289
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_ldexp))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_ldexp+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_ldexp+2))&0ffh

	goto	l1238
	
l3060:; BSR set to: 0

	goto	l1238
	line	290
	
l3062:; BSR set to: 0

	goto	l3082
	line	291
	
l1239:; BSR set to: 0

	
l3064:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((ldexp@newexp+1))&0ffh,7
	goto	u2741
	movlb	0	; () banked
	decf	((ldexp@newexp+1))&0ffh,w
	btfss	status,0
	goto	u2741
	goto	u2740

u2741:
	goto	l3080
u2740:
	line	292
	
l3066:; BSR set to: 0

	movlw	high(022h)
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(022h)
	movwf	((_errno))&0ffh
	line	293
	
l3068:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((ldexp@value+2))&0ffh,7
	goto	u2750
	goto	u2751

u2751:
	goto	l3076
u2750:
	line	294
	
l3070:; BSR set to: 0

	movlw	low(float24(-3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_ldexp))&0ffh
	movlw	high(float24(-3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_ldexp+1))&0ffh
	movlw	low highword(float24(-3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_ldexp+2))&0ffh

	goto	l1238
	
l3072:; BSR set to: 0

	goto	l1238
	
l3074:; BSR set to: 0

	goto	l3082
	line	295
	
l1242:; BSR set to: 0

	line	296
	
l3076:; BSR set to: 0

	movlw	low(float24(3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_ldexp))&0ffh
	movlw	high(float24(3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_ldexp+1))&0ffh
	movlw	low highword(float24(3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_ldexp+2))&0ffh

	goto	l1238
	
l3078:; BSR set to: 0

	goto	l1238
	
l1243:; BSR set to: 0

	line	297
	goto	l3082
	line	298
	
l1241:; BSR set to: 0

	line	300
	
l3080:; BSR set to: 0

	movlb	0	; () banked
	rlcf	((ldexp@newexp+1))&0ffh,w
	rrcf	((ldexp@newexp+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_ldexp+0+0+1)&0ffh
	movlb	0	; () banked
	rrcf	((ldexp@newexp))&0ffh,w
	movlb	0	; () banked
	movwf	(??_ldexp+0+0)&0ffh
	movlb	0	; () banked
	movf	(0+(ldexp@value+02h))&0ffh,w
	movlb	0	; () banked
	xorwf	(??_ldexp+0+0)&0ffh,w
	andlw	not ((1<<7)-1)
	xorwf	(??_ldexp+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(ldexp@value+02h))&0ffh
	line	301
	movff	(ldexp@newexp),??_ldexp+0+0
	movlw	01h
	movlb	0	; () banked
	andwf	(??_ldexp+0+0)&0ffh
	movlb	0	; () banked
	rrcf	(??_ldexp+0+0)&0ffh
	rrcf	(??_ldexp+0+0)&0ffh
	movlb	0	; () banked
	movf	(0+(ldexp@value+01h))&0ffh,w
	movlb	0	; () banked
	xorwf	(??_ldexp+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(ldexp@value+01h))&0ffh
	goto	l3082
	line	305
	
l1244:; BSR set to: 0

	goto	l3082
	
l1240:; BSR set to: 0

	line	306
	
l3082:; BSR set to: 0

	movff	(ldexp@value),(?_ldexp)
	movff	(ldexp@value+1),(?_ldexp+1)
	movff	(ldexp@value+2),(?_ldexp+2)
	goto	l1238
	
l3084:; BSR set to: 0

	line	307
	
l1238:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8315
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   66[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               3   69[BANK0 ] int 
;;  expon           2   72[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   66[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___altoft
;;		___ftadd
;;		___ftge
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\floor.c"
	line	13
global __ptext8
__ptext8:
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:; BSR set to: 0

;incstack = 0
	opt	stack 21
	line	18
	
l4012:
	movff	(floor@x),(frexp@value)
	movff	(floor@x+1),(frexp@value+1)
	movff	(floor@x+2),(frexp@value+2)
		movlw	low(floor@expon)
	movlb	0	; () banked
	movwf	((frexp@eptr))&0ffh
	movlw	high(floor@expon)
	movlb	0	; () banked
	movwf	((frexp@eptr+1))&0ffh

	call	_frexp	;wreg free
	line	19
	
l4014:
	movlb	0	; () banked
	btfsc	((floor@expon+1))&0ffh,7
	goto	u4120
	goto	u4121

u4121:
	goto	l4026
u4120:
	line	20
	
l4016:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((floor@x+2))&0ffh,7
	goto	u4130
	goto	u4131

u4131:
	goto	l4022
u4130:
	line	21
	
l4018:; BSR set to: 0

	movlw	low(float24(-1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_floor))&0ffh
	movlw	high(float24(-1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_floor+1))&0ffh
	movlw	low highword(float24(-1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_floor+2))&0ffh

	goto	l1226
	
l4020:; BSR set to: 0

	goto	l1226
	
l1225:; BSR set to: 0

	line	22
	
l4022:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_floor))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_floor+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_floor+2))&0ffh

	goto	l1226
	
l4024:; BSR set to: 0

	goto	l1226
	line	23
	
l1224:; BSR set to: 0

	line	24
	
l4026:; BSR set to: 0

	movlb	0	; () banked
		movf	((floor@expon+1))&0ffh,w
	bnz	u4140
	movlw	21
	movlb	0	; () banked
	subwf	 ((floor@expon))&0ffh,w
	btfss	status,0
	goto	u4141
	goto	u4140

u4141:
	goto	l4030
u4140:
	line	25
	
l4028:; BSR set to: 0

	movff	(floor@x),(?_floor)
	movff	(floor@x+1),(?_floor+1)
	movff	(floor@x+2),(?_floor+2)
	goto	l1226
	
l1227:; BSR set to: 0

	line	26
	
l4030:; BSR set to: 0

	movff	(floor@x),(___fttol@f1)
	movff	(floor@x+1),(___fttol@f1+1)
	movff	(floor@x+2),(___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(___altoft@c)
	movff	1+?___fttol,(___altoft@c+1)
	movff	2+?___fttol,(___altoft@c+2)
	movff	3+?___fttol,(___altoft@c+3)
	
	call	___altoft	;wreg free
	movff	0+?___altoft,(floor@i)
	movff	1+?___altoft,(floor@i+1)
	movff	2+?___altoft,(floor@i+2)
	line	27
	movff	(floor@x),(___ftge@ff1)
	movff	(floor@x+1),(___ftge@ff1+1)
	movff	(floor@x+2),(___ftge@ff1+2)
	movff	(floor@i),(___ftge@ff2)
	movff	(floor@i+1),(___ftge@ff2+1)
	movff	(floor@i+2),(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfsc	status,0
	goto	u4151
	goto	u4150
u4151:
	goto	l1228
u4150:
	line	28
	
l4032:; BSR set to: 0

	movff	(floor@i),(___ftadd@f1)
	movff	(floor@i+1),(___ftadd@f1+1)
	movff	(floor@i+2),(___ftadd@f1+2)
	movlw	low(float24(-1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftadd@f2))&0ffh
	movlw	high(float24(-1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftadd@f2+1))&0ffh
	movlw	low highword(float24(-1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftadd@f2+2))&0ffh

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(?_floor)
	movff	1+?___ftadd,(?_floor+1)
	movff	2+?___ftadd,(?_floor+2)
	goto	l1226
	
l4034:
	goto	l1226
	
l1228:; BSR set to: 0

	line	29
	movff	(floor@i),(?_floor)
	movff	(floor@i+1),(?_floor+1)
	movff	(floor@i+2),(?_floor+2)
	line	30
	
l1226:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4219
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    0[BANK0 ] int 
;;  eptr            2    3[BANK0 ] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] PTR int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       5       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\frexp.c"
	line	254
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:
;incstack = 0
	opt	stack 23
	line	256
	
l2930:
	movlb	0	; () banked
	movf	((frexp@value))&0ffh,w
	movlb	0	; () banked
iorwf	((frexp@value+1))&0ffh,w
	movlb	0	; () banked
iorwf	((frexp@value+2))&0ffh,w
	btfss	status,2
	goto	u2561
	goto	u2560

u2561:
	goto	l2938
u2560:
	line	257
	
l2932:; BSR set to: 0

	movff	(frexp@eptr),fsr2l
	movff	(frexp@eptr+1),fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	258
	
l2934:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_frexp))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_frexp+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_frexp+2))&0ffh

	goto	l1234
	
l2936:; BSR set to: 0

	goto	l1234
	line	259
	
l1233:; BSR set to: 0

	line	261
	
l2938:; BSR set to: 0

	movlb	0	; () banked
	movf	(0+(frexp@value+02h))&0ffh,w
	andlw	(1<<7)-1
	movlb	0	; () banked
	movwf	(??_frexp+0+0)&0ffh
	clrf	(??_frexp+0+0+1)&0ffh

	bcf	status,0
	movlb	0	; () banked
	rlcf	(??_frexp+0+0)&0ffh,f
	rlcf	(??_frexp+0+1)&0ffh,f
	movff	(frexp@eptr),fsr2l
	movff	(frexp@eptr+1),fsr2h
	movff	??_frexp+0+0,postinc2
	movff	??_frexp+0+1,postdec2

	line	262
	movlb	0	; () banked
	btfsc	(0+(frexp@value+01h))&0ffh,7
	goto	u2571
	goto	u2570
u2571:
	movlb	0	; () banked
	clrf	(??_frexp+0+0)&0ffh
	incf	(??_frexp+0+0)&0ffh
	goto	u2578
u2570:
	movlb	0	; () banked
	clrf	(??_frexp+0+0)&0ffh
u2578:
	movlb	0	; () banked
	movf	(??_frexp+0+0)&0ffh,w
	movff	(frexp@eptr),fsr2l
	movff	(frexp@eptr+1),fsr2h
	iorwf	postinc2
	movlw	0
	iorwf	postdec2
	line	263
	
l2940:; BSR set to: 0

	movff	(frexp@eptr),fsr2l
	movff	(frexp@eptr+1),fsr2h
	movlw	low(-126)
	addwf	postinc2
	movlw	high(-126)
	addwfc	postdec2
	line	268
	
l2942:; BSR set to: 0

	movlb	0	; () banked
		
	bsf	(0+(frexp@value+02h))&0ffh, 0+0
	bsf	(0+(frexp@value+02h))&0ffh, 0+1
	bsf	(0+(frexp@value+02h))&0ffh, 0+2
	bsf	(0+(frexp@value+02h))&0ffh, 0+3
	bsf	(0+(frexp@value+02h))&0ffh, 0+4
	bsf	(0+(frexp@value+02h))&0ffh, 0+5
	bcf	(0+(frexp@value+02h))&0ffh, 0+6

	line	269
	
l2944:; BSR set to: 0

	movlb	0	; () banked
	bcf	(0+(frexp@value+01h))&0ffh,7
	line	273
	
l2946:; BSR set to: 0

	movff	(frexp@value),(?_frexp)
	movff	(frexp@value+1),(?_frexp+1)
	movff	(frexp@value+2),(?_frexp+2)
	goto	l1234
	
l2948:; BSR set to: 0

	line	274
	
l1234:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8315
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   10[BANK0 ] unsigned long 
;;  exp1            1   14[BANK0 ] unsigned char 
;;  sign1           1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ruoteRoutine
;;		_pow
;;		_exp
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\fttol.c"
	line	44
global __ptext10
__ptext10:
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:; BSR set to: 0

;incstack = 0
	opt	stack 22
	line	49
	
l2884:
	movff	(___fttol@f1+2),??___fttol+0+0
	movlb	0	; () banked
	clrf	(??___fttol+0+0+1)&0ffh
	clrf	(??___fttol+0+0+2)&0ffh
	movlb	0	; () banked
	rlcf	((___fttol@f1+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___fttol+0+0)&0ffh
	bnc	u2481
	bsf	(??___fttol+0+0+1)&0ffh,0
u2481:
	movlb	0	; () banked
	movf	(??___fttol+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___fttol@exp1))&0ffh
	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l2890
u2490:
	line	50
	
l2886:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((?___fttol))&0ffh
	movlw	high(0)
	movwf	((?___fttol+1))&0ffh
	movlw	low highword(0)
	movwf	((?___fttol+2))&0ffh
	movlw	high highword(0)
	movwf	((?___fttol+3))&0ffh
	goto	l921
	
l2888:; BSR set to: 0

	goto	l921
	
l920:; BSR set to: 0

	line	51
	
l2890:; BSR set to: 0

	movlw	(017h)&0ffh
	movlb	0	; () banked
	movwf	(??___fttol+0+0)&0ffh
	movff	(___fttol@f1),??___fttol+1+0
	movff	(___fttol@f1+1),??___fttol+1+0+1
	movff	(___fttol@f1+2),??___fttol+1+0+2
	movlb	0	; () banked
	incf	((??___fttol+0+0))&0ffh,w
	movlb	0	; () banked
	movwf	(??___fttol+4+0)&0ffh
	goto	u2500
u2505:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??___fttol+1+2)&0ffh
	rrcf	(??___fttol+1+1)&0ffh
	rrcf	(??___fttol+1+0)&0ffh
u2500:
	movlb	0	; () banked
	decfsz	(??___fttol+4+0)&0ffh
	goto	u2505
	movlb	0	; () banked
	movf	(??___fttol+1+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___fttol@sign1))&0ffh
	line	52
	
l2892:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(15/8)+(___fttol@f1))&0ffh,(15)&7
	line	53
	
l2894:; BSR set to: 0

	movlw	low(0FFFFh)
	movlb	0	; () banked
	andwf	((___fttol@f1))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	andwf	((___fttol@f1+1))&0ffh
	movlw	low highword(0FFFFh)
	movlb	0	; () banked
	andwf	((___fttol@f1+2))&0ffh

	line	54
	
l2896:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@f1))&0ffh,w
	movlb	0	; () banked
	movwf	((___fttol@lval))&0ffh
	movlb	0	; () banked
	movf	((___fttol@f1+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((___fttol@lval))&0ffh
	
	movlb	0	; () banked
	movf	((___fttol@f1+2))&0ffh,w
	movlb	0	; () banked
	movwf	2+((___fttol@lval))&0ffh
	
	movlb	0	; () banked
	clrf	3+((___fttol@lval))&0ffh
	line	55
	
l2898:; BSR set to: 0

	movlw	(08Eh)&0ffh
	movlb	0	; () banked
	subwf	((___fttol@exp1))&0ffh
	line	56
	
l2900:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((___fttol@exp1))&0ffh,7
	goto	u2510
	goto	u2511

u2511:
	goto	l2912
u2510:
	line	57
	
l2902:; BSR set to: 0

	movlb	0	; () banked
		movf	((___fttol@exp1))&0ffh,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u2521
	goto	u2520

u2521:
	goto	l2908
u2520:
	line	58
	
l2904:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((?___fttol))&0ffh
	movlw	high(0)
	movwf	((?___fttol+1))&0ffh
	movlw	low highword(0)
	movwf	((?___fttol+2))&0ffh
	movlw	high highword(0)
	movwf	((?___fttol+3))&0ffh
	goto	l921
	
l2906:; BSR set to: 0

	goto	l921
	
l923:; BSR set to: 0

	goto	l2908
	line	59
	
l924:; BSR set to: 0

	line	60
	
l2908:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___fttol@lval+3))&0ffh
	rrcf	((___fttol@lval+2))&0ffh
	rrcf	((___fttol@lval+1))&0ffh
	rrcf	((___fttol@lval))&0ffh
	line	61
	
l2910:; BSR set to: 0

	movlb	0	; () banked
	incfsz	((___fttol@exp1))&0ffh
	
	goto	l2908
	goto	l2922
	
l925:; BSR set to: 0

	line	62
	goto	l2922
	
l922:; BSR set to: 0

	line	63
	
l2912:; BSR set to: 0

		movlw	018h-1
	movlb	0	; () banked
	cpfsgt	((___fttol@exp1))&0ffh
	goto	u2531
	goto	u2530

u2531:
	goto	l2920
u2530:
	line	64
	
l2914:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((?___fttol))&0ffh
	movlw	high(0)
	movwf	((?___fttol+1))&0ffh
	movlw	low highword(0)
	movwf	((?___fttol+2))&0ffh
	movlw	high highword(0)
	movwf	((?___fttol+3))&0ffh
	goto	l921
	
l2916:; BSR set to: 0

	goto	l921
	
l927:; BSR set to: 0

	line	65
	goto	l2920
	
l929:; BSR set to: 0

	line	66
	
l2918:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___fttol@lval))&0ffh
	rlcf	((___fttol@lval+1))&0ffh
	rlcf	((___fttol@lval+2))&0ffh
	rlcf	((___fttol@lval+3))&0ffh
	line	67
	movlb	0	; () banked
	decf	((___fttol@exp1))&0ffh
	goto	l2920
	line	68
	
l928:; BSR set to: 0

	line	65
	
l2920:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	movlb	0	; () banked
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l2918
u2540:
	goto	l2922
	
l930:; BSR set to: 0

	goto	l2922
	line	69
	
l926:; BSR set to: 0

	line	70
	
l2922:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@sign1))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l2926
u2550:
	line	71
	
l2924:; BSR set to: 0

	movlb	0	; () banked
	comf	((___fttol@lval+3))&0ffh
	comf	((___fttol@lval+2))&0ffh
	comf	((___fttol@lval+1))&0ffh
	negf	((___fttol@lval))&0ffh
	movlw	0
	addwfc	((___fttol@lval+1))&0ffh
	addwfc	((___fttol@lval+2))&0ffh
	addwfc	((___fttol@lval+3))&0ffh
	goto	l2926
	
l931:; BSR set to: 0

	line	72
	
l2926:; BSR set to: 0

	movff	(___fttol@lval),(?___fttol)
	movff	(___fttol@lval+1),(?___fttol+1)
	movff	(___fttol@lval+2),(?___fttol+2)
	movff	(___fttol@lval+3),(?___fttol+3)
	goto	l921
	
l2928:; BSR set to: 0

	line	73
	
l921:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___altoft

;; *************** function ___altoft *****************
;; Defined at:
;;		line 42 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   15[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   24[BANK0 ] unsigned char 
;;  exp             1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   15[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0
;;      Totals:         0      10       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\altoft.c"
	line	42
global __ptext11
__ptext11:
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\altoft.c"
	line	42
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:; BSR set to: 0

;incstack = 0
	opt	stack 21
	line	45
	
l2732:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((___altoft@sign))&0ffh
	line	46
	movlw	low(08Eh)
	movlb	0	; () banked
	movwf	((___altoft@exp))&0ffh
	line	47
	
l2734:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((___altoft@c+3))&0ffh,7
	goto	u2160
	goto	u2161

u2161:
	goto	l2742
u2160:
	line	48
	
l2736:; BSR set to: 0

	movlb	0	; () banked
	comf	((___altoft@c+3))&0ffh
	comf	((___altoft@c+2))&0ffh
	comf	((___altoft@c+1))&0ffh
	negf	((___altoft@c))&0ffh
	movlw	0
	addwfc	((___altoft@c+1))&0ffh
	addwfc	((___altoft@c+2))&0ffh
	addwfc	((___altoft@c+3))&0ffh
	line	49
	
l2738:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((___altoft@sign))&0ffh
	goto	l2742
	line	50
	
l661:; BSR set to: 0

	line	52
	goto	l2742
	
l663:; BSR set to: 0

	line	53
	
l2740:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___altoft@c+3))&0ffh
	rrcf	((___altoft@c+2))&0ffh
	rrcf	((___altoft@c+1))&0ffh
	rrcf	((___altoft@c))&0ffh
	line	54
	movlb	0	; () banked
	incf	((___altoft@exp))&0ffh
	goto	l2742
	line	55
	
l662:; BSR set to: 0

	line	52
	
l2742:; BSR set to: 0

	movlw	0
	movlb	0	; () banked
	andwf	((___altoft@c))&0ffh,w
	movlb	0	; () banked
	movwf	(??___altoft+0+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	((___altoft@c+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(??___altoft+0+0)&0ffh
	
	movlw	0
	movlb	0	; () banked
	andwf	((___altoft@c+2))&0ffh,w
	movlb	0	; () banked
	movwf	2+(??___altoft+0+0)&0ffh
	
	movlw	0FFh
	movlb	0	; () banked
	andwf	((___altoft@c+3))&0ffh,w
	movlb	0	; () banked
	movwf	3+(??___altoft+0+0)&0ffh
	movlb	0	; () banked
	movf	(??___altoft+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??___altoft+0+1)&0ffh,w
	movlb	0	; () banked
iorwf	(??___altoft+0+2)&0ffh,w
	movlb	0	; () banked
iorwf	(??___altoft+0+3)&0ffh,w
	btfss	status,2
	goto	u2171
	goto	u2170

u2171:
	goto	l2740
u2170:
	goto	l2744
	
l664:; BSR set to: 0

	line	56
	
l2744:; BSR set to: 0

	movff	(___altoft@c),(___ftpack@arg)
	movff	(___altoft@c+1),(___ftpack@arg+1)
	movff	(___altoft@c+2),(___ftpack@arg+2)
	movff	(___altoft@exp),(___ftpack@exp)
	movff	(___altoft@sign),(___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(?___altoft)
	movff	1+?___ftpack,(?___altoft+1)
	movff	2+?___ftpack,(?___altoft+2)
	goto	l665
	
l2746:
	line	57
	
l665:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
	signat	___altoft,4219
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 20 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f1              3   54[BANK0 ] float 
;;  f2              3   57[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   54[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sqrt
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftsub.c"
	line	20
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftsub.c"
	line	20
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:
;incstack = 0
	opt	stack 22
	line	23
	
l3982:
	movlb	0	; () banked
	movf	((___ftsub@f2))&0ffh,w
	movlb	0	; () banked
iorwf	((___ftsub@f2+1))&0ffh,w
	movlb	0	; () banked
iorwf	((___ftsub@f2+2))&0ffh,w
	btfsc	status,2
	goto	u4081
	goto	u4080

u4081:
	goto	l3986
u4080:
	line	24
	
l3984:; BSR set to: 0

	movlw	low(0800000h)
	movlb	0	; () banked
	xorwf	((___ftsub@f2))&0ffh
	movlw	high(0800000h)
	movlb	0	; () banked
	xorwf	((___ftsub@f2+1))&0ffh
	movlw	low highword(0800000h)
	movlb	0	; () banked
	xorwf	((___ftsub@f2+2))&0ffh

	goto	l3986
	line	25
	
l916:; BSR set to: 0

	line	26
	
l3986:; BSR set to: 0

	movff	(___ftsub@f1),(___ftadd@f1)
	movff	(___ftsub@f1+1),(___ftadd@f1+1)
	movff	(___ftsub@f1+2),(___ftadd@f1+2)
	movff	(___ftsub@f2),(___ftadd@f2)
	movff	(___ftsub@f2+1),(___ftadd@f2+1)
	movff	(___ftsub@f2+2),(___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(?___ftsub)
	movff	1+?___ftadd,(?___ftsub+1)
	movff	2+?___ftadd,(?___ftsub+2)
	goto	l917
	
l3988:
	line	27
	
l917:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ruoteRoutine
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\awtoft.c"
	line	32
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	opt	stack 22
	line	36
	
l3996:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((___awtoft@sign))&0ffh
	line	37
	
l3998:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((___awtoft@c+1))&0ffh,7
	goto	u4100
	goto	u4101

u4101:
	goto	l4004
u4100:
	line	38
	
l4000:; BSR set to: 0

	movlb	0	; () banked
	negf	((___awtoft@c))&0ffh
	comf	((___awtoft@c+1))&0ffh
	btfsc	status,0
	incf	((___awtoft@c+1))&0ffh
	line	39
	
l4002:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((___awtoft@sign))&0ffh
	goto	l4004
	line	40
	
l791:; BSR set to: 0

	line	41
	
l4004:; BSR set to: 0

	movff	(___awtoft@c),(___ftpack@arg)
	movff	(___awtoft@c+1),(___ftpack@arg+1)
	movlb	0	; () banked
	clrf	((___ftpack@arg+2))&0ffh
	movlw	low(08Eh)
	movlb	0	; () banked
	movwf	((___ftpack@exp))&0ffh
	movff	(___awtoft@sign),(___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(?___awtoft)
	movff	1+?___ftpack,(?___awtoft+1)
	movff	2+?___ftpack,(?___awtoft+2)
	goto	l792
	
l4006:
	line	42
	
l792:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\lltoft.c"
	line	35
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:
;incstack = 0
	opt	stack 23
	line	38
	
l3092:
	movlw	low(08Eh)
	movlb	0	; () banked
	movwf	((___lltoft@exp))&0ffh
	line	41
	goto	l3096
	
l983:; BSR set to: 0

	line	42
	
l3094:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___lltoft@c+3))&0ffh
	rrcf	((___lltoft@c+2))&0ffh
	rrcf	((___lltoft@c+1))&0ffh
	rrcf	((___lltoft@c))&0ffh
	line	43
	movlb	0	; () banked
	incf	((___lltoft@exp))&0ffh
	goto	l3096
	line	44
	
l982:; BSR set to: 0

	line	41
	
l3096:; BSR set to: 0

	movlw	0
	movlb	0	; () banked
	andwf	((___lltoft@c))&0ffh,w
	movlb	0	; () banked
	movwf	(??___lltoft+0+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	((___lltoft@c+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(??___lltoft+0+0)&0ffh
	
	movlw	0
	movlb	0	; () banked
	andwf	((___lltoft@c+2))&0ffh,w
	movlb	0	; () banked
	movwf	2+(??___lltoft+0+0)&0ffh
	
	movlw	0FFh
	movlb	0	; () banked
	andwf	((___lltoft@c+3))&0ffh,w
	movlb	0	; () banked
	movwf	3+(??___lltoft+0+0)&0ffh
	movlb	0	; () banked
	movf	(??___lltoft+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??___lltoft+0+1)&0ffh,w
	movlb	0	; () banked
iorwf	(??___lltoft+0+2)&0ffh,w
	movlb	0	; () banked
iorwf	(??___lltoft+0+3)&0ffh,w
	btfss	status,2
	goto	u2771
	goto	u2770

u2771:
	goto	l3094
u2770:
	goto	l3098
	
l984:; BSR set to: 0

	line	45
	
l3098:; BSR set to: 0

	movff	(___lltoft@c),(___ftpack@arg)
	movff	(___lltoft@c+1),(___ftpack@arg+1)
	movff	(___lltoft@c+2),(___ftpack@arg+2)
	movff	(___lltoft@exp),(___ftpack@exp)
	movlw	low(0)
	movlb	0	; () banked
	movwf	((___ftpack@sign))&0ffh
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(?___lltoft)
	movff	1+?___ftpack,(?___lltoft+1)
	movff	2+?___ftpack,(?___lltoft+2)
	goto	l985
	
l3100:
	line	46
	
l985:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	_atan

;; *************** function _atan *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\atan.c"
;; Parameters:    Size  Location     Type
;;  f               3   66[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  val             3   79[BANK0 ] float 
;;  val_squared     3   76[BANK0 ] float 
;;  x               3   72[BANK0 ] float 
;;  y               3   69[BANK0 ] float 
;;  recip           1   75[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   66[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0      13       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      16       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		_eval_poly
;;		_fabs
;; This function is called by:
;;		_ruoteRoutine
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\atan.c"
	line	8
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\atan.c"
	line	8
	global	__size_of_atan
	__size_of_atan	equ	__end_of_atan-_atan
	
_atan:
;incstack = 0
	opt	stack 22
	line	30
	
l4216:
	movff	(atan@f),(fabs@d)
	movff	(atan@f+1),(fabs@d+1)
	movff	(atan@f+2),(fabs@d+2)
	call	_fabs	;wreg free
	movff	0+?_fabs,(atan@val)
	movff	1+?_fabs,(atan@val+1)
	movff	2+?_fabs,(atan@val+2)
	movlb	0	; () banked
	movf	((atan@val))&0ffh,w
	movlb	0	; () banked
iorwf	((atan@val+1))&0ffh,w
	movlb	0	; () banked
iorwf	((atan@val+2))&0ffh,w
	btfss	status,2
	goto	u4371
	goto	u4370

u4371:
	goto	l4222
u4370:
	line	31
	
l4218:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_atan))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_atan+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_atan+2))&0ffh

	goto	l722
	
l4220:; BSR set to: 0

	goto	l722
	
l721:; BSR set to: 0

	line	32
	
l4222:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movff	(atan@val),(___ftge@ff2)
	movff	(atan@val+1),(___ftge@ff2+1)
	movff	(atan@val+2),(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u4381
	goto	u4380
u4381:
	movlw	1
	goto	u4390
u4380:
	movlw	0
u4390:
	movlb	0	; () banked
	movwf	((atan@recip))&0ffh
	movlb	0	; () banked
	movf	((atan@recip))&0ffh,w
	btfsc	status,2
	goto	u4401
	goto	u4400
u4401:
	goto	l723
u4400:
	line	33
	
l4224:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f1))&0ffh
	movlw	high(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f1+1))&0ffh
	movlw	low highword(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f1+2))&0ffh

	movff	(atan@val),(___ftdiv@f2)
	movff	(atan@val+1),(___ftdiv@f2+1)
	movff	(atan@val+2),(___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(atan@val)
	movff	1+?___ftdiv,(atan@val+1)
	movff	2+?___ftdiv,(atan@val+2)
	
l723:
	line	34
	movff	(atan@val),(___ftmul@f1)
	movff	(atan@val+1),(___ftmul@f1+1)
	movff	(atan@val+2),(___ftmul@f1+2)
	movff	(atan@val),(___ftmul@f2)
	movff	(atan@val+1),(___ftmul@f2+1)
	movff	(atan@val+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(atan@val_squared)
	movff	1+?___ftmul,(atan@val_squared+1)
	movff	2+?___ftmul,(atan@val_squared+2)
	line	35
	
l4226:
	movff	(atan@val_squared),(eval_poly@x)
	movff	(atan@val_squared+1),(eval_poly@x+1)
	movff	(atan@val_squared+2),(eval_poly@x+2)
		movlw	low(atan@coeff_b)
	movlb	0	; () banked
	movwf	((eval_poly@d))&0ffh
	movlw	high(atan@coeff_b)
	movlb	0	; () banked
	movwf	((eval_poly@d+1))&0ffh

	movlw	high(04h)
	movlb	0	; () banked
	movwf	((eval_poly@n+1))&0ffh
	movlw	low(04h)
	movwf	((eval_poly@n))&0ffh
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(atan@y)
	movff	1+?_eval_poly,(atan@y+1)
	movff	2+?_eval_poly,(atan@y+2)
	line	36
	
l4228:
	movff	(atan@val_squared),(eval_poly@x)
	movff	(atan@val_squared+1),(eval_poly@x+1)
	movff	(atan@val_squared+2),(eval_poly@x+2)
		movlw	low(atan@coeff_a)
	movlb	0	; () banked
	movwf	((eval_poly@d))&0ffh
	movlw	high(atan@coeff_a)
	movlb	0	; () banked
	movwf	((eval_poly@d+1))&0ffh

	movlw	high(05h)
	movlb	0	; () banked
	movwf	((eval_poly@n+1))&0ffh
	movlw	low(05h)
	movwf	((eval_poly@n))&0ffh
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(atan@x)
	movff	1+?_eval_poly,(atan@x+1)
	movff	2+?_eval_poly,(atan@x+2)
	line	37
	movff	(atan@val),(___ftmul@f1)
	movff	(atan@val+1),(___ftmul@f1+1)
	movff	(atan@val+2),(___ftmul@f1+2)
	movff	(atan@y),(___ftdiv@f2)
	movff	(atan@y+1),(___ftdiv@f2+1)
	movff	(atan@y+2),(___ftdiv@f2+2)
	movff	(atan@x),(___ftdiv@f1)
	movff	(atan@x+1),(___ftdiv@f1+1)
	movff	(atan@x+2),(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftmul@f2)
	movff	1+?___ftdiv,(___ftmul@f2+1)
	movff	2+?___ftdiv,(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(atan@val)
	movff	1+?___ftmul,(atan@val+1)
	movff	2+?___ftmul,(atan@val+2)
	line	38
	
l4230:
	movlb	0	; () banked
	movf	((atan@recip))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u4411
	goto	u4410
u4411:
	goto	l4234
u4410:
	line	39
	
l4232:; BSR set to: 0

	movff	(atan@val),(___ftneg@f1)
	movff	(atan@val+1),(___ftneg@f1+1)
	movff	(atan@val+2),(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(___ftadd@f1)
	movff	1+?___ftneg,(___ftadd@f1+1)
	movff	2+?___ftneg,(___ftadd@f1+2)
	movlw	low(float24(1.5707963267948950))
	movlb	0	; () banked
	movwf	((___ftadd@f2))&0ffh
	movlw	high(float24(1.5707963267948950))
	movlb	0	; () banked
	movwf	((___ftadd@f2+1))&0ffh
	movlw	low highword(float24(1.5707963267948950))
	movlb	0	; () banked
	movwf	((___ftadd@f2+2))&0ffh

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(atan@val)
	movff	1+?___ftadd,(atan@val+1)
	movff	2+?___ftadd,(atan@val+2)
	goto	l4234
	
l724:
	line	40
	
l4234:
	movlb	0	; () banked
	btfsc	((atan@f+2))&0ffh,7
	goto	u4421
	goto	u4420

u4421:
	goto	l4238
u4420:
	
l4236:; BSR set to: 0

	movff	(atan@val),(?_atan)
	movff	(atan@val+1),(?_atan+1)
	movff	(atan@val+2),(?_atan+2)
	goto	l722
	
l726:; BSR set to: 0

	
l4238:; BSR set to: 0

	movff	(atan@val),(___ftneg@f1)
	movff	(atan@val+1),(___ftneg@f1+1)
	movff	(atan@val+2),(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(?_atan)
	movff	1+?___ftneg,(?_atan+1)
	movff	2+?___ftneg,(?_atan+2)
	goto	l722
	
l728:
	goto	l722
	
l4240:
	line	41
	
l722:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_atan
	__end_of_atan:
	signat	_atan,4219
	global	_fabs

;; *************** function _fabs *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\fabs.c"
;; Parameters:    Size  Location     Type
;;  d               3   57[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   57[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftneg
;; This function is called by:
;;		_atan
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\fabs.c"
	line	4
global __ptext16
__ptext16:
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\fabs.c"
	line	4
	global	__size_of_fabs
	__size_of_fabs	equ	__end_of_fabs-_fabs
	
_fabs:
;incstack = 0
	opt	stack 23
	line	6
	
l4036:
	movlb	0	; () banked
	btfsc	((fabs@d+2))&0ffh,7
	goto	u4160
	goto	u4161

u4161:
	goto	l801
u4160:
	line	7
	
l4038:; BSR set to: 0

	movff	(fabs@d),(___ftneg@f1)
	movff	(fabs@d+1),(___ftneg@f1+1)
	movff	(fabs@d+2),(___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(?_fabs)
	movff	1+?___ftneg,(?_fabs+1)
	movff	2+?___ftneg,(?_fabs+2)
	goto	l802
	
l4040:
	goto	l802
	
l801:; BSR set to: 0

	line	8
	movff	(fabs@d),(?_fabs)
	movff	(fabs@d+1),(?_fabs+1)
	movff	(fabs@d+2),(?_fabs+2)
	line	9
	
l802:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_fabs
	__end_of_fabs:
	signat	_fabs,4219
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3   54[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   54[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ruoteRoutine
;;		_atan
;;		_fabs
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftneg.c"
	line	15
global __ptext17
__ptext17:
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:
;incstack = 0
	opt	stack 23
	line	17
	
l4008:
	movlb	0	; () banked
	movf	((___ftneg@f1))&0ffh,w
	movlb	0	; () banked
iorwf	((___ftneg@f1+1))&0ffh,w
	movlb	0	; () banked
iorwf	((___ftneg@f1+2))&0ffh,w
	btfsc	status,2
	goto	u4111
	goto	u4110

u4111:
	goto	l910
u4110:
	line	18
	
l4010:; BSR set to: 0

	movlw	low(0800000h)
	movlb	0	; () banked
	xorwf	((___ftneg@f1))&0ffh
	movlw	high(0800000h)
	movlb	0	; () banked
	xorwf	((___ftneg@f1+1))&0ffh
	movlw	low highword(0800000h)
	movlb	0	; () banked
	xorwf	((___ftneg@f1+2))&0ffh

	
l910:; BSR set to: 0

	line	19
	movff	(___ftneg@f1),(?___ftneg)
	movff	(___ftneg@f1+1),(?___ftneg+1)
	movff	(___ftneg@f1+2),(?___ftneg+2)
	line	20
	
l911:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   54[BANK0 ] float 
;;  d               2   57[BANK0 ] PTR const 
;;		 -> log@coeff(27), exp@coeff(30), atan@coeff_a(18), atan@coeff_b(15), 
;;  n               2   59[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             3   63[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   54[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       7       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0      12       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___ftadd
;;		___ftmul
;;		___wmul
;; This function is called by:
;;		_atan
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\evalpoly.c"
	line	4
global __ptext18
__ptext18:
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:; BSR set to: 0

;incstack = 0
	opt	stack 21
	line	8
	
l3990:
	movff	(eval_poly@n),(___wmul@multiplier)
	movff	(eval_poly@n+1),(___wmul@multiplier+1)
	movlw	high(03h)
	movlb	0	; () banked
	movwf	((___wmul@multiplicand+1))&0ffh
	movlw	low(03h)
	movwf	((___wmul@multiplicand))&0ffh
	call	___wmul	;wreg free
	movff	(eval_poly@d),??_eval_poly+0+0
	movff	(eval_poly@d+1),??_eval_poly+0+0+1
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___wmul)&0ffh,w
	movlb	0	; () banked
	addwf	(??_eval_poly+0+0)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(1+?___wmul)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_eval_poly+0+1)&0ffh
	movff	??_eval_poly+0+0,tblptrl
	movff	??_eval_poly+0+1,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(eval_poly@res)
	tblrd*+
	
	movff	tablat,(eval_poly@res+1)
	tblrd*-
	
	movff	tablat,(eval_poly@res+2)

	line	9
	goto	l3994
	
l796:; BSR set to: 0

	line	10
	
l3992:; BSR set to: 0

	movff	(eval_poly@res),(___ftmul@f2)
	movff	(eval_poly@res+1),(___ftmul@f2+1)
	movff	(eval_poly@res+2),(___ftmul@f2+2)
	movff	(eval_poly@x),(___ftmul@f1)
	movff	(eval_poly@x+1),(___ftmul@f1+1)
	movff	(eval_poly@x+2),(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftadd@f1)
	movff	1+?___ftmul,(___ftadd@f1+1)
	movff	2+?___ftmul,(___ftadd@f1+2)
	movlw	high(03h)
	movlb	0	; () banked
	movwf	((___wmul@multiplicand+1))&0ffh
	movlw	low(03h)
	movwf	((___wmul@multiplicand))&0ffh
	movlb	0	; () banked
	decf	((eval_poly@n))&0ffh
	btfss	status,0
	decf	((eval_poly@n+1))&0ffh
	movff	(eval_poly@n),(___wmul@multiplier)
	movff	(eval_poly@n+1),(___wmul@multiplier+1)
	call	___wmul	;wreg free
	movff	(eval_poly@d),??_eval_poly+0+0
	movff	(eval_poly@d+1),??_eval_poly+0+0+1
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___wmul)&0ffh,w
	movlb	0	; () banked
	addwf	(??_eval_poly+0+0)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(1+?___wmul)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_eval_poly+0+1)&0ffh
	movff	??_eval_poly+0+0,tblptrl
	movff	??_eval_poly+0+1,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftadd@f2)
	tblrd*+
	
	movff	tablat,(___ftadd@f2+1)
	tblrd*-
	
	movff	tablat,(___ftadd@f2+2)

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(eval_poly@res)
	movff	1+?___ftadd,(eval_poly@res+1)
	movff	2+?___ftadd,(eval_poly@res+2)
	goto	l3994
	
l795:
	line	9
	
l3994:
	movlb	0	; () banked
	movf	((eval_poly@n))&0ffh,w
	movlb	0	; () banked
iorwf	((eval_poly@n+1))&0ffh,w
	btfss	status,2
	goto	u4091
	goto	u4090

u4091:
	goto	l3992
u4090:
	
l797:; BSR set to: 0

	line	11
	movff	(eval_poly@res),(?_eval_poly)
	movff	(eval_poly@res+1),(?_eval_poly+1)
	movff	(eval_poly@res+2),(?_eval_poly+2)
	line	12
	
l798:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12411
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\Umul16.c"
	line	15
global __ptext19
__ptext19:
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:; BSR set to: 0

;incstack = 0
	opt	stack 22
	line	37
	
l3976:
	movlb	0	; () banked
	movf	((___wmul@multiplier))&0ffh,w
	movlb	0	; () banked
	mulwf	((___wmul@multiplicand))&0ffh
	movff	prodl,(___wmul@product)
	movff	prodh,(___wmul@product+1)
	line	38
	movlb	0	; () banked
	movf	((___wmul@multiplier))&0ffh,w
	movlb	0	; () banked
	mulwf	(0+(___wmul@multiplicand+01h))&0ffh
	movf	(prodl),c,w
	movlb	0	; () banked
	addwf	((___wmul@product+1))&0ffh

	line	39
	movlb	0	; () banked
	movf	(0+(___wmul@multiplier+01h))&0ffh,w
	movlb	0	; () banked
	mulwf	((___wmul@multiplicand))&0ffh
	movf	(prodl),c,w
	movlb	0	; () banked
	addwf	((___wmul@product+1))&0ffh

	line	52
	
l3978:; BSR set to: 0

	movff	(___wmul@product),(?___wmul)
	movff	(___wmul@product+1),(?___wmul+1)
	goto	l580
	
l3980:; BSR set to: 0

	line	53
	
l580:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   12[BANK0 ] float 
;;  f2              3   15[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   22[BANK0 ] unsigned um
;;  sign            1   26[BANK0 ] unsigned char 
;;  cntr            1   25[BANK0 ] unsigned char 
;;  exp             1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   12[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ruoteRoutine
;;		_atan
;;		_eval_poly
;;		_pow
;;		_sqrt
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftmul.c"
	line	62
global __ptext20
__ptext20:
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:; BSR set to: 0

;incstack = 0
	opt	stack 23
	line	67
	
l2818:
	movff	(___ftmul@f1+2),??___ftmul+0+0
	movlb	0	; () banked
	clrf	(??___ftmul+0+0+1)&0ffh
	clrf	(??___ftmul+0+0+2)&0ffh
	movlb	0	; () banked
	rlcf	((___ftmul@f1+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___ftmul+0+0)&0ffh
	bnc	u2391
	bsf	(??___ftmul+0+0+1)&0ffh,0
u2391:
	movlb	0	; () banked
	movf	(??___ftmul+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftmul@exp))&0ffh
	movlb	0	; () banked
	movf	((___ftmul@exp))&0ffh,w
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l2824
u2400:
	line	68
	
l2820:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftmul))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftmul+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftmul+2))&0ffh

	goto	l900
	
l2822:; BSR set to: 0

	goto	l900
	
l899:; BSR set to: 0

	line	69
	
l2824:; BSR set to: 0

	movff	(___ftmul@f2+2),??___ftmul+0+0
	movlb	0	; () banked
	clrf	(??___ftmul+0+0+1)&0ffh
	clrf	(??___ftmul+0+0+2)&0ffh
	movlb	0	; () banked
	rlcf	((___ftmul@f2+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___ftmul+0+0)&0ffh
	bnc	u2411
	bsf	(??___ftmul+0+0+1)&0ffh,0
u2411:
	movlb	0	; () banked
	movf	(??___ftmul+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftmul@sign))&0ffh
	movlb	0	; () banked
	movf	((___ftmul@sign))&0ffh,w
	btfss	status,2
	goto	u2421
	goto	u2420
u2421:
	goto	l2830
u2420:
	line	70
	
l2826:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftmul))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftmul+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftmul+2))&0ffh

	goto	l900
	
l2828:; BSR set to: 0

	goto	l900
	
l901:; BSR set to: 0

	line	71
	
l2830:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftmul@sign))&0ffh,w
	addlw	low(07Bh)
	movlb	0	; () banked
	addwf	((___ftmul@exp))&0ffh
	line	72
	
l2832:; BSR set to: 0

	movff	0+2+(___ftmul@f1),(___ftmul@sign)
	line	73
	movlb	0	; () banked
	movf	(0+2+(___ftmul@f2))&0ffh,w
	movlb	0	; () banked
	xorwf	((___ftmul@sign))&0ffh
	line	74
	movlw	(080h)&0ffh
	movlb	0	; () banked
	andwf	((___ftmul@sign))&0ffh
	line	75
	
l2834:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftmul@f1))&0ffh,(15)&7
	line	77
	
l2836:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftmul@f2))&0ffh,(15)&7
	line	78
	
l2838:; BSR set to: 0

	movlw	low(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftmul@f2))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftmul@f2+2))&0ffh

	line	79
	
l2840:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((___ftmul@f3_as_product))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	((___ftmul@f3_as_product+1))&0ffh
	movlw	low highword(0)
	movlb	0	; () banked
	movwf	((___ftmul@f3_as_product+2))&0ffh

	line	134
	
l2842:; BSR set to: 0

	movlw	low(07h)
	movlb	0	; () banked
	movwf	((___ftmul@cntr))&0ffh
	goto	l2844
	line	135
	
l902:; BSR set to: 0

	line	136
	
l2844:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftmul@f1))&0ffh,(0)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l2848
u2430:
	line	137
	
l2846:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftmul@f2))&0ffh,w
	movlb	0	; () banked
	addwf	((___ftmul@f3_as_product))&0ffh
	movlb	0	; () banked
	movf	((___ftmul@f2+1))&0ffh,w
	movlb	0	; () banked
	addwfc	((___ftmul@f3_as_product+1))&0ffh
	movlb	0	; () banked
	movf	((___ftmul@f2+2))&0ffh,w
	movlb	0	; () banked
	addwfc	((___ftmul@f3_as_product+2))&0ffh

	goto	l2848
	
l903:; BSR set to: 0

	line	138
	
l2848:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___ftmul@f1+2))&0ffh
	rrcf	((___ftmul@f1+1))&0ffh
	rrcf	((___ftmul@f1))&0ffh
	line	139
	movlb	0	; () banked
	bcf	status,0
	rlcf	((___ftmul@f2))&0ffh
	rlcf	((___ftmul@f2+1))&0ffh
	rlcf	((___ftmul@f2+2))&0ffh
	line	140
	
l2850:; BSR set to: 0

	movlb	0	; () banked
	decfsz	((___ftmul@cntr))&0ffh
	
	goto	l2844
	goto	l2852
	
l904:; BSR set to: 0

	line	143
	
l2852:; BSR set to: 0

	movlw	low(09h)
	movlb	0	; () banked
	movwf	((___ftmul@cntr))&0ffh
	goto	l2854
	line	144
	
l905:; BSR set to: 0

	line	145
	
l2854:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftmul@f1))&0ffh,(0)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l2858
u2440:
	line	146
	
l2856:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftmul@f2))&0ffh,w
	movlb	0	; () banked
	addwf	((___ftmul@f3_as_product))&0ffh
	movlb	0	; () banked
	movf	((___ftmul@f2+1))&0ffh,w
	movlb	0	; () banked
	addwfc	((___ftmul@f3_as_product+1))&0ffh
	movlb	0	; () banked
	movf	((___ftmul@f2+2))&0ffh,w
	movlb	0	; () banked
	addwfc	((___ftmul@f3_as_product+2))&0ffh

	goto	l2858
	
l906:; BSR set to: 0

	line	147
	
l2858:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___ftmul@f1+2))&0ffh
	rrcf	((___ftmul@f1+1))&0ffh
	rrcf	((___ftmul@f1))&0ffh
	line	148
	movlb	0	; () banked
	bcf	status,0
	rrcf	((___ftmul@f3_as_product+2))&0ffh
	rrcf	((___ftmul@f3_as_product+1))&0ffh
	rrcf	((___ftmul@f3_as_product))&0ffh
	line	149
	
l2860:; BSR set to: 0

	movlb	0	; () banked
	decfsz	((___ftmul@cntr))&0ffh
	
	goto	l2854
	goto	l2862
	
l907:; BSR set to: 0

	line	156
	
l2862:; BSR set to: 0

	movff	(___ftmul@f3_as_product),(___ftpack@arg)
	movff	(___ftmul@f3_as_product+1),(___ftpack@arg+1)
	movff	(___ftmul@f3_as_product+2),(___ftpack@arg+2)
	movff	(___ftmul@exp),(___ftpack@exp)
	movff	(___ftmul@sign),(___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(?___ftmul)
	movff	1+?___ftpack,(?___ftmul+1)
	movff	2+?___ftpack,(?___ftmul+2)
	goto	l900
	
l2864:
	line	157
	
l900:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   42[BANK0 ] float 
;;  f2              3   45[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   53[BANK0 ] unsigned char 
;;  exp2            1   52[BANK0 ] unsigned char 
;;  sign            1   51[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   42[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0      12       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ruoteRoutine
;;		_atan
;;		_eval_poly
;;		___ftsub
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftadd.c"
	line	86
global __ptext21
__ptext21:
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 22
	line	90
	
l2748:
	movff	(___ftadd@f1+2),??___ftadd+0+0
	movlb	0	; () banked
	clrf	(??___ftadd+0+0+1)&0ffh
	clrf	(??___ftadd+0+0+2)&0ffh
	movlb	0	; () banked
	rlcf	((___ftadd@f1+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___ftadd+0+0)&0ffh
	bnc	u2181
	bsf	(??___ftadd+0+0+1)&0ffh,0
u2181:
	movlb	0	; () banked
	movf	(??___ftadd+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftadd@exp1))&0ffh
	line	91
	movff	(___ftadd@f2+2),??___ftadd+0+0
	movlb	0	; () banked
	clrf	(??___ftadd+0+0+1)&0ffh
	clrf	(??___ftadd+0+0+2)&0ffh
	movlb	0	; () banked
	rlcf	((___ftadd@f2+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___ftadd+0+0)&0ffh
	bnc	u2191
	bsf	(??___ftadd+0+0+1)&0ffh,0
u2191:
	movlb	0	; () banked
	movf	(??___ftadd+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftadd@exp2))&0ffh
	line	92
	
l2750:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l853
u2200:
	
l2752:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftadd@exp1))&0ffh,w
	btfsc	status,0
	goto	u2211
	goto	u2210

u2211:
	goto	l2756
u2210:
	
l2754:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp1))&0ffh,w
	sublw	0
	movlb	0	; () banked
	addwf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
	movwf	(??___ftadd+0+0)&0ffh
		movlw	019h-1
	movlb	0	; () banked
	cpfsgt	((??___ftadd+0+0))&0ffh
	goto	u2221
	goto	u2220

u2221:
	goto	l2756
u2220:
	
l853:; BSR set to: 0

	line	93
	movff	(___ftadd@f2),(?___ftadd)
	movff	(___ftadd@f2+1),(?___ftadd+1)
	movff	(___ftadd@f2+2),(?___ftadd+2)
	goto	l854
	
l851:; BSR set to: 0

	line	94
	
l2756:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l857
u2230:
	
l2758:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftadd@exp2))&0ffh,w
	btfsc	status,0
	goto	u2241
	goto	u2240

u2241:
	goto	l2762
u2240:
	
l2760:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp2))&0ffh,w
	sublw	0
	movlb	0	; () banked
	addwf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
	movwf	(??___ftadd+0+0)&0ffh
		movlw	019h-1
	movlb	0	; () banked
	cpfsgt	((??___ftadd+0+0))&0ffh
	goto	u2251
	goto	u2250

u2251:
	goto	l2762
u2250:
	
l857:; BSR set to: 0

	line	95
	movff	(___ftadd@f1),(?___ftadd)
	movff	(___ftadd@f1+1),(?___ftadd+1)
	movff	(___ftadd@f1+2),(?___ftadd+2)
	goto	l854
	
l855:; BSR set to: 0

	line	96
	
l2762:; BSR set to: 0

	movlw	low(06h)
	movlb	0	; () banked
	movwf	((___ftadd@sign))&0ffh
	line	97
	
l2764:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftadd@f1+2))&0ffh,(23)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l2768
u2260:
	line	98
	
l2766:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(7/8)+(___ftadd@sign))&0ffh,(7)&7
	goto	l2768
	
l858:; BSR set to: 0

	line	99
	
l2768:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftadd@f2+2))&0ffh,(23)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l859
u2270:
	line	100
	
l2770:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(6/8)+(___ftadd@sign))&0ffh,(6)&7
	
l859:; BSR set to: 0

	line	101
	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftadd@f1))&0ffh,(15)&7
	line	102
	
l2772:; BSR set to: 0

	movlw	low(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftadd@f1))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftadd@f1+1))&0ffh
	movlw	low highword(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftadd@f1+2))&0ffh

	line	103
	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftadd@f2))&0ffh,(15)&7
	line	104
	
l2774:; BSR set to: 0

	movlw	low(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftadd@f2))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftadd@f2+1))&0ffh
	movlw	low highword(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftadd@f2+2))&0ffh

	line	106
	
l2776:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftadd@exp1))&0ffh,w
	btfsc	status,0
	goto	u2281
	goto	u2280

u2281:
	goto	l2788
u2280:
	goto	l2778
	line	109
	
l861:; BSR set to: 0

	line	110
	
l2778:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___ftadd@f2))&0ffh
	rlcf	((___ftadd@f2+1))&0ffh
	rlcf	((___ftadd@f2+2))&0ffh
	line	111
	movlb	0	; () banked
	decf	((___ftadd@exp2))&0ffh
	line	112
	
l2780:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
xorwf	((___ftadd@exp2))&0ffh,w
	btfsc	status,2
	goto	u2291
	goto	u2290

u2291:
	goto	l2786
u2290:
	
l2782:; BSR set to: 0

	movlb	0	; () banked
	decf	((___ftadd@sign))&0ffh
	movff	(___ftadd@sign),??___ftadd+0+0
	movlw	07h
	movlb	0	; () banked
	andwf	(??___ftadd+0+0)&0ffh
	btfss	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l2778
u2300:
	goto	l2786
	
l863:; BSR set to: 0

	goto	l2786
	
l864:; BSR set to: 0

	line	113
	goto	l2786
	
l866:; BSR set to: 0

	line	114
	
l2784:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___ftadd@f1+2))&0ffh
	rrcf	((___ftadd@f1+1))&0ffh
	rrcf	((___ftadd@f1))&0ffh
	line	115
	movlb	0	; () banked
	incf	((___ftadd@exp1))&0ffh
	goto	l2786
	line	116
	
l865:; BSR set to: 0

	line	113
	
l2786:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
xorwf	((___ftadd@exp1))&0ffh,w
	btfss	status,2
	goto	u2311
	goto	u2310

u2311:
	goto	l2784
u2310:
	goto	l868
	
l867:; BSR set to: 0

	line	117
	goto	l868
	
l860:; BSR set to: 0

	
l2788:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftadd@exp2))&0ffh,w
	btfsc	status,0
	goto	u2321
	goto	u2320

u2321:
	goto	l868
u2320:
	goto	l2790
	line	120
	
l870:; BSR set to: 0

	line	121
	
l2790:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___ftadd@f1))&0ffh
	rlcf	((___ftadd@f1+1))&0ffh
	rlcf	((___ftadd@f1+2))&0ffh
	line	122
	movlb	0	; () banked
	decf	((___ftadd@exp1))&0ffh
	line	123
	
l2792:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
xorwf	((___ftadd@exp2))&0ffh,w
	btfsc	status,2
	goto	u2331
	goto	u2330

u2331:
	goto	l2798
u2330:
	
l2794:; BSR set to: 0

	movlb	0	; () banked
	decf	((___ftadd@sign))&0ffh
	movff	(___ftadd@sign),??___ftadd+0+0
	movlw	07h
	movlb	0	; () banked
	andwf	(??___ftadd+0+0)&0ffh
	btfss	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l2790
u2340:
	goto	l2798
	
l872:; BSR set to: 0

	goto	l2798
	
l873:; BSR set to: 0

	line	124
	goto	l2798
	
l875:; BSR set to: 0

	line	125
	
l2796:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___ftadd@f2+2))&0ffh
	rrcf	((___ftadd@f2+1))&0ffh
	rrcf	((___ftadd@f2))&0ffh
	line	126
	movlb	0	; () banked
	incf	((___ftadd@exp2))&0ffh
	goto	l2798
	line	127
	
l874:; BSR set to: 0

	line	124
	
l2798:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
xorwf	((___ftadd@exp1))&0ffh,w
	btfss	status,2
	goto	u2351
	goto	u2350

u2351:
	goto	l2796
u2350:
	goto	l868
	
l876:; BSR set to: 0

	goto	l868
	line	128
	
l869:; BSR set to: 0

	line	129
	
l868:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftadd@sign))&0ffh,(7)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l877
u2360:
	line	131
	
l2800:; BSR set to: 0

	movlw	low(0FFFFFFh)
	movlb	0	; () banked
	xorwf	((___ftadd@f1))&0ffh
	movlw	high(0FFFFFFh)
	movlb	0	; () banked
	xorwf	((___ftadd@f1+1))&0ffh
	movlw	low highword(0FFFFFFh)
	movlb	0	; () banked
	xorwf	((___ftadd@f1+2))&0ffh

	line	132
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((___ftadd@f1))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	addwfc	((___ftadd@f1+1))&0ffh
	movlw	low highword(01h)
	movlb	0	; () banked
	addwfc	((___ftadd@f1+2))&0ffh

	line	133
	
l877:; BSR set to: 0

	line	134
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftadd@sign))&0ffh,(6)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l2804
u2370:
	line	136
	
l2802:; BSR set to: 0

	movlw	low(0FFFFFFh)
	movlb	0	; () banked
	xorwf	((___ftadd@f2))&0ffh
	movlw	high(0FFFFFFh)
	movlb	0	; () banked
	xorwf	((___ftadd@f2+1))&0ffh
	movlw	low highword(0FFFFFFh)
	movlb	0	; () banked
	xorwf	((___ftadd@f2+2))&0ffh

	line	137
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((___ftadd@f2))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	addwfc	((___ftadd@f2+1))&0ffh
	movlw	low highword(01h)
	movlb	0	; () banked
	addwfc	((___ftadd@f2+2))&0ffh

	goto	l2804
	line	138
	
l878:; BSR set to: 0

	line	139
	
l2804:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((___ftadd@sign))&0ffh
	line	140
	
l2806:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@f1))&0ffh,w
	movlb	0	; () banked
	addwf	((___ftadd@f2))&0ffh
	movlb	0	; () banked
	movf	((___ftadd@f1+1))&0ffh,w
	movlb	0	; () banked
	addwfc	((___ftadd@f2+1))&0ffh
	movlb	0	; () banked
	movf	((___ftadd@f1+2))&0ffh,w
	movlb	0	; () banked
	addwfc	((___ftadd@f2+2))&0ffh

	line	141
	
l2808:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftadd@f2+2))&0ffh,(23)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l2814
u2380:
	line	142
	
l2810:; BSR set to: 0

	movlw	low(0FFFFFFh)
	movlb	0	; () banked
	xorwf	((___ftadd@f2))&0ffh
	movlw	high(0FFFFFFh)
	movlb	0	; () banked
	xorwf	((___ftadd@f2+1))&0ffh
	movlw	low highword(0FFFFFFh)
	movlb	0	; () banked
	xorwf	((___ftadd@f2+2))&0ffh

	line	143
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((___ftadd@f2))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	addwfc	((___ftadd@f2+1))&0ffh
	movlw	low highword(01h)
	movlb	0	; () banked
	addwfc	((___ftadd@f2+2))&0ffh

	line	144
	
l2812:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((___ftadd@sign))&0ffh
	goto	l2814
	line	145
	
l879:; BSR set to: 0

	line	146
	
l2814:; BSR set to: 0

	movff	(___ftadd@f2),(___ftpack@arg)
	movff	(___ftadd@f2+1),(___ftpack@arg+1)
	movff	(___ftadd@f2+2),(___ftpack@arg+2)
	movff	(___ftadd@exp1),(___ftpack@exp)
	movff	(___ftadd@sign),(___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(?___ftadd)
	movff	1+?___ftpack,(?___ftadd+1)
	movff	2+?___ftpack,(?___ftadd+2)
	goto	l854
	
l2816:
	line	148
	
l854:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3   57[BANK0 ] float 
;;  ff2             3   60[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ruoteRoutine
;;		_atan
;;		_pow
;;		_sqrt
;;		_exp
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftge.c"
	line	4
global __ptext22
__ptext22:
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:
;incstack = 0
	opt	stack 24
	line	6
	
l2866:
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftge@ff1+2))&0ffh,(23)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l2870
u2450:
	line	7
	
l2868:; BSR set to: 0

	movff	(___ftge@ff1),??___ftge+0+0
	movff	(___ftge@ff1+1),??___ftge+0+0+1
	movff	(___ftge@ff1+2),??___ftge+0+0+2
	movlb	0	; () banked
	comf	(??___ftge+0+0)&0ffh
	comf	(??___ftge+0+1)&0ffh
	comf	(??___ftge+0+2)&0ffh
	incf	(??___ftge+0+0)&0ffh
	movlw	0
	addwfc	(??___ftge+0+1)&0ffh
	addwfc	(??___ftge+0+2)&0ffh

	movlw	low(0800000h)
	movlb	0	; () banked
	addwf	(??___ftge+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	0
	movlb	0	; () banked
	addwfc	(??___ftge+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+((___ftge@ff1))&0ffh
	
	movlw	080h
	movlb	0	; () banked
	addwfc	(??___ftge+0+2)&0ffh,w
	movlb	0	; () banked
	movwf	2+((___ftge@ff1))&0ffh
	goto	l2870
	
l892:; BSR set to: 0

	line	8
	
l2870:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftge@ff2+2))&0ffh,(23)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l2874
u2460:
	line	9
	
l2872:; BSR set to: 0

	movff	(___ftge@ff2),??___ftge+0+0
	movff	(___ftge@ff2+1),??___ftge+0+0+1
	movff	(___ftge@ff2+2),??___ftge+0+0+2
	movlb	0	; () banked
	comf	(??___ftge+0+0)&0ffh
	comf	(??___ftge+0+1)&0ffh
	comf	(??___ftge+0+2)&0ffh
	incf	(??___ftge+0+0)&0ffh
	movlw	0
	addwfc	(??___ftge+0+1)&0ffh
	addwfc	(??___ftge+0+2)&0ffh

	movlw	low(0800000h)
	movlb	0	; () banked
	addwf	(??___ftge+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftge@ff2))&0ffh
	movlw	0
	movlb	0	; () banked
	addwfc	(??___ftge+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+((___ftge@ff2))&0ffh
	
	movlw	080h
	movlb	0	; () banked
	addwfc	(??___ftge+0+2)&0ffh,w
	movlb	0	; () banked
	movwf	2+((___ftge@ff2))&0ffh
	goto	l2874
	
l893:; BSR set to: 0

	line	10
	
l2874:; BSR set to: 0

	movlw	low(0800000h)
	movlb	0	; () banked
	xorwf	((___ftge@ff1))&0ffh
	movlw	high(0800000h)
	movlb	0	; () banked
	xorwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(0800000h)
	movlb	0	; () banked
	xorwf	((___ftge@ff1+2))&0ffh

	line	11
	
l2876:; BSR set to: 0

	movlw	low(0800000h)
	movlb	0	; () banked
	xorwf	((___ftge@ff2))&0ffh
	movlw	high(0800000h)
	movlb	0	; () banked
	xorwf	((___ftge@ff2+1))&0ffh
	movlw	low highword(0800000h)
	movlb	0	; () banked
	xorwf	((___ftge@ff2+2))&0ffh

	line	12
	movlb	0	; () banked
		movf	((___ftge@ff2))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftge@ff1))&0ffh,w
	movlb	0	; () banked
	movf	((___ftge@ff2+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___ftge@ff1+1))&0ffh,w
	movlb	0	; () banked
	movf	((___ftge@ff2+2))&0ffh,w
	movlb	0	; () banked
	subwfb	((___ftge@ff1+2))&0ffh,w
	btfsc	status,0
	goto	u2471
	goto	u2470

u2471:
	goto	l2880
u2470:
	
l2878:; BSR set to: 0

	bcf	status,0
	goto	l894
	
l2686:; BSR set to: 0

	
l2880:; BSR set to: 0

	bsf	status,0
	goto	l894
	
l2688:; BSR set to: 0

	goto	l894
	
l2882:; BSR set to: 0

	line	13
	
l894:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 54 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   27[BANK0 ] float 
;;  f2              3   30[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   37[BANK0 ] float 
;;  sign            1   41[BANK0 ] unsigned char 
;;  exp             1   40[BANK0 ] unsigned char 
;;  cntr            1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   27[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ruoteRoutine
;;		_atan
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftdiv.c"
	line	54
global __ptext23
__ptext23:
psect	text23
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftdiv.c"
	line	54
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:; BSR set to: 0

;incstack = 0
	opt	stack 22
	line	63
	
l2950:
	movff	(___ftdiv@f1+2),??___ftdiv+0+0
	movlb	0	; () banked
	clrf	(??___ftdiv+0+0+1)&0ffh
	clrf	(??___ftdiv+0+0+2)&0ffh
	movlb	0	; () banked
	rlcf	((___ftdiv@f1+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___ftdiv+0+0)&0ffh
	bnc	u2581
	bsf	(??___ftdiv+0+0+1)&0ffh,0
u2581:
	movlb	0	; () banked
	movf	(??___ftdiv+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftdiv@exp))&0ffh
	movlb	0	; () banked
	movf	((___ftdiv@exp))&0ffh,w
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l2956
u2590:
	line	64
	
l2952:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftdiv))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftdiv+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftdiv+2))&0ffh

	goto	l885
	
l2954:; BSR set to: 0

	goto	l885
	
l884:; BSR set to: 0

	line	65
	
l2956:; BSR set to: 0

	movff	(___ftdiv@f2+2),??___ftdiv+0+0
	movlb	0	; () banked
	clrf	(??___ftdiv+0+0+1)&0ffh
	clrf	(??___ftdiv+0+0+2)&0ffh
	movlb	0	; () banked
	rlcf	((___ftdiv@f2+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___ftdiv+0+0)&0ffh
	bnc	u2601
	bsf	(??___ftdiv+0+0+1)&0ffh,0
u2601:
	movlb	0	; () banked
	movf	(??___ftdiv+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftdiv@sign))&0ffh
	movlb	0	; () banked
	movf	((___ftdiv@sign))&0ffh,w
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l2962
u2610:
	line	66
	
l2958:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftdiv))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftdiv+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftdiv+2))&0ffh

	goto	l885
	
l2960:; BSR set to: 0

	goto	l885
	
l886:; BSR set to: 0

	line	67
	
l2962:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((___ftdiv@f3))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	((___ftdiv@f3+1))&0ffh
	movlw	low highword(0)
	movlb	0	; () banked
	movwf	((___ftdiv@f3+2))&0ffh

	line	68
	
l2964:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftdiv@sign))&0ffh,w
	addlw	low(089h)
	movlb	0	; () banked
	subwf	((___ftdiv@exp))&0ffh
	line	69
	
l2966:; BSR set to: 0

	movff	0+2+(___ftdiv@f1),(___ftdiv@sign)
	line	70
	
l2968:; BSR set to: 0

	movlb	0	; () banked
	movf	(0+2+(___ftdiv@f2))&0ffh,w
	movlb	0	; () banked
	xorwf	((___ftdiv@sign))&0ffh
	line	71
	
l2970:; BSR set to: 0

	movlw	(080h)&0ffh
	movlb	0	; () banked
	andwf	((___ftdiv@sign))&0ffh
	line	72
	
l2972:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftdiv@f1))&0ffh,(15)&7
	line	73
	
l2974:; BSR set to: 0

	movlw	low(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftdiv@f1))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftdiv@f1+1))&0ffh
	movlw	low highword(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftdiv@f1+2))&0ffh

	line	74
	
l2976:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftdiv@f2))&0ffh,(15)&7
	line	75
	
l2978:; BSR set to: 0

	movlw	low(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftdiv@f2))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftdiv@f2+2))&0ffh

	line	76
	
l2980:; BSR set to: 0

	movlw	low(018h)
	movlb	0	; () banked
	movwf	((___ftdiv@cntr))&0ffh
	goto	l2982
	line	77
	
l887:; BSR set to: 0

	line	78
	
l2982:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___ftdiv@f3))&0ffh
	rlcf	((___ftdiv@f3+1))&0ffh
	rlcf	((___ftdiv@f3+2))&0ffh
	line	79
	
l2984:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftdiv@f2))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftdiv@f1))&0ffh,w
	movlb	0	; () banked
	movf	((___ftdiv@f2+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___ftdiv@f1+1))&0ffh,w
	movlb	0	; () banked
	movf	((___ftdiv@f2+2))&0ffh,w
	movlb	0	; () banked
	subwfb	((___ftdiv@f1+2))&0ffh,w
	btfss	status,0
	goto	u2621
	goto	u2620

u2621:
	goto	l888
u2620:
	line	80
	
l2986:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftdiv@f2))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftdiv@f1))&0ffh
	movlb	0	; () banked
	movf	((___ftdiv@f2+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___ftdiv@f1+1))&0ffh
	movlb	0	; () banked
	movf	((___ftdiv@f2+2))&0ffh,w
	movlb	0	; () banked
	subwfb	((___ftdiv@f1+2))&0ffh

	line	81
	
l2988:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(0/8)+(___ftdiv@f3))&0ffh,(0)&7
	line	82
	
l888:; BSR set to: 0

	line	83
	movlb	0	; () banked
	bcf	status,0
	rlcf	((___ftdiv@f1))&0ffh
	rlcf	((___ftdiv@f1+1))&0ffh
	rlcf	((___ftdiv@f1+2))&0ffh
	line	84
	
l2990:; BSR set to: 0

	movlb	0	; () banked
	decfsz	((___ftdiv@cntr))&0ffh
	
	goto	l2982
	goto	l2992
	
l889:; BSR set to: 0

	line	85
	
l2992:; BSR set to: 0

	movff	(___ftdiv@f3),(___ftpack@arg)
	movff	(___ftdiv@f3+1),(___ftpack@arg+1)
	movff	(___ftdiv@f3+2),(___ftpack@arg+2)
	movff	(___ftdiv@exp),(___ftpack@exp)
	movff	(___ftdiv@sign),(___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(?___ftdiv)
	movff	1+?___ftpack,(?___ftdiv+1)
	movff	2+?___ftpack,(?___ftdiv+2)
	goto	l885
	
l2994:
	line	86
	
l885:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       5       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___altoft
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\float.c"
	line	62
global __ptext24
__ptext24:
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 22
	line	64
	
l2690:
	movlb	0	; () banked
	movf	((___ftpack@exp))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u2081
	goto	u2080
u2081:
	goto	l2694
u2080:
	
l2692:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftpack@arg))&0ffh,w
	movlb	0	; () banked
iorwf	((___ftpack@arg+1))&0ffh,w
	movlb	0	; () banked
iorwf	((___ftpack@arg+2))&0ffh,w
	btfss	status,2
	goto	u2091
	goto	u2090

u2091:
	goto	l2700
u2090:
	goto	l2694
	
l818:; BSR set to: 0

	line	65
	
l2694:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftpack))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftpack+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftpack+2))&0ffh

	goto	l819
	
l2696:; BSR set to: 0

	goto	l819
	
l816:; BSR set to: 0

	line	66
	goto	l2700
	
l821:; BSR set to: 0

	line	67
	
l2698:; BSR set to: 0

	movlb	0	; () banked
	incf	((___ftpack@exp))&0ffh
	line	68
	movlb	0	; () banked
	bcf	status,0
	rrcf	((___ftpack@arg+2))&0ffh
	rrcf	((___ftpack@arg+1))&0ffh
	rrcf	((___ftpack@arg))&0ffh
	goto	l2700
	line	69
	
l820:; BSR set to: 0

	line	66
	
l2700:; BSR set to: 0

	movlw	low(0FE0000h)
	movlb	0	; () banked
	andwf	((___ftpack@arg))&0ffh,w
	movlb	0	; () banked
	movwf	(??___ftpack+0+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	((___ftpack@arg+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(??___ftpack+0+0)&0ffh
	
	movlw	0FEh
	movlb	0	; () banked
	andwf	((___ftpack@arg+2))&0ffh,w
	movlb	0	; () banked
	movwf	2+(??___ftpack+0+0)&0ffh

	movlb	0	; () banked
	movf	(??___ftpack+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??___ftpack+0+1)&0ffh,w
	movlb	0	; () banked
iorwf	(??___ftpack+0+2)&0ffh,w
	btfss	status,2
	goto	u2101
	goto	u2100

u2101:
	goto	l2698
u2100:
	goto	l2706
	
l822:; BSR set to: 0

	line	70
	goto	l2706
	
l824:; BSR set to: 0

	line	71
	
l2702:; BSR set to: 0

	movlb	0	; () banked
	incf	((___ftpack@exp))&0ffh
	line	72
	
l2704:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	addwf	((___ftpack@arg))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	addwfc	((___ftpack@arg+1))&0ffh
	movlw	low highword(01h)
	movlb	0	; () banked
	addwfc	((___ftpack@arg+2))&0ffh

	line	73
	movlb	0	; () banked
	bcf	status,0
	rrcf	((___ftpack@arg+2))&0ffh
	rrcf	((___ftpack@arg+1))&0ffh
	rrcf	((___ftpack@arg))&0ffh
	goto	l2706
	line	74
	
l823:; BSR set to: 0

	line	70
	
l2706:; BSR set to: 0

	movlw	low(0FF0000h)
	movlb	0	; () banked
	andwf	((___ftpack@arg))&0ffh,w
	movlb	0	; () banked
	movwf	(??___ftpack+0+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	((___ftpack@arg+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(??___ftpack+0+0)&0ffh
	
	movlw	0FFh
	movlb	0	; () banked
	andwf	((___ftpack@arg+2))&0ffh,w
	movlb	0	; () banked
	movwf	2+(??___ftpack+0+0)&0ffh

	movlb	0	; () banked
	movf	(??___ftpack+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??___ftpack+0+1)&0ffh,w
	movlb	0	; () banked
iorwf	(??___ftpack+0+2)&0ffh,w
	btfss	status,2
	goto	u2111
	goto	u2110

u2111:
	goto	l2702
u2110:
	goto	l2710
	
l825:; BSR set to: 0

	line	75
	goto	l2710
	
l827:; BSR set to: 0

	line	76
	
l2708:; BSR set to: 0

	movlb	0	; () banked
	decf	((___ftpack@exp))&0ffh
	line	77
	movlb	0	; () banked
	bcf	status,0
	rlcf	((___ftpack@arg))&0ffh
	rlcf	((___ftpack@arg+1))&0ffh
	rlcf	((___ftpack@arg+2))&0ffh
	goto	l2710
	line	78
	
l826:; BSR set to: 0

	line	75
	
l2710:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	((___ftpack@arg+1))&0ffh,(15)&7
	goto	u2121
	goto	u2120
u2121:
	goto	l830
u2120:
	
l2712:; BSR set to: 0

		movlw	02h-0
	movlb	0	; () banked
	cpfslt	((___ftpack@exp))&0ffh
	goto	u2131
	goto	u2130

u2131:
	goto	l2708
u2130:
	goto	l830
	
l829:; BSR set to: 0

	
l830:; BSR set to: 0

	line	79
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	((___ftpack@exp))&0ffh,(0)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l2716
u2140:
	line	80
	
l2714:; BSR set to: 0

	movlb	0	; () banked
	bcf	(0+(15/8)+(___ftpack@arg))&0ffh,(15)&7
	goto	l2716
	
l831:; BSR set to: 0

	line	81
	
l2716:; BSR set to: 0

	movlb	0	; () banked
	bcf status,0
	rrcf	((___ftpack@exp))&0ffh

	line	82
	movlb	0	; () banked
	movf	((___ftpack@exp))&0ffh,w
	movlb	0	; () banked
	iorwf	((___ftpack@arg+2))&0ffh

	line	83
	
l2718:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftpack@sign))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l2722
u2150:
	line	84
	
l2720:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(23/8)+(___ftpack@arg))&0ffh,(23)&7
	goto	l2722
	
l832:; BSR set to: 0

	line	85
	
l2722:; BSR set to: 0

	movff	(___ftpack@arg),(?___ftpack)
	movff	(___ftpack@arg+1),(?___ftpack+1)
	movff	(___ftpack@arg+2),(?___ftpack+2)
	goto	l819
	
l2724:; BSR set to: 0

	line	86
	
l819:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_picSetup

;; *************** function _picSetup *****************
;; Defined at:
;;		line 52 in file "C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
	line	52
global __ptext25
__ptext25:
psect	text25
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
	line	52
	global	__size_of_picSetup
	__size_of_picSetup	equ	__end_of_picSetup-_picSetup
	
_picSetup:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	53
	
l4288:
;schedaMaster.c: 53: OSCCON= 0b01110000;
	movlw	low(070h)
	movwf	((c:4051)),c	;volatile
	line	54
;schedaMaster.c: 54: ADCON1= 0x0F;
	movlw	low(0Fh)
	movwf	((c:4033)),c	;volatile
	line	55
;schedaMaster.c: 55: TRISB = 0b11111011;
	movlw	low(0FBh)
	movwf	((c:3987)),c	;volatile
	line	56
;schedaMaster.c: 56: TRISC = 0b10111111;
	movlw	low(0BFh)
	movwf	((c:3988)),c	;volatile
	line	57
	
l430:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_picSetup
	__end_of_picSetup:
	signat	_picSetup,88
	global	_canSetup

;; *************** function _canSetup *****************
;; Defined at:
;;		line 3 in file "C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\CAN.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_canConfigMode
;;		_canNormalMode
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\CAN.c"
	line	3
global __ptext26
__ptext26:
psect	text26
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\CAN.c"
	line	3
	global	__size_of_canSetup
	__size_of_canSetup	equ	__end_of_canSetup-_canSetup
	
_canSetup:
;incstack = 0
	opt	stack 25
	line	4
	
l4242:
;CAN.c: 4: canConfigMode();
	call	_canConfigMode	;wreg free
	line	6
	
l4244:
;CAN.c: 6: BRGCON1=0b00000011;
	movlw	low(03h)
	movwf	((c:3952)),c	;volatile
	line	7
	
l4246:
;CAN.c: 7: BRGCON2=0b10011000;
	movlw	low(098h)
	movwf	((c:3953)),c	;volatile
	line	8
	
l4248:
;CAN.c: 8: BRGCON3=0b00000011;
	movlw	low(03h)
	movwf	((c:3954)),c	;volatile
	line	12
	
l4250:
;CAN.c: 12: RXM0SIDL=0;
	movlw	low(0)
	movlb	15	; () banked
	movwf	((3865))&0ffh	;volatile
	line	13
	
l4252:; BSR set to: 15

;CAN.c: 13: RXM1SIDL=0;
	movlw	low(0)
	movlb	15	; () banked
	movwf	((3869))&0ffh	;volatile
	line	14
	
l4254:; BSR set to: 15

;CAN.c: 14: RXB0SIDL=0;
	movlw	low(0)
	movwf	((c:3938)),c	;volatile
	line	15
	
l4256:; BSR set to: 15

;CAN.c: 15: RXF0SIDL=0;
	movlw	low(0)
	movlb	15	; () banked
	movwf	((3841))&0ffh	;volatile
	line	16
	
l4258:; BSR set to: 15

;CAN.c: 16: RXF1SIDL=0;
	movlw	low(0)
	movlb	15	; () banked
	movwf	((3845))&0ffh	;volatile
	line	17
	
l4260:; BSR set to: 15

;CAN.c: 17: RXF2SIDL=0;
	movlw	low(0)
	movlb	15	; () banked
	movwf	((3849))&0ffh	;volatile
	line	18
	
l4262:; BSR set to: 15

;CAN.c: 18: TXB0SIDL=0;
	movlw	low(0)
	movlb	15	; () banked
	movwf	((3906))&0ffh	;volatile
	line	21
	
l4264:; BSR set to: 15

;CAN.c: 21: RXM0SIDH=0B11111111;
	movlb	15	; () banked
	setf	((3864))&0ffh	;volatile
	line	22
	
l4266:; BSR set to: 15

;CAN.c: 22: RXF0SIDH=0x40;
	movlw	low(040h)
	movlb	15	; () banked
	movwf	((3840))&0ffh	;volatile
	line	23
	
l4268:; BSR set to: 15

;CAN.c: 23: RXF1SIDH=0x00;
	movlw	low(0)
	movlb	15	; () banked
	movwf	((3844))&0ffh	;volatile
	line	26
	
l4270:; BSR set to: 15

;CAN.c: 26: RXB0CON=0b00100110;
	movlw	low(026h)
	movwf	((c:3936)),c	;volatile
	line	28
	
l4272:; BSR set to: 15

;CAN.c: 28: CIOCON=0b00100000;
	movlw	low(020h)
	movwf	((c:3955)),c	;volatile
	line	29
	
l4274:; BSR set to: 15

;CAN.c: 29: RXB0IE = 1;
	bsf	c:(32024/8),(32024)&7	;volatile
	line	30
;CAN.c: 30: canNormalMode();
	call	_canNormalMode	;wreg free
	line	31
	
l277:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_canSetup
	__end_of_canSetup:
	signat	_canSetup,88
	global	_canNormalMode

;; *************** function _canNormalMode *****************
;; Defined at:
;;		line 39 in file "C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\CAN.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_canSetup
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	line	39
global __ptext27
__ptext27:
psect	text27
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\CAN.c"
	line	39
	global	__size_of_canNormalMode
	__size_of_canNormalMode	equ	__end_of_canNormalMode-_canNormalMode
	
_canNormalMode:
;incstack = 0
	opt	stack 25
	line	40
	
l3204:
;CAN.c: 40: CANCON = 0b00010000;
	movlw	low(010h)
	movwf	((c:3951)),c	;volatile
	line	41
;CAN.c: 41: while((CANSTAT & 0b11100000) != 0b00000000);
	goto	l3206
	
l287:
	goto	l3206
	
l286:
	
l3206:
	movff	(c:3950),??_canNormalMode+0+0	;volatile
	movlw	0E0h
	movlb	0	; () banked
	andwf	(??_canNormalMode+0+0)&0ffh
	btfss	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l3206
u2960:
	goto	l289
	
l288:; BSR set to: 0

	line	43
	
l289:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_canNormalMode
	__end_of_canNormalMode:
	signat	_canNormalMode,88
	global	_canConfigMode

;; *************** function _canConfigMode *****************
;; Defined at:
;;		line 33 in file "C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\CAN.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_canSetup
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	line	33
global __ptext28
__ptext28:
psect	text28
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\CAN.c"
	line	33
	global	__size_of_canConfigMode
	__size_of_canConfigMode	equ	__end_of_canConfigMode-_canConfigMode
	
_canConfigMode:; BSR set to: 0

;incstack = 0
	opt	stack 25
	line	34
	
l4108:
;CAN.c: 34: CANCON = 0b10010000;
	movlw	low(090h)
	movwf	((c:3951)),c	;volatile
	line	35
;CAN.c: 35: while((CANSTAT & 0b11100000) != 0b10000000);
	goto	l4110
	
l281:
	goto	l4110
	
l280:
	
l4110:
	movf	((c:3950)),c,w	;volatile
	andlw	low(0E0h)
	xorlw	080h
	btfss	status,2
	goto	u4271
	goto	u4270
u4271:
	goto	l4110
u4270:
	goto	l283
	
l282:
	line	37
	
l283:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_canConfigMode
	__end_of_canConfigMode:
	signat	_canConfigMode,88
	global	_cameraRoutine

;; *************** function _cameraRoutine *****************
;; Defined at:
;;		line 83 in file "C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_canTX
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
	line	83
global __ptext29
__ptext29:
psect	text29
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
	line	83
	global	__size_of_cameraRoutine
	__size_of_cameraRoutine	equ	__end_of_cameraRoutine-_cameraRoutine
	
_cameraRoutine:
;incstack = 0
	opt	stack 25
	line	84
	
l4598:
;schedaMaster.c: 84: cameraXY[0] = console_rotazioneCamera - 90;
	movlb	0	; () banked
	movf	((_console_rotazioneCamera))&0ffh,w
	addlw	low(0A6h)
	movwf	((c:_cameraXY)),c
	line	85
;schedaMaster.c: 85: cameraXY[1] = console_inclinazioneCamera - 60;
	movlb	0	; () banked
	movf	((_console_inclinazioneCamera))&0ffh,w
	addlw	low(0C4h)
	movwf	(0+((c:_cameraXY)+01h)),c
	line	86
	
l4600:; BSR set to: 0

;schedaMaster.c: 86: canTX(2, 0x2C, cameraXY[0], cameraXY[1]);
	movlw	high(02h)
	movlb	0	; () banked
	movwf	((canTX@nData+1))&0ffh
	movlw	low(02h)
	movwf	((canTX@nData))&0ffh
	movlw	high(02Ch)
	movlb	0	; () banked
	movwf	(1+(?_canTX+02h))&0ffh
	movlw	low(02Ch)
	movwf	(0+(?_canTX+02h))&0ffh
	movff	(c:_cameraXY),0+(?_canTX+04h)
	movlb	0	; () banked
	clrf	(1+(?_canTX+04h))&0ffh
	movff	0+((c:_cameraXY)+01h),0+(?_canTX+06h)
	movlb	0	; () banked
	clrf	(1+(?_canTX+06h))&0ffh
	call	_canTX	;wreg free
	line	87
	
l443:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_cameraRoutine
	__end_of_cameraRoutine:
	signat	_cameraRoutine,88
	global	_canTX

;; *************** function _canTX *****************
;; Defined at:
;;		line 50 in file "C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\CAN.c"
;; Parameters:    Size  Location     Type
;;  nData           2   15[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  ap              2   31[BANK0 ] PTR void [1]
;;		 -> ?_canTX(0), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0      16       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      18       0       0       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_cameraRoutine
;;		_trapanoRoutine
;;		_ruoteRoutine
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\CAN.c"
	line	50
global __ptext30
__ptext30:
psect	text30
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\CAN.c"
	line	50
	global	__size_of_canTX
	__size_of_canTX	equ	__end_of_canTX-_canTX
	
_canTX:
;incstack = 0
	opt	stack 25
	line	51
	
l4112:
;CAN.c: 51: nData++;
	movlb	0	; () banked
	infsnz	((canTX@nData))&0ffh
	incf	((canTX@nData+1))&0ffh
	line	52
;CAN.c: 52: while(TXB0REQ);
	goto	l298
	
l299:; BSR set to: 0

	
l298:
	movlb	15	; () banked
	btfsc	(31235/8)&0ffh,(31235)&7	;volatile
	goto	u4281
	goto	u4280
u4281:
	goto	l298
u4280:
	goto	l4114
	
l300:; BSR set to: 15

	line	54
	
l4114:; BSR set to: 15

;CAN.c: 53: va_list ap;
;CAN.c: 54: *ap = __va_start();
		movlw	low(?_canTX+02h)
	movlb	0	; () banked
	movwf	((canTX@ap))&0ffh
	movlw	high(?_canTX+02h)
	movlb	0	; () banked
	movwf	((canTX@ap+1))&0ffh

	line	55
;CAN.c: 55: TXB0DLC = nData - 1;
	movlb	0	; () banked
	decf	((canTX@nData))&0ffh,w
	movlb	15	; () banked
	movwf	((3909))&0ffh	;volatile
	line	56
	
l4116:; BSR set to: 15

;CAN.c: 56: TXB0SIDH = (*(int *)__va_arg((*(int **)ap), (int)0));
	movff	(canTX@ap),fsr2l
	movff	(canTX@ap+1),fsr2h
	movf	indf2,w
	movlb	15	; () banked
	movwf	((3905))&0ffh	;volatile
	
l4118:; BSR set to: 15

	movlw	02h
	movlb	0	; () banked
	addwf	((canTX@ap))&0ffh
	movlw	0
	addwfc	((canTX@ap+1))&0ffh
	line	57
;CAN.c: 57: TXB0D0 = (*(int *)__va_arg((*(int **)ap), (int)0));
	movff	(canTX@ap),fsr2l
	movff	(canTX@ap+1),fsr2h
	movf	indf2,w
	movlb	15	; () banked
	movwf	((3910))&0ffh	;volatile
	
l4120:; BSR set to: 15

	movlw	02h
	movlb	0	; () banked
	addwf	((canTX@ap))&0ffh
	movlw	0
	addwfc	((canTX@ap+1))&0ffh
	line	58
	
l4122:; BSR set to: 0

;CAN.c: 58: TXB0D1 = (*(int *)__va_arg((*(int **)ap), (int)0));
	movff	(canTX@ap),fsr2l
	movff	(canTX@ap+1),fsr2h
	movf	indf2,w
	movlb	15	; () banked
	movwf	((3911))&0ffh	;volatile
	movlw	02h
	movlb	0	; () banked
	addwf	((canTX@ap))&0ffh
	movlw	0
	addwfc	((canTX@ap+1))&0ffh
	line	59
	
l4124:; BSR set to: 0

;CAN.c: 59: TXB0D2 = (*(int *)__va_arg((*(int **)ap), (int)0));
	movff	(canTX@ap),fsr2l
	movff	(canTX@ap+1),fsr2h
	movf	indf2,w
	movlb	15	; () banked
	movwf	((3912))&0ffh	;volatile
	
l4126:; BSR set to: 15

	movlw	02h
	movlb	0	; () banked
	addwf	((canTX@ap))&0ffh
	movlw	0
	addwfc	((canTX@ap+1))&0ffh
	line	60
;CAN.c: 60: TXB0D3 = (*(int *)__va_arg((*(int **)ap), (int)0));
	movff	(canTX@ap),fsr2l
	movff	(canTX@ap+1),fsr2h
	movf	indf2,w
	movlb	15	; () banked
	movwf	((3913))&0ffh	;volatile
	
l4128:; BSR set to: 15

	movlw	02h
	movlb	0	; () banked
	addwf	((canTX@ap))&0ffh
	movlw	0
	addwfc	((canTX@ap+1))&0ffh
	line	61
	
l4130:; BSR set to: 0

;CAN.c: 61: TXB0D4 = (*(int *)__va_arg((*(int **)ap), (int)0));
	movff	(canTX@ap),fsr2l
	movff	(canTX@ap+1),fsr2h
	movf	indf2,w
	movlb	15	; () banked
	movwf	((3914))&0ffh	;volatile
	movlw	02h
	movlb	0	; () banked
	addwf	((canTX@ap))&0ffh
	movlw	0
	addwfc	((canTX@ap+1))&0ffh
	line	62
	
l4132:; BSR set to: 0

;CAN.c: 62: TXB0D5 = (*(int *)__va_arg((*(int **)ap), (int)0));
	movff	(canTX@ap),fsr2l
	movff	(canTX@ap+1),fsr2h
	movf	indf2,w
	movlb	15	; () banked
	movwf	((3915))&0ffh	;volatile
	
l4134:; BSR set to: 15

	movlw	02h
	movlb	0	; () banked
	addwf	((canTX@ap))&0ffh
	movlw	0
	addwfc	((canTX@ap+1))&0ffh
	line	63
;CAN.c: 63: TXB0D6 = (*(int *)__va_arg((*(int **)ap), (int)0));
	movff	(canTX@ap),fsr2l
	movff	(canTX@ap+1),fsr2h
	movf	indf2,w
	movlb	15	; () banked
	movwf	((3916))&0ffh	;volatile
	
l4136:; BSR set to: 15

	movlw	02h
	movlb	0	; () banked
	addwf	((canTX@ap))&0ffh
	movlw	0
	addwfc	((canTX@ap+1))&0ffh
	line	64
	
l4138:; BSR set to: 0

;CAN.c: 64: TXB0D7 = (*(int *)__va_arg((*(int **)ap), (int)0));
	movff	(canTX@ap),fsr2l
	movff	(canTX@ap+1),fsr2h
	movf	indf2,w
	movlb	15	; () banked
	movwf	((3917))&0ffh	;volatile
	movlw	02h
	movlb	0	; () banked
	addwf	((canTX@ap))&0ffh
	movlw	0
	addwfc	((canTX@ap+1))&0ffh
	line	66
	
l4140:; BSR set to: 0

;CAN.c: 65: ;
;CAN.c: 66: TXB0REQ=1;
	movlb	15	; () banked
	bsf	(31235/8)&0ffh,(31235)&7	;volatile
	line	67
	
l301:; BSR set to: 15

	return	;funcret
	opt stack 0
GLOBAL	__end_of_canTX
	__end_of_canTX:
	signat	_canTX,600
	global	_bluetoothSetup

;; *************** function _bluetoothSetup *****************
;; Defined at:
;;		line 1 in file "C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\Bluetooth.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\Bluetooth.c"
	line	1
global __ptext31
__ptext31:
psect	text31
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\Bluetooth.c"
	line	1
	global	__size_of_bluetoothSetup
	__size_of_bluetoothSetup	equ	__end_of_bluetoothSetup-_bluetoothSetup
	
_bluetoothSetup:; BSR set to: 15

;incstack = 0
	opt	stack 26
	line	2
	
l4276:
;Bluetooth.c: 2: SPBRGH=0;
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	3
	
l4278:
;Bluetooth.c: 3: BRG16=0;
	bcf	c:(32195/8),(32195)&7	;volatile
	line	4
;Bluetooth.c: 4: SPBRG=12;
	movlw	low(0Ch)
	movwf	((c:4015)),c	;volatile
	line	5
	
l4280:
;Bluetooth.c: 5: SPEN=1;
	bsf	c:(32095/8),(32095)&7	;volatile
	line	6
	
l4282:
;Bluetooth.c: 6: BRGH=0;
	bcf	c:(32098/8),(32098)&7	;volatile
	line	7
;Bluetooth.c: 7: TXSTA=0b00000010;
	movlw	low(02h)
	movwf	((c:4012)),c	;volatile
	line	8
;Bluetooth.c: 8: RCSTA=0b10010000;
	movlw	low(090h)
	movwf	((c:4011)),c	;volatile
	line	9
	
l4284:
;Bluetooth.c: 9: TXEN=1;
	bsf	c:(32101/8),(32101)&7	;volatile
	line	10
	
l4286:
;Bluetooth.c: 10: RCIE=1;
	bsf	c:(31981/8),(31981)&7	;volatile
	line	11
	
l386:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_bluetoothSetup
	__end_of_bluetoothSetup:
	signat	_bluetoothSetup,88
	global	_bluetoothRX

;; *************** function _bluetoothRX *****************
;; Defined at:
;;		line 28 in file "C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\Bluetooth.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  RXdato1         1    4[BANK0 ] unsigned char 
;;  RXdato2         1    3[BANK0 ] unsigned char 
;;  RXdato3         1    2[BANK0 ] unsigned char 
;;  n               1    1[BANK0 ] unsigned char 
;;  GEN_CRC         1    0        unsigned char 
;;  RX_CRC          1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	line	28
global __ptext32
__ptext32:
psect	text32
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\Bluetooth.c"
	line	28
	global	__size_of_bluetoothRX
	__size_of_bluetoothRX	equ	__end_of_bluetoothRX-_bluetoothRX
	
_bluetoothRX:
;incstack = 0
	opt	stack 26
	line	31
	
l3540:
;Bluetooth.c: 29: char RXdato1, RXdato2, RXdato3;
;Bluetooth.c: 30: char RX_CRC, GEN_CRC;
;Bluetooth.c: 31: char n = 100;
	movlw	low(064h)
	movlb	0	; () banked
	movwf	((bluetoothRX@n))&0ffh
	line	32
;Bluetooth.c: 32: TXREG='R';
	movlw	low(052h)
	movwf	((c:4013)),c	;volatile
	line	33
;Bluetooth.c: 33: while (!TXIF);
	goto	l399
	
l400:; BSR set to: 0

	
l399:
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u3451
	goto	u3450
u3451:
	goto	l399
u3450:
	goto	l3542
	
l401:
	line	34
	
l3542:
;Bluetooth.c: 34: TXREG='X';
	movlw	low(058h)
	movwf	((c:4013)),c	;volatile
	line	35
;Bluetooth.c: 35: while (!TXIF);
	goto	l402
	
l403:
	
l402:
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u3461
	goto	u3460
u3461:
	goto	l402
u3460:
	goto	l3544
	
l404:
	line	51
	
l3544:
;Bluetooth.c: 51: RXdato1 = (bufferDataRX[3]-48) * 100 + (bufferDataRX[4]-48) * 10 + (bufferDataRX[5]-48);
	movlb	0	; () banked
	movf	(0+(_bufferDataRX+04h))&0ffh,w
	addlw	low(0D0h)
	mullw	0Ah
	movff	prodl,??_bluetoothRX+0+0
	movlb	0	; () banked
	movf	(0+(_bufferDataRX+03h))&0ffh,w
	addlw	low(0D0h)
	mullw	064h
	movf	(prodl),c,w
	movlb	0	; () banked
	addwf	(??_bluetoothRX+0+0)&0ffh,w
	movlb	0	; () banked
	addwf	(0+(_bufferDataRX+05h))&0ffh,w
	addlw	low(0D0h)
	movlb	0	; () banked
	movwf	((bluetoothRX@RXdato1))&0ffh
	line	52
;Bluetooth.c: 52: RXdato2 = (bufferDataRX[7]-48) * 100 + (bufferDataRX[8]-48) * 10 + (bufferDataRX[9]-48);
	movlb	0	; () banked
	movf	(0+(_bufferDataRX+08h))&0ffh,w
	addlw	low(0D0h)
	mullw	0Ah
	movff	prodl,??_bluetoothRX+0+0
	movlb	0	; () banked
	movf	(0+(_bufferDataRX+07h))&0ffh,w
	addlw	low(0D0h)
	mullw	064h
	movf	(prodl),c,w
	movlb	0	; () banked
	addwf	(??_bluetoothRX+0+0)&0ffh,w
	movlb	0	; () banked
	addwf	(0+(_bufferDataRX+09h))&0ffh,w
	addlw	low(0D0h)
	movlb	0	; () banked
	movwf	((bluetoothRX@RXdato2))&0ffh
	line	53
;Bluetooth.c: 53: RXdato3 = (bufferDataRX[11]-48) * 100 + (bufferDataRX[12]-48) * 10 + (bufferDataRX[13]-48);
	movlb	0	; () banked
	movf	(0+(_bufferDataRX+0Ch))&0ffh,w
	addlw	low(0D0h)
	mullw	0Ah
	movff	prodl,??_bluetoothRX+0+0
	movlb	0	; () banked
	movf	(0+(_bufferDataRX+0Bh))&0ffh,w
	addlw	low(0D0h)
	mullw	064h
	movf	(prodl),c,w
	movlb	0	; () banked
	addwf	(??_bluetoothRX+0+0)&0ffh,w
	movlb	0	; () banked
	addwf	(0+(_bufferDataRX+0Dh))&0ffh,w
	addlw	low(0D0h)
	movlb	0	; () banked
	movwf	((bluetoothRX@RXdato3))&0ffh
	line	54
;Bluetooth.c: 54: switch(bufferDataRX[1]){
	goto	l3560
	line	55
;Bluetooth.c: 55: case 'R':
	
l406:; BSR set to: 0

	line	56
;Bluetooth.c: 56: ruoteData_NEW = 1;
	bsf	(_ruoteData_NEW/8),c,(_ruoteData_NEW)&7
	line	57
;Bluetooth.c: 57: console_raggioRuote = RXdato1;
	movff	(bluetoothRX@RXdato1),(_console_raggioRuote)
	movlb	1	; () banked
	clrf	((_console_raggioRuote+1))&0ffh
	line	58
;Bluetooth.c: 58: console_distanzaRuote = RXdato2;
	movff	(bluetoothRX@RXdato2),(_console_distanzaRuote)
	movlb	1	; () banked
	clrf	((_console_distanzaRuote+1))&0ffh
	line	59
;Bluetooth.c: 59: console_velocitaRuote = RXdato3;
	movff	(bluetoothRX@RXdato3),(_console_velocitaRuote)
	movlb	1	; () banked
	clrf	((_console_velocitaRuote+1))&0ffh
	line	60
;Bluetooth.c: 60: break;
	goto	l3562
	line	61
;Bluetooth.c: 61: case 'C':
	
l408:; BSR set to: 0

	line	62
;Bluetooth.c: 62: cameraData_NEW = 1;
	bsf	(_cameraData_NEW/8),c,(_cameraData_NEW)&7
	line	63
;Bluetooth.c: 63: console_rotazioneCamera = RXdato1;
	movff	(bluetoothRX@RXdato1),(_console_rotazioneCamera)
	line	64
;Bluetooth.c: 64: console_inclinazioneCamera = RXdato2;
	movff	(bluetoothRX@RXdato2),(_console_inclinazioneCamera)
	line	65
;Bluetooth.c: 65: break;
	goto	l3562
	line	66
;Bluetooth.c: 66: case 'S':
	
l409:; BSR set to: 0

	line	67
;Bluetooth.c: 67: break;
	goto	l3562
	line	68
;Bluetooth.c: 68: case 'T':
	
l410:; BSR set to: 0

	line	69
;Bluetooth.c: 69: trapanoData_NEW = 1;
	bsf	(_trapanoData_NEW/8),c,(_trapanoData_NEW)&7
	line	70
	
l3546:; BSR set to: 0

;Bluetooth.c: 70: if (RXdato1 == 2) {
		movlw	2
	movlb	0	; () banked
	xorwf	((bluetoothRX@RXdato1))&0ffh,w
	btfss	status,2
	goto	u3471
	goto	u3470

u3471:
	goto	l3550
u3470:
	line	71
	
l3548:; BSR set to: 0

;Bluetooth.c: 71: console_cassetto = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_console_cassetto))&0ffh
	line	72
;Bluetooth.c: 72: }
	goto	l3552
	line	73
	
l411:; BSR set to: 0

	line	74
	
l3550:; BSR set to: 0

;Bluetooth.c: 73: else{
;Bluetooth.c: 74: console_cassetto = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_console_cassetto))&0ffh
	goto	l3552
	line	75
	
l412:; BSR set to: 0

	line	76
	
l3552:; BSR set to: 0

;Bluetooth.c: 75: }
;Bluetooth.c: 76: console_posizioneTrapano = RXdato1;
	movff	(bluetoothRX@RXdato1),(_console_posizioneTrapano)
	line	77
	
l3554:; BSR set to: 0

;Bluetooth.c: 77: console_puntaTrapano = RXdato2;
	movff	(bluetoothRX@RXdato2),(_console_puntaTrapano)
	line	78
	
l3556:; BSR set to: 0

;Bluetooth.c: 78: console_rotazioneTrapano = RXdato3;
	movff	(bluetoothRX@RXdato3),(_console_rotazioneTrapano)
	line	79
;Bluetooth.c: 79: break;
	goto	l3562
	line	80
;Bluetooth.c: 80: default:
	
l413:; BSR set to: 0

	line	81
;Bluetooth.c: 81: break;
	goto	l3562
	line	82
	
l3558:; BSR set to: 0

;Bluetooth.c: 82: }
	goto	l3562
	line	54
	
l405:; BSR set to: 0

	
l3560:; BSR set to: 0

	movlb	0	; () banked
	movf	(0+(_bufferDataRX+01h))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 67 to 84
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	67^0	; case 67
	skipnz
	goto	l408
	xorlw	82^67	; case 82
	skipnz
	goto	l406
	xorlw	83^82	; case 83
	skipnz
	goto	l3562
	xorlw	84^83	; case 84
	skipnz
	goto	l410
	goto	l3562

	line	82
	
l407:; BSR set to: 0

	line	84
	
l3562:
;Bluetooth.c: 84: k=0;
	movlw	low(0)
	movwf	((c:_k)),c
	line	85
;Bluetooth.c: 85: bufferDataRX[0] = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_bufferDataRX))&0ffh
	line	86
;Bluetooth.c: 86: bufferDataRX[18] = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_bufferDataRX+012h))&0ffh
	line	87
	
l414:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_bluetoothRX
	__end_of_bluetoothRX:
	signat	_bluetoothRX,88
	global	_my_ISR

;; *************** function _my_ISR *****************
;; Defined at:
;;		line 59 in file "C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_canRX
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\schedaMaster.c"
	line	59
	global	__size_of_my_ISR
	__size_of_my_ISR	equ	__end_of_my_ISR-_my_ISR
	
_my_ISR:; BSR set to: 0

;incstack = 0
	opt	stack 21
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	movff	pclat+0,??_my_ISR+0
	movff	pclat+1,??_my_ISR+1
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr0l+0,??_my_ISR+2
	movff	fsr0h+0,??_my_ISR+3
	movff	fsr1l+0,??_my_ISR+4
	movff	fsr1h+0,??_my_ISR+5
	movff	fsr2l+0,??_my_ISR+6
	movff	fsr2h+0,??_my_ISR+7
	movff	prodl+0,??_my_ISR+8
	movff	prodh+0,??_my_ISR+9
	movff	tblptrl+0,??_my_ISR+10
	movff	tblptrh+0,??_my_ISR+11
	movff	tblptru+0,??_my_ISR+12
	movff	tablat+0,??_my_ISR+13
	line	60
	
i2l3948:
;schedaMaster.c: 60: if (RXB0IF && RXB0IE){
	btfss	c:(32032/8),(32032)&7	;volatile
	goto	i2u401_41
	goto	i2u401_40
i2u401_41:
	goto	i2l3956
i2u401_40:
	
i2l3950:
	btfss	c:(32024/8),(32024)&7	;volatile
	goto	i2u402_41
	goto	i2u402_40
i2u402_41:
	goto	i2l3956
i2u402_40:
	line	61
	
i2l3952:
;schedaMaster.c: 61: RXB0IF=0;
	bcf	c:(32032/8),(32032)&7	;volatile
	line	62
	
i2l3954:
;schedaMaster.c: 62: canRX();
	call	_canRX	;wreg free
	goto	i2l3956
	line	63
	
i2l433:
	line	64
	
i2l3956:
;schedaMaster.c: 63: }
;schedaMaster.c: 64: if(RCIE && RCIF){
	btfss	c:(31981/8),(31981)&7	;volatile
	goto	i2u403_41
	goto	i2u403_40
i2u403_41:
	goto	i2l440
i2u403_40:
	
i2l3958:
	btfss	c:(31989/8),(31989)&7	;volatile
	goto	i2u404_41
	goto	i2u404_40
i2u404_41:
	goto	i2l440
i2u404_40:
	line	65
	
i2l3960:
;schedaMaster.c: 65: RCIF=0;
	bcf	c:(31989/8),(31989)&7	;volatile
	line	66
	
i2l3962:
;schedaMaster.c: 66: bufferDataRX[k] = RCREG;
	movf	((c:_k)),c,w
	mullw	01h
	movlw	low(_bufferDataRX)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_bufferDataRX)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:4014),indf2	;volatile

	line	67
	
i2l3964:
;schedaMaster.c: 67: if (bufferDataRX[0] == '@'){
		movlw	64
	movlb	0	; () banked
	xorwf	((_bufferDataRX))&0ffh,w
	btfss	status,2
	goto	i2u405_41
	goto	i2u405_40

i2u405_41:
	goto	i2l440
i2u405_40:
	line	68
	
i2l3966:; BSR set to: 0

;schedaMaster.c: 68: if (k<18) k++;
		movlw	012h-0
	cpfslt	((c:_k)),c
	goto	i2u406_41
	goto	i2u406_40

i2u406_41:
	goto	i2l3970
i2u406_40:
	
i2l3968:; BSR set to: 0

	incf	((c:_k)),c
	goto	i2l440
	line	69
	
i2l436:; BSR set to: 0

	line	70
	
i2l3970:; BSR set to: 0

;schedaMaster.c: 69: else{
;schedaMaster.c: 70: if(bufferDataRX[18] == '$') serialData_NEW = 1;
		movlw	36
	movlb	0	; () banked
	xorwf	(0+(_bufferDataRX+012h))&0ffh,w
	btfss	status,2
	goto	i2u407_41
	goto	i2u407_40

i2u407_41:
	goto	i2l3974
i2u407_40:
	
i2l3972:; BSR set to: 0

	bsf	(_serialData_NEW/8),c,(_serialData_NEW)&7
	goto	i2l440
	line	71
	
i2l438:; BSR set to: 0

	line	72
	
i2l3974:; BSR set to: 0

;schedaMaster.c: 71: else{
;schedaMaster.c: 72: k=0;
	movlw	low(0)
	movwf	((c:_k)),c
	line	73
;schedaMaster.c: 73: bufferDataRX[0] = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_bufferDataRX))&0ffh
	line	74
;schedaMaster.c: 74: bufferDataRX[18] = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_bufferDataRX+012h))&0ffh
	goto	i2l440
	line	75
	
i2l439:; BSR set to: 0

	goto	i2l440
	line	76
	
i2l437:; BSR set to: 0

	goto	i2l440
	line	77
	
i2l435:; BSR set to: 0

	goto	i2l440
	line	79
	
i2l434:; BSR set to: 0

	line	81
	
i2l440:
	movff	??_my_ISR+13,tablat+0
	movff	??_my_ISR+12,tblptru+0
	movff	??_my_ISR+11,tblptrh+0
	movff	??_my_ISR+10,tblptrl+0
	movff	??_my_ISR+9,prodh+0
	movff	??_my_ISR+8,prodl+0
	movff	??_my_ISR+7,fsr2h+0
	movff	??_my_ISR+6,fsr2l+0
	movff	??_my_ISR+5,fsr1h+0
	movff	??_my_ISR+4,fsr1l+0
	movff	??_my_ISR+3,fsr0h+0
	movff	??_my_ISR+2,fsr0l+0
	movff	??_my_ISR+1,pclat+1
	movff	??_my_ISR+0,pclat+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	opt stack 0
GLOBAL	__end_of_my_ISR
	__end_of_my_ISR:
	signat	_my_ISR,88
	global	_canRX

;; *************** function _canRX *****************
;; Defined at:
;;		line 69 in file "C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\CAN.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  canRX           8   24[COMRAM] unsigned char [8]
;;  DLC             1   32[COMRAM] unsigned char 
;;  ID              1   23[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        10       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbtoft
;;		___lwtoft
;;		i2___ftge
;; This function is called by:
;;		_my_ISR
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\CAN.c"
	line	69
global __ptext34
__ptext34:
psect	text34
	file	"C:\Users\battaglino.11077\Desktop\Software_SchedaMaster v.2\CAN.c"
	line	69
	global	__size_of_canRX
	__size_of_canRX	equ	__end_of_canRX-_canRX
	
_canRX:
;incstack = 0
	opt	stack 21
	line	71
	
i2l3398:
;CAN.c: 70: unsigned char canRX[8], ID, DLC;
;CAN.c: 71: canRX[0] = RXB0D0;
	movff	(c:3942),(c:canRX@canRX)	;volatile
	line	72
;CAN.c: 72: canRX[1] = RXB0D1;
	movff	(c:3943),0+((c:canRX@canRX)+01h)	;volatile
	line	73
;CAN.c: 73: canRX[2] = RXB0D2;
	movff	(c:3944),0+((c:canRX@canRX)+02h)	;volatile
	line	74
;CAN.c: 74: canRX[3] = RXB0D3;
	movff	(c:3945),0+((c:canRX@canRX)+03h)	;volatile
	line	75
;CAN.c: 75: canRX[4] = RXB0D4;
	movff	(c:3946),0+((c:canRX@canRX)+04h)	;volatile
	line	76
;CAN.c: 76: canRX[5] = RXB0D5;
	movff	(c:3947),0+((c:canRX@canRX)+05h)	;volatile
	line	77
;CAN.c: 77: canRX[6] = RXB0D6;
	movff	(c:3948),0+((c:canRX@canRX)+06h)	;volatile
	line	78
;CAN.c: 78: canRX[7] = RXB0D7;
	movff	(c:3949),0+((c:canRX@canRX)+07h)	;volatile
	line	79
;CAN.c: 79: DLC = RXB0DLC;
	movff	(c:3941),(c:canRX@DLC)	;volatile
	line	81
;CAN.c: 81: for (i=DLC;i<8;i++){
	movff	(c:canRX@DLC),(c:_i)
	goto	i2l3404
	
i2l305:
	line	82
	
i2l3400:
;CAN.c: 82: canRX[i] = 0;
	movf	((c:_i)),c,w
	mullw	01h
	movlw	low(canRX@canRX)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(canRX@canRX)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	81
	
i2l3402:
	incf	((c:_i)),c
	goto	i2l3404
	
i2l304:
	
i2l3404:
		movlw	08h-1
	cpfsgt	((c:_i)),c
	goto	i2u315_41
	goto	i2u315_40

i2u315_41:
	goto	i2l3400
i2u315_40:
	
i2l306:
	line	84
;CAN.c: 83: }
;CAN.c: 84: ID=RXB0SIDH;
	movff	(c:3937),(c:canRX@ID)	;volatile
	line	86
;CAN.c: 86: RXB0FUL=0;
	bcf	c:(31495/8),(31495)&7	;volatile
	line	87
;CAN.c: 87: RXB0IF=0;
	bcf	c:(32032/8),(32032)&7	;volatile
	line	88
;CAN.c: 88: switch(ID){
	goto	i2l3538
	line	90
;CAN.c: 90: case 0x01:
	
i2l308:
	line	91
;CAN.c: 91: break;
	goto	i2l326
	line	92
;CAN.c: 92: case 0x02:
	
i2l310:
	line	93
;CAN.c: 93: break;
	goto	i2l326
	line	94
;CAN.c: 94: case 0x03:
	
i2l311:
	line	95
;CAN.c: 95: break;
	goto	i2l326
	line	96
;CAN.c: 96: case 0x04:
	
i2l312:
	line	97
;CAN.c: 97: break;
	goto	i2l326
	line	98
;CAN.c: 98: case 0x05:
	
i2l313:
	line	99
;CAN.c: 99: break;
	goto	i2l326
	line	100
;CAN.c: 100: case 0x06:
	
i2l314:
	line	101
;CAN.c: 101: break;
	goto	i2l326
	line	102
;CAN.c: 102: case 0x07:
	
i2l315:
	line	103
;CAN.c: 103: break;
	goto	i2l326
	line	104
;CAN.c: 104: case 0x08:
	
i2l316:
	line	105
;CAN.c: 105: break;
	goto	i2l326
	line	106
;CAN.c: 106: case 0x09:
	
i2l317:
	line	107
;CAN.c: 107: break;
	goto	i2l326
	line	108
;CAN.c: 108: case 0x0A:
	
i2l318:
	line	109
;CAN.c: 109: break;
	goto	i2l326
	line	110
;CAN.c: 110: case 0x0B:
	
i2l319:
	line	111
;CAN.c: 111: break;
	goto	i2l326
	line	112
;CAN.c: 112: case 0x0C:
	
i2l320:
	line	113
;CAN.c: 113: break;
	goto	i2l326
	line	114
;CAN.c: 114: case 0x0D:
	
i2l321:
	line	115
;CAN.c: 115: break;
	goto	i2l326
	line	116
;CAN.c: 116: case 0x0E:
	
i2l322:
	line	117
;CAN.c: 117: break;
	goto	i2l326
	line	118
;CAN.c: 118: case 0x0F:
	
i2l323:
	line	119
;CAN.c: 119: break;
	goto	i2l326
	line	122
;CAN.c: 122: case 0x41:
	
i2l324:
	line	123
;CAN.c: 123: mov1_online = 1;
	bsf	(_mov1_online/8),c,(_mov1_online)&7
	line	124
	
i2l3406:
;CAN.c: 124: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u316_41
	goto	i2u316_40
i2u316_41:
	goto	i2l3410
i2u316_40:
	goto	i2l326
	line	125
	
i2l3408:
;CAN.c: 125: return;
	goto	i2l326
	line	126
	
i2l325:
	line	127
	
i2l3410:
;CAN.c: 126: }
;CAN.c: 127: periferiche_Ruote[0].velocitaAttuale = canRX[1] + (canRX[2] << 8);
	movf	(0+((c:canRX@canRX)+02h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+01h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	((_periferiche_Ruote))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+((_periferiche_Ruote))&0ffh
	line	128
;CAN.c: 128: periferiche_Ruote[0].distanzaAttuale = canRX[3] + (canRX[4] << 8);
	movf	(0+((c:canRX@canRX)+04h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+03h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	(0+(_periferiche_Ruote+02h))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+(0+(_periferiche_Ruote+02h))&0ffh
	line	129
;CAN.c: 129: periferiche_Ruote[0].pwmAttuale = canRX[5] + (canRX[6] << 8);
	movf	(0+((c:canRX@canRX)+06h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+05h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	(0+(_periferiche_Ruote+04h))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+(0+(_periferiche_Ruote+04h))&0ffh
	line	130
	
i2l3412:; BSR set to: 1

;CAN.c: 130: if (ruote[0].distanza <= periferiche_Ruote[0].distanzaAttuale){
	movff	0+(_periferiche_Ruote+02h),(c:___lwtoft@c)
	movff	1+(_periferiche_Ruote+02h),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:i2___ftge@ff1)
	movff	1+?___lwtoft,(c:i2___ftge@ff1+1)
	movff	2+?___lwtoft,(c:i2___ftge@ff1+2)
	movff	0+(_ruote+03h),(c:i2___ftge@ff2)
	movff	1+(_ruote+03h),(c:i2___ftge@ff2+1)
	movff	2+(_ruote+03h),(c:i2___ftge@ff2+2)
	call	i2___ftge	;wreg free
	btfss	status,0
	goto	i2u317_41
	goto	i2u317_40
i2u317_41:
	goto	i2l327
i2u317_40:
	line	131
	
i2l3414:
;CAN.c: 131: posizioneMov1 = 0;
	bcf	(_posizioneMov1/8),c,(_posizioneMov1)&7
	line	132
;CAN.c: 132: }
	goto	i2l326
	line	133
	
i2l327:
	line	134
;CAN.c: 133: else{
;CAN.c: 134: posizioneMov1 = 1;
	bsf	(_posizioneMov1/8),c,(_posizioneMov1)&7
	goto	i2l326
	line	135
	
i2l328:
	line	136
;CAN.c: 135: }
;CAN.c: 136: break;
	goto	i2l326
	line	137
;CAN.c: 137: case 0x42:
	
i2l329:
	line	138
;CAN.c: 138: mov2_online = 1;
	bsf	(_mov2_online/8),c,(_mov2_online)&7
	line	139
	
i2l3416:
;CAN.c: 139: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u318_41
	goto	i2u318_40
i2u318_41:
	goto	i2l3420
i2u318_40:
	goto	i2l326
	line	140
	
i2l3418:
;CAN.c: 140: return;
	goto	i2l326
	line	141
	
i2l330:
	line	142
	
i2l3420:
;CAN.c: 141: }
;CAN.c: 142: periferiche_Ruote[0].velocitaAttuale = canRX[1] + (canRX[2] << 8);
	movf	(0+((c:canRX@canRX)+02h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+01h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	((_periferiche_Ruote))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+((_periferiche_Ruote))&0ffh
	line	143
;CAN.c: 143: periferiche_Ruote[0].distanzaAttuale = canRX[3] + (canRX[4] << 8);
	movf	(0+((c:canRX@canRX)+04h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+03h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	(0+(_periferiche_Ruote+02h))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+(0+(_periferiche_Ruote+02h))&0ffh
	line	144
;CAN.c: 144: periferiche_Ruote[0].pwmAttuale = canRX[5] + (canRX[6] << 8);
	movf	(0+((c:canRX@canRX)+06h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+05h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	(0+(_periferiche_Ruote+04h))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+(0+(_periferiche_Ruote+04h))&0ffh
	line	145
	
i2l3422:; BSR set to: 1

;CAN.c: 145: if (ruote[1].distanza <= periferiche_Ruote[1].distanzaAttuale){
	movff	0+(_periferiche_Ruote+09h),(c:___lwtoft@c)
	movff	1+(_periferiche_Ruote+09h),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:i2___ftge@ff1)
	movff	1+?___lwtoft,(c:i2___ftge@ff1+1)
	movff	2+?___lwtoft,(c:i2___ftge@ff1+2)
	movff	0+(_ruote+0Dh),(c:i2___ftge@ff2)
	movff	1+(_ruote+0Dh),(c:i2___ftge@ff2+1)
	movff	2+(_ruote+0Dh),(c:i2___ftge@ff2+2)
	call	i2___ftge	;wreg free
	btfss	status,0
	goto	i2u319_41
	goto	i2u319_40
i2u319_41:
	goto	i2l331
i2u319_40:
	line	146
	
i2l3424:
;CAN.c: 146: posizioneMov2 = 0;
	bcf	(_posizioneMov2/8),c,(_posizioneMov2)&7
	line	147
;CAN.c: 147: }
	goto	i2l326
	line	148
	
i2l331:
	line	149
;CAN.c: 148: else{
;CAN.c: 149: posizioneMov2 = 1;
	bsf	(_posizioneMov2/8),c,(_posizioneMov2)&7
	goto	i2l326
	line	150
	
i2l332:
	line	151
;CAN.c: 150: }
;CAN.c: 151: break;
	goto	i2l326
	line	152
;CAN.c: 152: case 0x43:
	
i2l333:
	line	153
;CAN.c: 153: mov3_online = 1;
	bsf	(_mov3_online/8),c,(_mov3_online)&7
	line	154
	
i2l3426:
;CAN.c: 154: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u320_41
	goto	i2u320_40
i2u320_41:
	goto	i2l3430
i2u320_40:
	goto	i2l326
	line	155
	
i2l3428:
;CAN.c: 155: return;
	goto	i2l326
	line	156
	
i2l334:
	line	157
	
i2l3430:
;CAN.c: 156: }
;CAN.c: 157: periferiche_Ruote[0].velocitaAttuale = canRX[1] + (canRX[2] << 8);
	movf	(0+((c:canRX@canRX)+02h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+01h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	((_periferiche_Ruote))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+((_periferiche_Ruote))&0ffh
	line	158
;CAN.c: 158: periferiche_Ruote[0].distanzaAttuale = canRX[3] + (canRX[4] << 8);
	movf	(0+((c:canRX@canRX)+04h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+03h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	(0+(_periferiche_Ruote+02h))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+(0+(_periferiche_Ruote+02h))&0ffh
	line	159
;CAN.c: 159: periferiche_Ruote[0].pwmAttuale = canRX[5] + (canRX[6] << 8);
	movf	(0+((c:canRX@canRX)+06h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+05h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	(0+(_periferiche_Ruote+04h))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+(0+(_periferiche_Ruote+04h))&0ffh
	line	160
	
i2l3432:; BSR set to: 1

;CAN.c: 160: if (ruote[2].distanza <= periferiche_Ruote[2].distanzaAttuale){
	movff	0+(_periferiche_Ruote+010h),(c:___lwtoft@c)
	movff	1+(_periferiche_Ruote+010h),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:i2___ftge@ff1)
	movff	1+?___lwtoft,(c:i2___ftge@ff1+1)
	movff	2+?___lwtoft,(c:i2___ftge@ff1+2)
	movff	0+(_ruote+017h),(c:i2___ftge@ff2)
	movff	1+(_ruote+017h),(c:i2___ftge@ff2+1)
	movff	2+(_ruote+017h),(c:i2___ftge@ff2+2)
	call	i2___ftge	;wreg free
	btfss	status,0
	goto	i2u321_41
	goto	i2u321_40
i2u321_41:
	goto	i2l335
i2u321_40:
	line	161
	
i2l3434:
;CAN.c: 161: posizioneMov3 = 0;
	bcf	(_posizioneMov3/8),c,(_posizioneMov3)&7
	line	162
;CAN.c: 162: }
	goto	i2l326
	line	163
	
i2l335:
	line	164
;CAN.c: 163: else{
;CAN.c: 164: posizioneMov3 = 1;
	bsf	(_posizioneMov3/8),c,(_posizioneMov3)&7
	goto	i2l326
	line	165
	
i2l336:
	line	166
;CAN.c: 165: }
;CAN.c: 166: break;
	goto	i2l326
	line	167
;CAN.c: 167: case 0x44:
	
i2l337:
	line	168
;CAN.c: 168: mov4_online = 1;
	bsf	(_mov4_online/8),c,(_mov4_online)&7
	line	169
	
i2l3436:
;CAN.c: 169: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u322_41
	goto	i2u322_40
i2u322_41:
	goto	i2l3440
i2u322_40:
	goto	i2l326
	line	170
	
i2l3438:
;CAN.c: 170: return;
	goto	i2l326
	line	171
	
i2l338:
	line	172
	
i2l3440:
;CAN.c: 171: }
;CAN.c: 172: periferiche_Ruote[0].velocitaAttuale = canRX[1] + (canRX[2] << 8);
	movf	(0+((c:canRX@canRX)+02h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+01h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	((_periferiche_Ruote))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+((_periferiche_Ruote))&0ffh
	line	173
;CAN.c: 173: periferiche_Ruote[0].distanzaAttuale = canRX[3] + (canRX[4] << 8);
	movf	(0+((c:canRX@canRX)+04h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+03h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	(0+(_periferiche_Ruote+02h))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+(0+(_periferiche_Ruote+02h))&0ffh
	line	174
;CAN.c: 174: periferiche_Ruote[0].pwmAttuale = canRX[5] + (canRX[6] << 8);
	movf	(0+((c:canRX@canRX)+06h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+05h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	(0+(_periferiche_Ruote+04h))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+(0+(_periferiche_Ruote+04h))&0ffh
	line	175
	
i2l3442:; BSR set to: 1

;CAN.c: 175: if (ruote[3].distanza <= periferiche_Ruote[3].distanzaAttuale){
	movff	0+(_periferiche_Ruote+017h),(c:___lwtoft@c)
	movff	1+(_periferiche_Ruote+017h),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:i2___ftge@ff1)
	movff	1+?___lwtoft,(c:i2___ftge@ff1+1)
	movff	2+?___lwtoft,(c:i2___ftge@ff1+2)
	movff	0+(_ruote+021h),(c:i2___ftge@ff2)
	movff	1+(_ruote+021h),(c:i2___ftge@ff2+1)
	movff	2+(_ruote+021h),(c:i2___ftge@ff2+2)
	call	i2___ftge	;wreg free
	btfss	status,0
	goto	i2u323_41
	goto	i2u323_40
i2u323_41:
	goto	i2l339
i2u323_40:
	line	176
	
i2l3444:
;CAN.c: 176: posizioneMov4 = 0;
	bcf	(_posizioneMov4/8),c,(_posizioneMov4)&7
	line	177
;CAN.c: 177: }
	goto	i2l326
	line	178
	
i2l339:
	line	179
;CAN.c: 178: else{
;CAN.c: 179: posizioneMov4 = 1;
	bsf	(_posizioneMov4/8),c,(_posizioneMov4)&7
	goto	i2l326
	line	180
	
i2l340:
	line	181
;CAN.c: 180: }
;CAN.c: 181: break;
	goto	i2l326
	line	182
;CAN.c: 182: case 0x45:
	
i2l341:
	line	183
;CAN.c: 183: mov5_online = 1;
	bsf	(_mov5_online/8),c,(_mov5_online)&7
	line	184
	
i2l3446:
;CAN.c: 184: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u324_41
	goto	i2u324_40
i2u324_41:
	goto	i2l3450
i2u324_40:
	goto	i2l326
	line	185
	
i2l3448:
;CAN.c: 185: return;
	goto	i2l326
	line	186
	
i2l342:
	line	187
	
i2l3450:
;CAN.c: 186: }
;CAN.c: 187: periferiche_Ruote[0].velocitaAttuale = canRX[1] + (canRX[2] << 8);
	movf	(0+((c:canRX@canRX)+02h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+01h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	((_periferiche_Ruote))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+((_periferiche_Ruote))&0ffh
	line	188
;CAN.c: 188: periferiche_Ruote[0].distanzaAttuale = canRX[3] + (canRX[4] << 8);
	movf	(0+((c:canRX@canRX)+04h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+03h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	(0+(_periferiche_Ruote+02h))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+(0+(_periferiche_Ruote+02h))&0ffh
	line	189
;CAN.c: 189: periferiche_Ruote[0].pwmAttuale = canRX[5] + (canRX[6] << 8);
	movf	(0+((c:canRX@canRX)+06h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+05h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	(0+(_periferiche_Ruote+04h))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+(0+(_periferiche_Ruote+04h))&0ffh
	line	190
	
i2l3452:; BSR set to: 1

;CAN.c: 190: if (ruote[4].distanza <= periferiche_Ruote[4].distanzaAttuale){
	movff	0+(_periferiche_Ruote+01Eh),(c:___lwtoft@c)
	movff	1+(_periferiche_Ruote+01Eh),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:i2___ftge@ff1)
	movff	1+?___lwtoft,(c:i2___ftge@ff1+1)
	movff	2+?___lwtoft,(c:i2___ftge@ff1+2)
	movff	0+(_ruote+02Bh),(c:i2___ftge@ff2)
	movff	1+(_ruote+02Bh),(c:i2___ftge@ff2+1)
	movff	2+(_ruote+02Bh),(c:i2___ftge@ff2+2)
	call	i2___ftge	;wreg free
	btfss	status,0
	goto	i2u325_41
	goto	i2u325_40
i2u325_41:
	goto	i2l343
i2u325_40:
	line	191
	
i2l3454:
;CAN.c: 191: posizioneMov5 = 0;
	bcf	(_posizioneMov5/8),c,(_posizioneMov5)&7
	line	192
;CAN.c: 192: }
	goto	i2l326
	line	193
	
i2l343:
	line	194
;CAN.c: 193: else{
;CAN.c: 194: posizioneMov5 = 1;
	bsf	(_posizioneMov5/8),c,(_posizioneMov5)&7
	goto	i2l326
	line	195
	
i2l344:
	line	196
;CAN.c: 195: }
;CAN.c: 196: break;
	goto	i2l326
	line	197
;CAN.c: 197: case 0x46:
	
i2l345:
	line	198
;CAN.c: 198: mov6_online = 1;
	bsf	(_mov6_online/8),c,(_mov6_online)&7
	line	199
	
i2l3456:
;CAN.c: 199: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u326_41
	goto	i2u326_40
i2u326_41:
	goto	i2l3460
i2u326_40:
	goto	i2l326
	line	200
	
i2l3458:
;CAN.c: 200: return;
	goto	i2l326
	line	201
	
i2l346:
	line	202
	
i2l3460:
;CAN.c: 201: }
;CAN.c: 202: periferiche_Ruote[0].velocitaAttuale = canRX[1] + (canRX[2] << 8);
	movf	(0+((c:canRX@canRX)+02h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+01h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	((_periferiche_Ruote))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+((_periferiche_Ruote))&0ffh
	line	203
;CAN.c: 203: periferiche_Ruote[0].distanzaAttuale = canRX[3] + (canRX[4] << 8);
	movf	(0+((c:canRX@canRX)+04h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+03h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	(0+(_periferiche_Ruote+02h))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+(0+(_periferiche_Ruote+02h))&0ffh
	line	204
;CAN.c: 204: periferiche_Ruote[0].pwmAttuale = canRX[5] + (canRX[6] << 8);
	movf	(0+((c:canRX@canRX)+06h)),c,w
	movwf	(??_canRX+0+0+1)&0ffh,c
	clrf	(??_canRX+0+0)&0ffh,c
	movf	(0+((c:canRX@canRX)+05h)),c,w
	addwf	(??_canRX+0+0),c,w
	movlb	1	; () banked
	movwf	(0+(_periferiche_Ruote+04h))&0ffh
	movlw	0
	addwfc	(??_canRX+0+1),c,w
	movlb	1	; () banked
	movwf	1+(0+(_periferiche_Ruote+04h))&0ffh
	line	205
	
i2l3462:; BSR set to: 1

;CAN.c: 205: if (ruote[5].distanza <= periferiche_Ruote[5].distanzaAttuale){
	movff	0+(_periferiche_Ruote+025h),(c:___lwtoft@c)
	movff	1+(_periferiche_Ruote+025h),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:i2___ftge@ff1)
	movff	1+?___lwtoft,(c:i2___ftge@ff1+1)
	movff	2+?___lwtoft,(c:i2___ftge@ff1+2)
	movff	0+(_ruote+035h),(c:i2___ftge@ff2)
	movff	1+(_ruote+035h),(c:i2___ftge@ff2+1)
	movff	2+(_ruote+035h),(c:i2___ftge@ff2+2)
	call	i2___ftge	;wreg free
	btfss	status,0
	goto	i2u327_41
	goto	i2u327_40
i2u327_41:
	goto	i2l347
i2u327_40:
	line	206
	
i2l3464:
;CAN.c: 206: posizioneMov6 = 0;
	bcf	(_posizioneMov6/8),c,(_posizioneMov6)&7
	line	207
;CAN.c: 207: }
	goto	i2l326
	line	208
	
i2l347:
	line	209
;CAN.c: 208: else{
;CAN.c: 209: posizioneMov6 = 1;
	bsf	(_posizioneMov6/8),c,(_posizioneMov6)&7
	goto	i2l326
	line	210
	
i2l348:
	line	211
;CAN.c: 210: }
;CAN.c: 211: break;
	goto	i2l326
	line	212
;CAN.c: 212: case 0x47:
	
i2l349:
	line	213
;CAN.c: 213: rot1_online = 1;
	bsf	(_rot1_online/8),c,(_rot1_online)&7
	line	214
	
i2l3466:
;CAN.c: 214: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u328_41
	goto	i2u328_40
i2u328_41:
	goto	i2l350
i2u328_40:
	goto	i2l326
	line	215
	
i2l3468:
;CAN.c: 215: return;
	goto	i2l326
	line	216
	
i2l350:
	line	217
;CAN.c: 216: }
;CAN.c: 217: periferiche_Ruote[0].angoloAttuale = canRX[0];
	movff	(c:canRX@canRX),0+(_periferiche_Ruote+06h)
	line	218
	
i2l3470:
;CAN.c: 218: if (ruote[0].angolo <= periferiche_Ruote[0].angoloAttuale){
	movlb	1	; () banked
	movf	(0+(_periferiche_Ruote+06h))&0ffh,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:i2___ftge@ff1)
	movff	1+?___lbtoft,(c:i2___ftge@ff1+1)
	movff	2+?___lbtoft,(c:i2___ftge@ff1+2)
	movff	0+(_ruote+07h),(c:i2___ftge@ff2)
	movff	1+(_ruote+07h),(c:i2___ftge@ff2+1)
	movff	2+(_ruote+07h),(c:i2___ftge@ff2+2)
	call	i2___ftge	;wreg free
	btfss	status,0
	goto	i2u329_41
	goto	i2u329_40
i2u329_41:
	goto	i2l351
i2u329_40:
	line	219
	
i2l3472:
;CAN.c: 219: posizioneRot1 = 0;
	bcf	(_posizioneRot1/8),c,(_posizioneRot1)&7
	line	220
;CAN.c: 220: }
	goto	i2l326
	line	221
	
i2l351:
	line	222
;CAN.c: 221: else{
;CAN.c: 222: posizioneRot1 = 1;
	bsf	(_posizioneRot1/8),c,(_posizioneRot1)&7
	goto	i2l326
	line	223
	
i2l352:
	line	224
;CAN.c: 223: }
;CAN.c: 224: break;
	goto	i2l326
	line	225
;CAN.c: 225: case 0x48:
	
i2l353:
	line	226
;CAN.c: 226: rot3_online = 1;
	bsf	(_rot3_online/8),c,(_rot3_online)&7
	line	227
	
i2l3474:
;CAN.c: 227: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u330_41
	goto	i2u330_40
i2u330_41:
	goto	i2l354
i2u330_40:
	goto	i2l326
	line	228
	
i2l3476:
;CAN.c: 228: return;
	goto	i2l326
	line	229
	
i2l354:
	line	230
;CAN.c: 229: }
;CAN.c: 230: periferiche_Ruote[2].angoloAttuale = canRX[0];
	movff	(c:canRX@canRX),0+(_periferiche_Ruote+014h)
	line	231
	
i2l3478:
;CAN.c: 231: if (ruote[2].angolo <= periferiche_Ruote[2].angoloAttuale){
	movlb	1	; () banked
	movf	(0+(_periferiche_Ruote+014h))&0ffh,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:i2___ftge@ff1)
	movff	1+?___lbtoft,(c:i2___ftge@ff1+1)
	movff	2+?___lbtoft,(c:i2___ftge@ff1+2)
	movff	0+(_ruote+01Bh),(c:i2___ftge@ff2)
	movff	1+(_ruote+01Bh),(c:i2___ftge@ff2+1)
	movff	2+(_ruote+01Bh),(c:i2___ftge@ff2+2)
	call	i2___ftge	;wreg free
	btfss	status,0
	goto	i2u331_41
	goto	i2u331_40
i2u331_41:
	goto	i2l355
i2u331_40:
	line	232
	
i2l3480:
;CAN.c: 232: posizioneRot3 = 0;
	bcf	(_posizioneRot3/8),c,(_posizioneRot3)&7
	line	233
;CAN.c: 233: }
	goto	i2l326
	line	234
	
i2l355:
	line	235
;CAN.c: 234: else{
;CAN.c: 235: posizioneRot3 = 1;
	bsf	(_posizioneRot3/8),c,(_posizioneRot3)&7
	goto	i2l326
	line	236
	
i2l356:
	line	237
;CAN.c: 236: }
;CAN.c: 237: break;
	goto	i2l326
	line	238
;CAN.c: 238: case 0x49:
	
i2l357:
	line	239
;CAN.c: 239: rot4_online = 1;
	bsf	(_rot4_online/8),c,(_rot4_online)&7
	line	240
	
i2l3482:
;CAN.c: 240: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u332_41
	goto	i2u332_40
i2u332_41:
	goto	i2l358
i2u332_40:
	goto	i2l326
	line	241
	
i2l3484:
;CAN.c: 241: return;
	goto	i2l326
	line	242
	
i2l358:
	line	243
;CAN.c: 242: }
;CAN.c: 243: periferiche_Ruote[3].angoloAttuale = canRX[0];
	movff	(c:canRX@canRX),0+(_periferiche_Ruote+01Bh)
	line	244
	
i2l3486:
;CAN.c: 244: if (ruote[3].angolo <= periferiche_Ruote[3].angoloAttuale){
	movlb	1	; () banked
	movf	(0+(_periferiche_Ruote+01Bh))&0ffh,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:i2___ftge@ff1)
	movff	1+?___lbtoft,(c:i2___ftge@ff1+1)
	movff	2+?___lbtoft,(c:i2___ftge@ff1+2)
	movff	0+(_ruote+025h),(c:i2___ftge@ff2)
	movff	1+(_ruote+025h),(c:i2___ftge@ff2+1)
	movff	2+(_ruote+025h),(c:i2___ftge@ff2+2)
	call	i2___ftge	;wreg free
	btfss	status,0
	goto	i2u333_41
	goto	i2u333_40
i2u333_41:
	goto	i2l359
i2u333_40:
	line	245
	
i2l3488:
;CAN.c: 245: posizioneRot4 = 0;
	bcf	(_posizioneRot4/8),c,(_posizioneRot4)&7
	line	246
;CAN.c: 246: }
	goto	i2l326
	line	247
	
i2l359:
	line	248
;CAN.c: 247: else{
;CAN.c: 248: posizioneRot4 = 1;
	bsf	(_posizioneRot4/8),c,(_posizioneRot4)&7
	goto	i2l326
	line	249
	
i2l360:
	line	250
;CAN.c: 249: }
;CAN.c: 250: break;
	goto	i2l326
	line	251
;CAN.c: 251: case 0x4A:
	
i2l361:
	line	252
;CAN.c: 252: rot6_online = 1;
	bsf	(_rot6_online/8),c,(_rot6_online)&7
	line	253
	
i2l3490:
;CAN.c: 253: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u334_41
	goto	i2u334_40
i2u334_41:
	goto	i2l362
i2u334_40:
	goto	i2l326
	line	254
	
i2l3492:
;CAN.c: 254: return;
	goto	i2l326
	line	255
	
i2l362:
	line	256
;CAN.c: 255: }
;CAN.c: 256: periferiche_Ruote[5].angoloAttuale = canRX[0];
	movff	(c:canRX@canRX),0+(_periferiche_Ruote+029h)
	line	257
	
i2l3494:
;CAN.c: 257: if (ruote[5].angolo <= periferiche_Ruote[5].angoloAttuale){
	movlb	1	; () banked
	movf	(0+(_periferiche_Ruote+029h))&0ffh,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:i2___ftge@ff1)
	movff	1+?___lbtoft,(c:i2___ftge@ff1+1)
	movff	2+?___lbtoft,(c:i2___ftge@ff1+2)
	movff	0+(_ruote+039h),(c:i2___ftge@ff2)
	movff	1+(_ruote+039h),(c:i2___ftge@ff2+1)
	movff	2+(_ruote+039h),(c:i2___ftge@ff2+2)
	call	i2___ftge	;wreg free
	btfss	status,0
	goto	i2u335_41
	goto	i2u335_40
i2u335_41:
	goto	i2l363
i2u335_40:
	line	258
	
i2l3496:
;CAN.c: 258: posizioneRot6 = 0;
	bcf	(_posizioneRot6/8),c,(_posizioneRot6)&7
	line	259
;CAN.c: 259: }
	goto	i2l326
	line	260
	
i2l363:
	line	261
;CAN.c: 260: else{
;CAN.c: 261: posizioneRot6 = 1;
	bsf	(_posizioneRot6/8),c,(_posizioneRot6)&7
	goto	i2l326
	line	262
	
i2l364:
	line	263
;CAN.c: 262: }
;CAN.c: 263: break;
	goto	i2l326
	line	264
;CAN.c: 264: case 0x4B:
	
i2l365:
	line	265
;CAN.c: 265: trapano_online = 1;
	bsf	(_trapano_online/8),c,(_trapano_online)&7
	line	266
	
i2l3498:
;CAN.c: 266: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u336_41
	goto	i2u336_40
i2u336_41:
	goto	i2l366
i2u336_40:
	goto	i2l326
	line	267
	
i2l3500:
;CAN.c: 267: return;
	goto	i2l326
	line	268
	
i2l366:
	line	269
;CAN.c: 268: }
;CAN.c: 269: periferiche_Trapano = canRX[0];
	movff	(c:canRX@canRX),(c:_periferiche_Trapano)
	line	270
	
i2l3502:
;CAN.c: 270: if (trapano == periferiche_Trapano){
	movf	((c:_periferiche_Trapano)),c,w
xorwf	((c:_trapano)),c,w
	btfss	status,2
	goto	i2u337_41
	goto	i2u337_40

i2u337_41:
	goto	i2l367
i2u337_40:
	line	271
	
i2l3504:
;CAN.c: 271: posizioneTrapano = 0;
	bcf	(_posizioneTrapano/8),c,(_posizioneTrapano)&7
	line	272
;CAN.c: 272: }
	goto	i2l326
	line	273
	
i2l367:
	line	274
;CAN.c: 273: else{
;CAN.c: 274: posizioneTrapano = 1;
	bsf	(_posizioneTrapano/8),c,(_posizioneTrapano)&7
	goto	i2l326
	line	275
	
i2l368:
	line	276
;CAN.c: 275: }
;CAN.c: 276: break;
	goto	i2l326
	line	277
;CAN.c: 277: case 0x4C:
	
i2l369:
	line	278
;CAN.c: 278: camera_online = 1;
	bsf	(_camera_online/8),c,(_camera_online)&7
	line	279
	
i2l3506:
;CAN.c: 279: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u338_41
	goto	i2u338_40
i2u338_41:
	goto	i2l370
i2u338_40:
	goto	i2l326
	line	280
	
i2l3508:
;CAN.c: 280: return;
	goto	i2l326
	line	281
	
i2l370:
	line	282
;CAN.c: 281: }
;CAN.c: 282: periferiche_CameraXY[0] = canRX[0];
	movff	(c:canRX@canRX),(c:_periferiche_CameraXY)
	line	283
;CAN.c: 283: periferiche_CameraXY[1] = canRX[1];
	movff	0+((c:canRX@canRX)+01h),0+((c:_periferiche_CameraXY)+01h)
	line	284
	
i2l3510:
;CAN.c: 284: if (cameraXY[0] == periferiche_CameraXY[0]){
	movf	((c:_periferiche_CameraXY)),c,w
xorwf	((c:_cameraXY)),c,w
	btfss	status,2
	goto	i2u339_41
	goto	i2u339_40

i2u339_41:
	goto	i2l371
i2u339_40:
	line	285
	
i2l3512:
;CAN.c: 285: posizioneCameraX = 0;
	bcf	(_posizioneCameraX/8),c,(_posizioneCameraX)&7
	line	286
;CAN.c: 286: }
	goto	i2l3514
	line	287
	
i2l371:
	line	288
;CAN.c: 287: else{
;CAN.c: 288: posizioneCameraX = 1;
	bsf	(_posizioneCameraX/8),c,(_posizioneCameraX)&7
	goto	i2l3514
	line	289
	
i2l372:
	line	290
	
i2l3514:
;CAN.c: 289: }
;CAN.c: 290: if (cameraXY[1] == periferiche_CameraXY[1]){
	movf	(0+((c:_periferiche_CameraXY)+01h)),c,w
xorwf	(0+((c:_cameraXY)+01h)),c,w
	btfss	status,2
	goto	i2u340_41
	goto	i2u340_40

i2u340_41:
	goto	i2l373
i2u340_40:
	line	291
	
i2l3516:
;CAN.c: 291: posizioneCameraY = 0;
	bcf	(_posizioneCameraY/8),c,(_posizioneCameraY)&7
	line	292
;CAN.c: 292: }
	goto	i2l326
	line	293
	
i2l373:
	line	294
;CAN.c: 293: else{
;CAN.c: 294: posizioneCameraY = 1;
	bsf	(_posizioneCameraY/8),c,(_posizioneCameraY)&7
	goto	i2l326
	line	295
	
i2l374:
	line	296
;CAN.c: 295: }
;CAN.c: 296: break;
	goto	i2l326
	line	297
;CAN.c: 297: case 0x4D:
	
i2l375:
	line	298
;CAN.c: 298: sensori_online = 1;
	bsf	(_sensori_online/8),c,(_sensori_online)&7
	goto	i2l326
	line	299
	
i2l3518:
	goto	i2l326
	line	300
	
i2l3520:
;CAN.c: 300: return;
	goto	i2l326
	line	301
	
i2l376:
	line	302
;CAN.c: 301: }
;CAN.c: 302: break;
	goto	i2l326
	line	303
;CAN.c: 303: case 0x4E:
	
i2l377:
	line	304
;CAN.c: 304: alimentazione_online = 1;
	bsf	(_alimentazione_online/8),c,(_alimentazione_online)&7
	line	305
	
i2l3522:
;CAN.c: 305: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u341_41
	goto	i2u341_40
i2u341_41:
	goto	i2l378
i2u341_40:
	goto	i2l326
	line	306
	
i2l3524:
;CAN.c: 306: return;
	goto	i2l326
	line	307
	
i2l378:
	line	308
;CAN.c: 307: }
;CAN.c: 308: periferiche_statoBatterie = canRX[0];
	movff	(c:canRX@canRX),(c:_periferiche_statoBatterie)
	line	309
;CAN.c: 309: break;
	goto	i2l326
	line	310
;CAN.c: 310: case 0x4F:
	
i2l379:
	line	311
;CAN.c: 311: cassetto_online = 1;
	bsf	(_cassetto_online/8),c,(_cassetto_online)&7
	line	312
	
i2l3526:
;CAN.c: 312: if (DLC == 0){
	movf	((c:canRX@DLC)),c,w
	btfss	status,2
	goto	i2u342_41
	goto	i2u342_40
i2u342_41:
	goto	i2l380
i2u342_40:
	goto	i2l326
	line	313
	
i2l3528:
;CAN.c: 313: return;
	goto	i2l326
	line	314
	
i2l380:
	line	315
;CAN.c: 314: }
;CAN.c: 315: periferiche_Cassetto = canRX[0];
	movff	(c:canRX@canRX),(c:_periferiche_Cassetto)
	line	316
	
i2l3530:
;CAN.c: 316: if (periferiche_Cassetto == 0 && cassetto == 1){
	movf	((c:_periferiche_Cassetto)),c,w
	btfss	status,2
	goto	i2u343_41
	goto	i2u343_40
i2u343_41:
	goto	i2l381
i2u343_40:
	
i2l3532:
		decf	((c:_cassetto)),c,w
	btfss	status,2
	goto	i2u344_41
	goto	i2u344_40

i2u344_41:
	goto	i2l381
i2u344_40:
	line	318
	
i2l3534:
;CAN.c: 318: posizioneCassetto = 0;
	bcf	(_posizioneCassetto/8),c,(_posizioneCassetto)&7
	line	319
;CAN.c: 319: }
	goto	i2l326
	line	320
	
i2l381:
	line	321
;CAN.c: 320: else{
;CAN.c: 321: posizioneCassetto = 1;
	bsf	(_posizioneCassetto/8),c,(_posizioneCassetto)&7
	goto	i2l326
	line	322
	
i2l382:
	line	323
;CAN.c: 322: }
;CAN.c: 323: break;
	goto	i2l326
	line	324
;CAN.c: 324: default :
	
i2l383:
	line	325
;CAN.c: 325: break;
	goto	i2l326
	line	326
	
i2l3536:
;CAN.c: 326: }
	goto	i2l326
	line	88
	
i2l307:
	
i2l3538:
	movf	((c:canRX@ID)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 30, Range of values is 1 to 79
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           91    46 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	i2l326
	xorlw	2^1	; case 2
	skipnz
	goto	i2l326
	xorlw	3^2	; case 3
	skipnz
	goto	i2l326
	xorlw	4^3	; case 4
	skipnz
	goto	i2l326
	xorlw	5^4	; case 5
	skipnz
	goto	i2l326
	xorlw	6^5	; case 6
	skipnz
	goto	i2l326
	xorlw	7^6	; case 7
	skipnz
	goto	i2l326
	xorlw	8^7	; case 8
	skipnz
	goto	i2l326
	xorlw	9^8	; case 9
	skipnz
	goto	i2l326
	xorlw	10^9	; case 10
	skipnz
	goto	i2l326
	xorlw	11^10	; case 11
	skipnz
	goto	i2l326
	xorlw	12^11	; case 12
	skipnz
	goto	i2l326
	xorlw	13^12	; case 13
	skipnz
	goto	i2l326
	xorlw	14^13	; case 14
	skipnz
	goto	i2l326
	xorlw	15^14	; case 15
	skipnz
	goto	i2l326
	xorlw	65^15	; case 65
	skipnz
	goto	i2l324
	xorlw	66^65	; case 66
	skipnz
	goto	i2l329
	xorlw	67^66	; case 67
	skipnz
	goto	i2l333
	xorlw	68^67	; case 68
	skipnz
	goto	i2l337
	xorlw	69^68	; case 69
	skipnz
	goto	i2l341
	xorlw	70^69	; case 70
	skipnz
	goto	i2l345
	xorlw	71^70	; case 71
	skipnz
	goto	i2l349
	xorlw	72^71	; case 72
	skipnz
	goto	i2l353
	xorlw	73^72	; case 73
	skipnz
	goto	i2l357
	xorlw	74^73	; case 74
	skipnz
	goto	i2l361
	xorlw	75^74	; case 75
	skipnz
	goto	i2l365
	xorlw	76^75	; case 76
	skipnz
	goto	i2l369
	xorlw	77^76	; case 77
	skipnz
	goto	i2l375
	xorlw	78^77	; case 78
	skipnz
	goto	i2l377
	xorlw	79^78	; case 79
	skipnz
	goto	i2l379
	goto	i2l326

	line	326
	
i2l309:
	line	327
	
i2l326:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_canRX
	__end_of_canRX:
	signat	_canRX,88
	global	i2___ftge

;; *************** function i2___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3   12[COMRAM] float 
;;  ff2             3   15[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_canRX
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftge.c"
	line	4
global __ptext35
__ptext35:
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\ftge.c"
	line	4
	global	__size_ofi2___ftge
	__size_ofi2___ftge	equ	__end_ofi2___ftge-i2___ftge
	
i2___ftge:
;incstack = 0
	opt	stack 22
	line	6
	
i2l3346:
	
	btfss	((c:i2___ftge@ff1+2)),c,(23)&7
	goto	i2u312_41
	goto	i2u312_40
i2u312_41:
	goto	i2l3350
i2u312_40:
	line	7
	
i2l3348:
	movff	(c:i2___ftge@ff1),??i2___ftge+0+0
	movff	(c:i2___ftge@ff1+1),??i2___ftge+0+0+1
	movff	(c:i2___ftge@ff1+2),??i2___ftge+0+0+2
	comf	(??i2___ftge+0+0),c
	comf	(??i2___ftge+0+1),c
	comf	(??i2___ftge+0+2),c
	incf	(??i2___ftge+0+0),c
	movlw	0
	addwfc	(??i2___ftge+0+1),c
	addwfc	(??i2___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??i2___ftge+0+0),c,w
	movwf	((c:i2___ftge@ff1)),c
	movlw	0
	addwfc	(??i2___ftge+0+1),c,w
	movwf	1+((c:i2___ftge@ff1)),c
	
	movlw	080h
	addwfc	(??i2___ftge+0+2),c,w
	movwf	2+((c:i2___ftge@ff1)),c
	goto	i2l3350
	
i2l892:
	line	8
	
i2l3350:
	
	btfss	((c:i2___ftge@ff2+2)),c,(23)&7
	goto	i2u313_41
	goto	i2u313_40
i2u313_41:
	goto	i2l3354
i2u313_40:
	line	9
	
i2l3352:
	movff	(c:i2___ftge@ff2),??i2___ftge+0+0
	movff	(c:i2___ftge@ff2+1),??i2___ftge+0+0+1
	movff	(c:i2___ftge@ff2+2),??i2___ftge+0+0+2
	comf	(??i2___ftge+0+0),c
	comf	(??i2___ftge+0+1),c
	comf	(??i2___ftge+0+2),c
	incf	(??i2___ftge+0+0),c
	movlw	0
	addwfc	(??i2___ftge+0+1),c
	addwfc	(??i2___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??i2___ftge+0+0),c,w
	movwf	((c:i2___ftge@ff2)),c
	movlw	0
	addwfc	(??i2___ftge+0+1),c,w
	movwf	1+((c:i2___ftge@ff2)),c
	
	movlw	080h
	addwfc	(??i2___ftge+0+2),c,w
	movwf	2+((c:i2___ftge@ff2)),c
	goto	i2l3354
	
i2l893:
	line	10
	
i2l3354:
	movlw	low(0800000h)
	xorwf	((c:i2___ftge@ff1)),c
	movlw	high(0800000h)
	xorwf	((c:i2___ftge@ff1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:i2___ftge@ff1+2)),c

	line	11
	
i2l3356:
	movlw	low(0800000h)
	xorwf	((c:i2___ftge@ff2)),c
	movlw	high(0800000h)
	xorwf	((c:i2___ftge@ff2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:i2___ftge@ff2+2)),c

	line	12
		movf	((c:i2___ftge@ff2)),c,w
	subwf	((c:i2___ftge@ff1)),c,w
	movf	((c:i2___ftge@ff2+1)),c,w
	subwfb	((c:i2___ftge@ff1+1)),c,w
	movf	((c:i2___ftge@ff2+2)),c,w
	subwfb	((c:i2___ftge@ff1+2)),c,w
	btfsc	status,0
	goto	i2u314_41
	goto	i2u314_40

i2u314_41:
	goto	i2l3360
i2u314_40:
	
i2l3358:
	bcf	status,0
	goto	i2l894
	
i2l2682:
	
i2l3360:
	bsf	status,0
	goto	i2l894
	
i2l2684:
	goto	i2l894
	
i2l3362:
	line	13
	
i2l894:
	return	;funcret
	opt stack 0
GLOBAL	__end_ofi2___ftge
	__end_ofi2___ftge:
	signat	i2___ftge,88
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i2___ftpack
;; This function is called by:
;;		_canRX
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\lwtoft.c"
	line	28
global __ptext36
__ptext36:
psect	text36
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:
;incstack = 0
	opt	stack 21
	line	30
	
i2l3342:
	movff	(c:___lwtoft@c),(c:i2___ftpack@arg)
	movff	(c:___lwtoft@c+1),(c:i2___ftpack@arg+1)
	clrf	((c:i2___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:i2___ftpack@exp)),c
	movlw	low(0)
	movwf	((c:i2___ftpack@sign)),c
	call	i2___ftpack	;wreg free
	movff	0+?i2___ftpack,(c:?___lwtoft)
	movff	1+?i2___ftpack,(c:?___lwtoft+1)
	movff	2+?i2___ftpack,(c:?___lwtoft+2)
	goto	i2l1035
	
i2l3344:
	line	31
	
i2l1035:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___lbtoft

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 27 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i2___ftpack
;; This function is called by:
;;		_canRX
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\lbtoft.c"
	line	27
global __ptext37
__ptext37:
psect	text37
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\lbtoft.c"
	line	27
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:
;incstack = 0
	opt	stack 21
;___lbtoft@c stored from wreg
	movwf	((c:___lbtoft@c)),c
	line	29
	
i2l3338:
	movf	((c:___lbtoft@c)),c,w
	movwf	((c:i2___ftpack@arg)),c
	clrf	((c:i2___ftpack@arg+1)),c
	clrf	((c:i2___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:i2___ftpack@exp)),c
	movlw	low(0)
	movwf	((c:i2___ftpack@sign)),c
	call	i2___ftpack	;wreg free
	movff	0+?i2___ftpack,(c:?___lbtoft)
	movff	1+?i2___ftpack,(c:?___lbtoft+1)
	movff	2+?i2___ftpack,(c:?___lbtoft+2)
	goto	i2l957
	
i2l3340:
	line	30
	
i2l957:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
	signat	___lbtoft,4219
	global	i2___ftpack

;; *************** function i2___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMRAM] unsigned um
;;  exp             1    3[COMRAM] unsigned char 
;;  sign            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___lbtoft
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\float.c"
	line	62
global __ptext38
__ptext38:
psect	text38
	file	"C:\Program Files (x86)\Microchip\xc8\v1.35\sources\common\float.c"
	line	62
	global	__size_ofi2___ftpack
	__size_ofi2___ftpack	equ	__end_ofi2___ftpack-i2___ftpack
	
i2___ftpack:
;incstack = 0
	opt	stack 21
	line	64
	
i2l3168:
	movf	((c:i2___ftpack@exp)),c,w
	btfsc	status,2
	goto	i2u288_41
	goto	i2u288_40
i2u288_41:
	goto	i2l3172
i2u288_40:
	
i2l3170:
	movf	((c:i2___ftpack@arg)),c,w
iorwf	((c:i2___ftpack@arg+1)),c,w
iorwf	((c:i2___ftpack@arg+2)),c,w
	btfss	status,2
	goto	i2u289_41
	goto	i2u289_40

i2u289_41:
	goto	i2l3178
i2u289_40:
	goto	i2l3172
	
i2l818:
	line	65
	
i2l3172:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?i2___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?i2___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?i2___ftpack+2)),c

	goto	i2l819
	
i2l3174:
	goto	i2l819
	
i2l816:
	line	66
	goto	i2l3178
	
i2l821:
	line	67
	
i2l3176:
	incf	((c:i2___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:i2___ftpack@arg+2)),c
	rrcf	((c:i2___ftpack@arg+1)),c
	rrcf	((c:i2___ftpack@arg)),c
	goto	i2l3178
	line	69
	
i2l820:
	line	66
	
i2l3178:
	movlw	low(0FE0000h)
	andwf	((c:i2___ftpack@arg)),c,w
	movwf	(??i2___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:i2___ftpack@arg+1)),c,w
	movwf	1+(??i2___ftpack+0+0)&0ffh,c
	
	movlw	0FEh
	andwf	((c:i2___ftpack@arg+2)),c,w
	movwf	2+(??i2___ftpack+0+0)&0ffh,c

	movf	(??i2___ftpack+0+0),c,w
iorwf	(??i2___ftpack+0+1),c,w
iorwf	(??i2___ftpack+0+2),c,w
	btfss	status,2
	goto	i2u290_41
	goto	i2u290_40

i2u290_41:
	goto	i2l3176
i2u290_40:
	goto	i2l3184
	
i2l822:
	line	70
	goto	i2l3184
	
i2l824:
	line	71
	
i2l3180:
	incf	((c:i2___ftpack@exp)),c
	line	72
	
i2l3182:
	movlw	low(01h)
	addwf	((c:i2___ftpack@arg)),c
	movlw	high(01h)
	addwfc	((c:i2___ftpack@arg+1)),c
	movlw	low highword(01h)
	addwfc	((c:i2___ftpack@arg+2)),c

	line	73
	bcf	status,0
	rrcf	((c:i2___ftpack@arg+2)),c
	rrcf	((c:i2___ftpack@arg+1)),c
	rrcf	((c:i2___ftpack@arg)),c
	goto	i2l3184
	line	74
	
i2l823:
	line	70
	
i2l3184:
	movlw	low(0FF0000h)
	andwf	((c:i2___ftpack@arg)),c,w
	movwf	(??i2___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:i2___ftpack@arg+1)),c,w
	movwf	1+(??i2___ftpack+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:i2___ftpack@arg+2)),c,w
	movwf	2+(??i2___ftpack+0+0)&0ffh,c

	movf	(??i2___ftpack+0+0),c,w
iorwf	(??i2___ftpack+0+1),c,w
iorwf	(??i2___ftpack+0+2),c,w
	btfss	status,2
	goto	i2u291_41
	goto	i2u291_40

i2u291_41:
	goto	i2l3180
i2u291_40:
	goto	i2l3188
	
i2l825:
	line	75
	goto	i2l3188
	
i2l827:
	line	76
	
i2l3186:
	decf	((c:i2___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:i2___ftpack@arg)),c
	rlcf	((c:i2___ftpack@arg+1)),c
	rlcf	((c:i2___ftpack@arg+2)),c
	goto	i2l3188
	line	78
	
i2l826:
	line	75
	
i2l3188:
	
	btfsc	((c:i2___ftpack@arg+1)),c,(15)&7
	goto	i2u292_41
	goto	i2u292_40
i2u292_41:
	goto	i2l830
i2u292_40:
	
i2l3190:
		movlw	02h-0
	cpfslt	((c:i2___ftpack@exp)),c
	goto	i2u293_41
	goto	i2u293_40

i2u293_41:
	goto	i2l3186
i2u293_40:
	goto	i2l830
	
i2l829:
	
i2l830:
	line	79
	
	btfsc	((c:i2___ftpack@exp)),c,(0)&7
	goto	i2u294_41
	goto	i2u294_40
i2u294_41:
	goto	i2l3194
i2u294_40:
	line	80
	
i2l3192:
	bcf	(0+(15/8)+(c:i2___ftpack@arg)),c,(15)&7
	goto	i2l3194
	
i2l831:
	line	81
	
i2l3194:
	bcf status,0
	rrcf	((c:i2___ftpack@exp)),c

	line	82
	movf	((c:i2___ftpack@exp)),c,w
	iorwf	((c:i2___ftpack@arg+2)),c

	line	83
	
i2l3196:
	movf	((c:i2___ftpack@sign)),c,w
	btfsc	status,2
	goto	i2u295_41
	goto	i2u295_40
i2u295_41:
	goto	i2l3200
i2u295_40:
	line	84
	
i2l3198:
	bsf	(0+(23/8)+(c:i2___ftpack@arg)),c,(23)&7
	goto	i2l3200
	
i2l832:
	line	85
	
i2l3200:
	movff	(c:i2___ftpack@arg),(c:?i2___ftpack)
	movff	(c:i2___ftpack@arg+1),(c:?i2___ftpack+1)
	movff	(c:i2___ftpack@arg+2),(c:?i2___ftpack+2)
	goto	i2l819
	
i2l3202:
	line	86
	
i2l819:
	return	;funcret
	opt stack 0
GLOBAL	__end_ofi2___ftpack
	__end_ofi2___ftpack:
	signat	i2___ftpack,91
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	end
