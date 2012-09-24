;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Aug  9 2009) (UNIX)
; This file was generated Thu Sep 20 19:19:21 2012
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f2550

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _N
	global _loopvar
	global _phase
	global _needreordering
	global _timingindex
	global _timedivision
	global _timings
	global _activatedservos
	global _servovalues
	global _digitalwrite
	global _digitalread
	global _pinmode
	global _servos_init
	global _ServoAttach
	global _ServoDetach
	global _ServoWrite
	global _ServoRead
	global _ServoMinimumPulse
	global _ServoMaximumPulse
	global _servos_interrupt
	global _Delayms
	global _Delayus
	global _epap_in
	global _epap_out
	global _epapin_init
	global _epapout_init
	global _setup
	global _adelante
	global _atras
	global _izquierda
	global _derecha
	global _loop
	global _pinguino_main
	global _high_priority_isr
	global _low_priority_isr
	global _mask
	global _port
	global _servomasks

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _SPPDATAbits
	extern _SPPCFGbits
	extern _SPPEPSbits
	extern _SPPCONbits
	extern _UFRMLbits
	extern _UFRMHbits
	extern _UIRbits
	extern _UIEbits
	extern _UEIRbits
	extern _UEIEbits
	extern _USTATbits
	extern _UCONbits
	extern _UADDRbits
	extern _UCFGbits
	extern _UEP0bits
	extern _UEP1bits
	extern _UEP2bits
	extern _UEP3bits
	extern _UEP4bits
	extern _UEP5bits
	extern _UEP6bits
	extern _UEP7bits
	extern _UEP8bits
	extern _UEP9bits
	extern _UEP10bits
	extern _UEP11bits
	extern _UEP12bits
	extern _UEP13bits
	extern _UEP14bits
	extern _UEP15bits
	extern _PORTAbits
	extern _PORTBbits
	extern _PORTCbits
	extern _PORTDbits
	extern _PORTEbits
	extern _LATAbits
	extern _LATBbits
	extern _LATCbits
	extern _LATDbits
	extern _LATEbits
	extern _TRISAbits
	extern _TRISBbits
	extern _TRISCbits
	extern _TRISDbits
	extern _TRISEbits
	extern _OSCTUNEbits
	extern _PIE1bits
	extern _PIR1bits
	extern _IPR1bits
	extern _PIE2bits
	extern _PIR2bits
	extern _IPR2bits
	extern _EECON1bits
	extern _RCSTAbits
	extern _TXSTAbits
	extern _T3CONbits
	extern _CMCONbits
	extern _CVRCONbits
	extern _ECCP1ASbits
	extern _ECCP1DELbits
	extern _BAUDCONbits
	extern _CCP2CONbits
	extern _CCP1CONbits
	extern _ADCON2bits
	extern _ADCON1bits
	extern _ADCON0bits
	extern _SSPCON2bits
	extern _SSPCON1bits
	extern _SSPSTATbits
	extern _T2CONbits
	extern _T1CONbits
	extern _RCONbits
	extern _WDTCONbits
	extern _HLVDCONbits
	extern _OSCCONbits
	extern _T0CONbits
	extern _STATUSbits
	extern _FSR2Hbits
	extern _BSRbits
	extern _FSR1Hbits
	extern _FSR0Hbits
	extern _INTCON3bits
	extern _INTCON2bits
	extern _INTCONbits
	extern _TBLPTRUbits
	extern _PCLATHbits
	extern _PCLATUbits
	extern _STKPTRbits
	extern _TOSUbits
	extern _usb_device_state
	extern _usb_active_cfg
	extern _usb_active_alt_setting
	extern _SPPDATA
	extern _SPPCFG
	extern _SPPEPS
	extern _SPPCON
	extern _UFRML
	extern _UFRMH
	extern _UIR
	extern _UIE
	extern _UEIR
	extern _UEIE
	extern _USTAT
	extern _UCON
	extern _UADDR
	extern _UCFG
	extern _UEP0
	extern _UEP1
	extern _UEP2
	extern _UEP3
	extern _UEP4
	extern _UEP5
	extern _UEP6
	extern _UEP7
	extern _UEP8
	extern _UEP9
	extern _UEP10
	extern _UEP11
	extern _UEP12
	extern _UEP13
	extern _UEP14
	extern _UEP15
	extern _PORTA
	extern _PORTB
	extern _PORTC
	extern _PORTD
	extern _PORTE
	extern _LATA
	extern _LATB
	extern _LATC
	extern _LATD
	extern _LATE
	extern _TRISA
	extern _TRISB
	extern _TRISC
	extern _TRISD
	extern _TRISE
	extern _OSCTUNE
	extern _PIE1
	extern _PIR1
	extern _IPR1
	extern _PIE2
	extern _PIR2
	extern _IPR2
	extern _EECON1
	extern _EECON2
	extern _EEDATA
	extern _EEADR
	extern _RCSTA
	extern _TXSTA
	extern _TXREG
	extern _RCREG
	extern _SPBRG
	extern _SPBRGH
	extern _T3CON
	extern _TMR3L
	extern _TMR3H
	extern _CMCON
	extern _CVRCON
	extern _ECCP1AS
	extern _ECCP1DEL
	extern _BAUDCON
	extern _CCP2CON
	extern _CCPR2L
	extern _CCPR2H
	extern _CCP1CON
	extern _CCPR1L
	extern _CCPR1H
	extern _ADCON2
	extern _ADCON1
	extern _ADCON0
	extern _ADRESL
	extern _ADRESH
	extern _SSPCON2
	extern _SSPCON1
	extern _SSPSTAT
	extern _SSPADD
	extern _SSPBUF
	extern _T2CON
	extern _PR2
	extern _TMR2
	extern _T1CON
	extern _TMR1L
	extern _TMR1H
	extern _RCON
	extern _WDTCON
	extern _HLVDCON
	extern _OSCCON
	extern _T0CON
	extern _TMR0L
	extern _TMR0H
	extern _STATUS
	extern _FSR2L
	extern _FSR2H
	extern _PLUSW2
	extern _PREINC2
	extern _POSTDEC2
	extern _POSTINC2
	extern _INDF2
	extern _BSR
	extern _FSR1L
	extern _FSR1H
	extern _PLUSW1
	extern _PREINC1
	extern _POSTDEC1
	extern _POSTINC1
	extern _INDF1
	extern _WREG
	extern _FSR0L
	extern _FSR0H
	extern _PLUSW0
	extern _PREINC0
	extern _POSTDEC0
	extern _POSTINC0
	extern _INDF0
	extern _INTCON3
	extern _INTCON2
	extern _INTCON
	extern _PRODL
	extern _PRODH
	extern _TABLAT
	extern _TBLPTRL
	extern _TBLPTRH
	extern _TBLPTRU
	extern _PCL
	extern _PCLATH
	extern _PCLATU
	extern _STKPTR
	extern _TOSL
	extern _TOSH
	extern _TOSU
	extern _delay10ktcy
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
PCL	equ	0xff9
PCLATH	equ	0xffa
PCLATU	equ	0xffb
WREG	equ	0xfe8
BSR	equ	0xfe0
TBLPTRL	equ	0xff6
TBLPTRH	equ	0xff7
TBLPTRU	equ	0xff8
TABLAT	equ	0xff5
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3
PRODH	equ	0xff4


	idata
_phase	db	0x00
_needreordering	db	0x00
_timedivision	db	0x00
_activatedservos	db	0x00, 0x00, 0x00
_N	db	0x00, 0x00


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x09	res	1

udata_main_0	udata
_loopvar	res	1

udata_main_1	udata
_servovalues	res	18

udata_main_2	udata
_timingindex	res	1

udata_main_3	udata
_timings	res	72

udata_main_4	udata
_SortServoTimings_mascaratotal_1_1	res	3

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; ; Starting pCode block
S_main__high_priority_isr	code	0X002020
_high_priority_isr:
;	.line	96; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	void high_priority_isr(void) interrupt
	MOVFF	WREG, POSTDEC1
	MOVFF	STATUS, POSTDEC1
	MOVFF	BSR, POSTDEC1
	MOVFF	PRODL, POSTDEC1
	MOVFF	PRODH, POSTDEC1
	MOVFF	FSR0L, POSTDEC1
	MOVFF	FSR0H, POSTDEC1
	MOVFF	PCLATH, POSTDEC1
	MOVFF	PCLATU, POSTDEC1
;	.line	132; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	servos_interrupt();
	CALL	_servos_interrupt
	MOVFF	PREINC1, PCLATU
	MOVFF	PREINC1, PCLATH
	MOVFF	PREINC1, FSR0H
	MOVFF	PREINC1, FSR0L
	MOVFF	PREINC1, PRODH
	MOVFF	PREINC1, PRODL
	MOVFF	PREINC1, BSR
	MOVFF	PREINC1, STATUS
	MOVFF	PREINC1, WREG
	RETFIE	

; ; Starting pCode block
S_main__low_priority_isr	code	0X004000
_low_priority_isr:
;	.line	140; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	void low_priority_isr(void) interrupt
	MOVFF	WREG, POSTDEC1
	MOVFF	STATUS, POSTDEC1
	MOVFF	BSR, POSTDEC1
	MOVFF	PRODL, POSTDEC1
	MOVFF	PRODH, POSTDEC1
	MOVFF	FSR0L, POSTDEC1
	MOVFF	FSR0H, POSTDEC1
	MOVFF	PCLATH, POSTDEC1
	MOVFF	PCLATU, POSTDEC1
;	.line	142; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	}
	MOVFF	PREINC1, PCLATU
	MOVFF	PREINC1, PCLATH
	MOVFF	PREINC1, FSR0H
	MOVFF	PREINC1, FSR0L
	MOVFF	PREINC1, PRODH
	MOVFF	PREINC1, PRODL
	MOVFF	PREINC1, BSR
	MOVFF	PREINC1, STATUS
	MOVFF	PREINC1, WREG
	RETFIE	

; I code from now on!
; ; Starting pCode block
S_main__pinguino_main	code
_pinguino_main:
;	.line	52; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	PIE1=0;
	CLRF	_PIE1
;	.line	53; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	PIE2=0;
	CLRF	_PIE2
;	.line	54; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	ADCON1=0x0F;
	MOVLW	0x0f
	MOVWF	_ADCON1
;	.line	59; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	setup();
	CALL	_setup
;	.line	67; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	servos_init();
	CALL	_servos_init
;	.line	83; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	INTCONbits.PEIE=1;
	BSF	_INTCONbits, 6
;	.line	84; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	INTCONbits.GIE=1;
	BSF	_INTCONbits, 7
_00489_DS_:
;	.line	89; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	loop();
	CALL	_loop
	BRA	_00489_DS_
	RETURN	

; ; Starting pCode block
S_main__loop	code
_loop:
;	.line	56; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	void loop() {
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
;	.line	60; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	if (!digitalread(I)) izquierda();
	CLRF	POSTDEC1
	MOVLW	0x08
	MOVWF	POSTDEC1
	CALL	_digitalread
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x02
	ADDWF	FSR1L, F
	MOVF	r0x00, W
; #	IORWF	r0x01, W
; #	BTFSS	STATUS, 2
; #	GOTO	_00480_DS_
; #	CALL	_izquierda
; #	MOVLW	0x00
;	.line	62; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	if (!digitalread(D))  derecha();
	IORWF	r0x01, W
	BTFSC	STATUS, 2
	CALL	_izquierda
	CLRF	POSTDEC1
	MOVLW	0x09
	MOVWF	POSTDEC1
	CALL	_digitalread
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x02
	ADDWF	FSR1L, F
	MOVF	r0x00, W
; #	IORWF	r0x01, W
; #	BTFSS	STATUS, 2
; #	GOTO	_00482_DS_
; #	CALL	_derecha
; #	MOVLW	0xf4
;	.line	63; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoWrite(LI,500); // enciende los led y varia su brillo
	IORWF	r0x01, W
	BTFSC	STATUS, 2
	CALL	_derecha
	MOVLW	0xf4
	MOVWF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVLW	0x02
	ADDWF	FSR1L, F
;	.line	64; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoWrite(LD,20);
	MOVLW	0x14
	MOVWF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVLW	0x02
	ADDWF	FSR1L, F
;	.line	65; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	adelante();
	CALL	_adelante
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__derecha	code
_derecha:
;	.line	50; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	atras();
	CALL	_atras
;	.line	51; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoWrite(RI,250);
	MOVLW	0xfa
	MOVWF	POSTDEC1
	MOVLW	0x07
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVLW	0x02
	ADDWF	FSR1L, F
;	.line	52; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoWrite(RD,250);
	MOVLW	0xfa
	MOVWF	POSTDEC1
	MOVLW	0x06
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVLW	0x02
	ADDWF	FSR1L, F
;	.line	53; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	Delayms (tempo);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVWF	POSTDEC1
	MOVLW	0xee
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
	RETURN	

; ; Starting pCode block
S_main__izquierda	code
_izquierda:
;	.line	40; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	atras();
	CALL	_atras
;	.line	41; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoWrite(RI,50);
	MOVLW	0x32
	MOVWF	POSTDEC1
	MOVLW	0x07
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVLW	0x02
	ADDWF	FSR1L, F
;	.line	42; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoWrite(RD,50);
	MOVLW	0x32
	MOVWF	POSTDEC1
	MOVLW	0x06
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVLW	0x02
	ADDWF	FSR1L, F
;	.line	43; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	Delayms (tempo);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVWF	POSTDEC1
	MOVLW	0xee
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
	BANKSEL	_N
;	.line	44; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	N = 0;
	CLRF	_N, B
; removed redundant BANKSEL
	CLRF	(_N + 1), B
	RETURN	

; ; Starting pCode block
S_main__atras	code
_atras:
;	.line	34; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoWrite(RI,50);
	MOVLW	0x32
	MOVWF	POSTDEC1
	MOVLW	0x07
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVLW	0x02
	ADDWF	FSR1L, F
;	.line	35; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoWrite(RD,250);
	MOVLW	0xfa
	MOVWF	POSTDEC1
	MOVLW	0x06
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVLW	0x02
	ADDWF	FSR1L, F
;	.line	36; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	Delayms (750); // espera 250 mS
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVWF	POSTDEC1
	MOVLW	0xee
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
	RETURN	

; ; Starting pCode block
S_main__adelante	code
_adelante:
;	.line	27; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoWrite(RI,250);
	MOVLW	0xfa
	MOVWF	POSTDEC1
	MOVLW	0x07
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVLW	0x02
	ADDWF	FSR1L, F
;	.line	28; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoWrite(RD,50);
	MOVLW	0x32
	MOVWF	POSTDEC1
	MOVLW	0x06
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVLW	0x02
	ADDWF	FSR1L, F
;	.line	29; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	Delayms(10);// espera 10 mS
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
	RETURN	

; ; Starting pCode block
S_main__setup	code
_setup:
;	.line	17; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	pinmode(D,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x09
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	18; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	pinmode(I,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x08
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	19; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoAttach(RD);
	MOVLW	0x06
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	INCF	FSR1L, F
;	.line	20; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoAttach(RI);
	MOVLW	0x07
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	INCF	FSR1L, F
;	.line	21; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoAttach(LD);
	MOVLW	0x01
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	INCF	FSR1L, F
;	.line	22; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/user.c	ServoAttach(LI);
	MOVLW	0x02
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	INCF	FSR1L, F
	RETURN	

; ; Starting pCode block
S_main__epapout_init	code
_epapout_init:
;	.line	40; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	void epapout_init() { return; }
	RETURN	

; ; Starting pCode block
S_main__epapin_init	code
_epapin_init:
;	.line	39; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	void epapin_init() { return; }
	RETURN	

; ; Starting pCode block
S_main__epap_out	code
_epap_out:
;	.line	38; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	void epap_out() { return; }
	RETURN	

; ; Starting pCode block
S_main__epap_in	code
_epap_in:
;	.line	37; /home/moteado/src/gnu/pinguino_beta9-05_linux/source/main.c	void epap_in() { return; }
	RETURN	

; ; Starting pCode block
S_main__Delayus	code
_Delayus:
;	.line	16; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/arduinodelay.c	void Delayus(int microsecondes)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	20; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/arduinodelay.c	for (i=0;i<microsecondes;i++);
	CLRF	r0x02
	CLRF	r0x03
_00420_DS_:
	MOVF	r0x01, W
	SUBWF	r0x03, W
	BNZ	_00429_DS_
	MOVF	r0x00, W
	SUBWF	r0x02, W
_00429_DS_:
	BC	_00424_DS_
	INCF	r0x02, F
	BTFSC	STATUS, 0
	INCF	r0x03, F
	BRA	_00420_DS_
_00424_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__Delayms	code
_Delayms:
;	.line	9; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/arduinodelay.c	void Delayms(unsigned long milliseconde)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	13; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/arduinodelay.c	for (i=0;i<milliseconde;i++) delay10ktcy(1);
	CLRF	r0x04
	CLRF	r0x05
	CLRF	r0x06
	CLRF	r0x07
_00406_DS_:
	MOVF	r0x03, W
	SUBWF	r0x07, W
	BNZ	_00415_DS_
	MOVF	r0x02, W
	SUBWF	r0x06, W
	BNZ	_00415_DS_
	MOVF	r0x01, W
	SUBWF	r0x05, W
	BNZ	_00415_DS_
	MOVF	r0x00, W
	SUBWF	r0x04, W
_00415_DS_:
	BC	_00410_DS_
	MOVLW	0x01
	CALL	_delay10ktcy
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
	BTFSC	STATUS, 0
	INCF	r0x06, F
	BTFSC	STATUS, 0
	INCF	r0x07, F
	BRA	_00406_DS_
_00410_DS_:
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__servos_interrupt	code
_servos_interrupt:
;	.line	288; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if (PIR1bits.TMR1IF) {
	BTFSS	_PIR1bits, 0
	BRA	_00401_DS_
;	.line	289; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	PIR1bits.TMR1IF=0;
	BCF	_PIR1bits, 0
;	.line	290; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	T1CON=0x00;
	CLRF	_T1CON
	BANKSEL	_phase
;	.line	291; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if (phase) {
	MOVF	_phase, W, B
	BZ	_00397_DS_
;	.line	293; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	ServosPulseUp();
	CALL	_ServosPulseUp
;	.line	295; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	TMR1H= 0xd3;
	MOVLW	0xd3
	MOVWF	_TMR1H
;	.line	296; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	TMR1L= 0x8f;
	MOVLW	0x8f
	MOVWF	_TMR1L
;	.line	298; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	T1CON=1;
	MOVLW	0x01
	MOVWF	_T1CON
	BANKSEL	_phase
;	.line	299; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	phase = 0;
	CLRF	_phase, B
	BRA	_00401_DS_
_00397_DS_:
;	.line	304; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	ServosPulseDown();
	CALL	_ServosPulseDown
;	.line	308; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	TMR1H= 0x2d;
	MOVLW	0x2d
	MOVWF	_TMR1H
;	.line	309; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	TMR1L= 0x0f;
	MOVLW	0x0f
	MOVWF	_TMR1L
; #	MOVF	_needreordering, W, B
; #	BTFSC	STATUS, 2
; #	GOTO	_00395_DS_
; #	CALL	_SortServoTimings
; #	MOVLW	0x21
	BANKSEL	_needreordering
;	.line	311; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if (needreordering)	
	MOVF	_needreordering, W, B
;	.line	312; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	SortServoTimings();  // This takes more than 1 ms, but it's call only if needed.
	BTFSS	STATUS, 2
;	.line	313; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	T1CON= ( 1 | 2 << 4 ) ; // activate timer1 and prescaler = 1:4
	CALL	_SortServoTimings
	MOVLW	0x21
	MOVWF	_T1CON
;	.line	314; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	phase = 1;  //This indicates that after next interrupt it will start the servos cycle.
	MOVLW	0x01
	BANKSEL	_phase
	MOVWF	_phase, B
_00401_DS_:
;	.line	317; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	return;
	RETURN	

; ; Starting pCode block
S_main__ServoMaximumPulse	code
_ServoMaximumPulse:
;	.line	273; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	void ServoMaximumPulse(uchar servo)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	275; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if(servo>=18)        // test if numservo is valid
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00385_DS_
; #	GOTO	_00386_DS_
; #	CLRF	r0x01
;	.line	276; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	return;
	SUBWF	r0x00, W
;	.line	278; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	servovalues[servo]=SERVOMAX;  //  250 = 2000 useg pulse
	BC	_00386_DS_
	CLRF	r0x01
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVLW	0xfa
	MOVWF	INDF0
;	.line	280; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	needreordering=1;  // This indicates servo timings must be reordered.
	MOVLW	0x01
	BANKSEL	_needreordering
	MOVWF	_needreordering, B
_00386_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__ServoMinimumPulse	code
_ServoMinimumPulse:
;	.line	262; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	void ServoMinimumPulse(uchar servo)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	264; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if(servo>=18)        // test if numservo is valid
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00375_DS_
; #	GOTO	_00376_DS_
; #	CLRF	r0x01
;	.line	265; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	return;
	SUBWF	r0x00, W
;	.line	267; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	servovalues[servo]=SERVOMIN;  //  1 = 1000 useg pulse
	BC	_00376_DS_
	CLRF	r0x01
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVLW	0x01
	MOVWF	INDF0
	BANKSEL	_needreordering
;	.line	269; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	needreordering=1;  // This indicates servo timings must be reordered.
	MOVWF	_needreordering, B
_00376_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__ServoRead	code
_ServoRead:
;	.line	254; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	unsigned char ServoRead(uchar servo)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	256; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if(servo>=18)        // test if numservo is valid
	MOVLW	0x12
	SUBWF	r0x00, W
	BNC	_00365_DS_
;	.line	257; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	return 0;
	CLRF	WREG
	BRA	_00366_DS_
_00365_DS_:
;	.line	258; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	return servovalues[servo];
	CLRF	r0x01
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
_00366_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__ServoWrite	code
_ServoWrite:
;	.line	239; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	void ServoWrite(uchar servo, uchar value)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	241; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if(servo>=18)        // test if numservo is valid
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00347_DS_
; #	GOTO	_00352_DS_
; #	MOVLW	0x01
;	.line	242; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	return;
	SUBWF	r0x00, W
;	.line	244; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if(value<SERVOMIN)  //  1 = 1000 useg pulse
	BC	_00352_DS_
	MOVLW	0x01
	SUBWF	r0x01, W
	BC	_00349_DS_
;	.line	245; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	value=SERVOMIN;
	MOVLW	0x01
	MOVWF	r0x01
_00349_DS_:
;	.line	246; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if(value>SERVOMAX) // 250 = 2000 useg pulse
	MOVLW	0xfb
	SUBWF	r0x01, W
	BNC	_00351_DS_
;	.line	247; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	value=SERVOMAX;
	MOVLW	0xfa
	MOVWF	r0x01
_00351_DS_:
;	.line	248; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	servovalues[servo]=value;
	CLRF	r0x02
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x02, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	r0x01, INDF0
;	.line	250; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	needreordering=1;  // This indicates servo timings must be reordered.
	MOVLW	0x01
	BANKSEL	_needreordering
	MOVWF	_needreordering, B
_00352_DS_:
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__ServoDetach	code
_ServoDetach:
;	.line	225; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	void ServoDetach(uchar pin)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	227; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if(pin>=18) return;
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00326_DS_
; #	GOTO	_00333_DS_
; #	MOVLW	0x08
;	.line	229; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if(pin<8){
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00333_DS_
	MOVLW	0x08
	SUBWF	r0x00, W
	BC	_00331_DS_
;	.line	230; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	activatedservos[MaskPort_B] = activatedservos[MaskPort_B] ^ servomasks[pin];
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	BANKSEL	_activatedservos
	MOVF	_activatedservos, W, B
	XORWF	r0x01, F
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	_activatedservos, B
	BRA	_00333_DS_
_00331_DS_:
;	.line	231; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	} else if (pin>12) {
	MOVLW	0x0d
	SUBWF	r0x00, W
	BNC	_00328_DS_
;	.line	232; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	activatedservos[MaskPort_A] = activatedservos[MaskPort_A] ^ servomasks[pin];
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	BANKSEL	(_activatedservos + 2)
	MOVF	(_activatedservos + 2), W, B
	XORWF	r0x01, F
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 2), B
	BRA	_00333_DS_
_00328_DS_:
;	.line	234; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	activatedservos[MaskPort_C] = activatedservos[MaskPort_C] ^ servomasks[pin];
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	BANKSEL	(_activatedservos + 1)
	MOVF	(_activatedservos + 1), W, B
	XORWF	r0x00, F
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 1), B
_00333_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__ServoAttach	code
_ServoAttach:
;	.line	208; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	void ServoAttach(uchar pin)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	210; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if(pin>=18) return;
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00304_DS_
; #	GOTO	_00311_DS_
; #	MOVLW	0x08
;	.line	212; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if(pin<8){
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00311_DS_
	MOVLW	0x08
	SUBWF	r0x00, W
	BC	_00309_DS_
;	.line	213; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	activatedservos[MaskPort_B] = activatedservos[MaskPort_B] | servomasks[pin];  // list pin as servo driver.
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVF	r0x01, W
	BANKSEL	_activatedservos
	IORWF	_activatedservos, W, B
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	MOVWF	_activatedservos, B
;	.line	214; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	TRISB = TRISB & (255 - servomasks[pin]); // set as output pin
	MOVF	r0x01, W
	SUBLW	0xff
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	ANDWF	_TRISB, F
	BRA	_00311_DS_
_00309_DS_:
;	.line	215; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	} else if (pin>12) {
	MOVLW	0x0d
	SUBWF	r0x00, W
	BNC	_00306_DS_
;	.line	216; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	activatedservos[MaskPort_A] = activatedservos[MaskPort_A] | servomasks[pin];  // list pin as servo driver.
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVF	r0x01, W
	BANKSEL	(_activatedservos + 2)
	IORWF	(_activatedservos + 2), W, B
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	MOVWF	(_activatedservos + 2), B
;	.line	217; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	TRISA = TRISA & (255 - servomasks[pin]); // set as output pin
	MOVF	r0x01, W
	SUBLW	0xff
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	ANDWF	_TRISA, F
	BRA	_00311_DS_
_00306_DS_:
;	.line	219; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	activatedservos[MaskPort_C] = activatedservos[MaskPort_C] | servomasks[pin];  // list pin as servo driver.
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	MOVF	r0x00, W
	BANKSEL	(_activatedservos + 1)
	IORWF	(_activatedservos + 1), W, B
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	MOVWF	(_activatedservos + 1), B
;	.line	220; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	TRISC = TRISC & (255 - servomasks[pin]); // set as output pin
	MOVF	r0x00, W
	SUBLW	0xff
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	ANDWF	_TRISC, F
_00311_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__SortServoTimings	code
_SortServoTimings:
;	.line	124; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	static void SortServoTimings()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	BANKSEL	_SortServoTimings_mascaratotal_1_1
;	.line	131; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	uchar mascaratotal[3]={0x00,0x00,0x00};
	CLRF	_SortServoTimings_mascaratotal_1_1, B
; removed redundant BANKSEL
	CLRF	(_SortServoTimings_mascaratotal_1_1 + 1), B
; removed redundant BANKSEL
	CLRF	(_SortServoTimings_mascaratotal_1_1 + 2), B
;	.line	134; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	for(t=0;t<18;t++){
	CLRF	r0x00
_00250_DS_:
	MOVLW	0x12
	SUBWF	r0x00, W
	BC	_00253_DS_
;	.line	135; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[timevalue][t]=255;
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	SETF	INDF0
;	.line	136; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_B][t]=0x00;
	MOVLW	LOW(_timings)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timings)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	CLRF	INDF0
;	.line	137; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_C][t]=0x00;
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	CLRF	INDF0
;	.line	138; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_A][t]=0x00;
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	CLRF	INDF0
;	.line	134; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	for(t=0;t<18;t++){
	INCF	r0x00, F
	BRA	_00250_DS_
_00253_DS_:
;	.line	141; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	totalservos=0;
	CLRF	r0x00
;	.line	143; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	while(totalservos<18) {
	CLRF	r0x01
_00247_DS_:
	MOVLW	0x12
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00249_DS_
;	.line	144; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	numservos=1;
	MOVLW	0x01
	MOVWF	r0x02
;	.line	145; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	for(s=0;s<18;s++) { 
	CLRF	r0x03
_00254_DS_:
	MOVLW	0x12
	SUBWF	r0x03, W
	BTFSC	STATUS, 0
	BRA	_00257_DS_
;	.line	147; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if (s<8){
	MOVLW	0x08
	SUBWF	r0x03, W
	BTFSC	STATUS, 0
	BRA	_00245_DS_
;	.line	148; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if (servomasks[s] & mascaratotal[MaskPort_B] & activatedservos[MaskPort_B]){
	MOVLW	LOW(_servomasks)
	ADDWF	r0x03, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	BANKSEL	_SortServoTimings_mascaratotal_1_1
	MOVF	_SortServoTimings_mascaratotal_1_1, W, B
	ANDWF	r0x04, W
	MOVWF	r0x05
	BANKSEL	_activatedservos
	MOVF	_activatedservos, W, B
	ANDWF	r0x05, F
	MOVF	r0x05, W
	BTFSS	STATUS, 2
	BRA	_00256_DS_
;	.line	150; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	else if (servovalues[s] < timings[timevalue][t]){
	MOVLW	LOW(_servovalues)
	ADDWF	r0x03, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x05
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x01, W
	MOVWF	r0x06
	CLRF	r0x07
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x07, F
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x08
	MOVF	r0x08, W
	SUBWF	r0x05, W
	BC	_00220_DS_
;	.line	151; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[timevalue][t]=servovalues[s];
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	r0x05, INDF0
;	.line	152; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_B][t]=servomasks[s];
	MOVLW	LOW(_timings)
	ADDWF	r0x01, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_timings)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVFF	r0x04, INDF0
;	.line	153; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_C][t]=0x00;
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	CLRF	INDF0
;	.line	154; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_A][t]=0x00;
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	CLRF	INDF0
;	.line	155; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	numservos=1;
	MOVLW	0x01
	MOVWF	r0x02
	BRA	_00256_DS_
_00220_DS_:
;	.line	157; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	else if (servovalues[s] == timings[timevalue][t]){
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x06
	MOVF	r0x05, W
	XORWF	r0x06, W
	BZ	_00287_DS_
	BRA	_00256_DS_
_00287_DS_:
;	.line	158; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_B][t] |= servomasks[s];
	MOVLW	LOW(_timings)
	ADDWF	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_timings)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x07
	MOVF	r0x07, W
	IORWF	r0x04, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	r0x04, INDF0
;	.line	159; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	numservos++;
	INCF	r0x02, F
	BRA	_00256_DS_
_00245_DS_:
;	.line	163; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	else if (s>12){
	MOVLW	0x0d
	SUBWF	r0x03, W
	BTFSS	STATUS, 0
	BRA	_00242_DS_
;	.line	164; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if (servomasks[s] & mascaratotal[MaskPort_A] & activatedservos[MaskPort_A]){
	MOVLW	LOW(_servomasks)
	ADDWF	r0x03, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	BANKSEL	(_SortServoTimings_mascaratotal_1_1 + 2)
	MOVF	(_SortServoTimings_mascaratotal_1_1 + 2), W, B
	ANDWF	r0x04, W
	MOVWF	r0x05
	BANKSEL	(_activatedservos + 2)
	MOVF	(_activatedservos + 2), W, B
	ANDWF	r0x05, F
	MOVF	r0x05, W
	BTFSS	STATUS, 2
	BRA	_00256_DS_
;	.line	166; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	else if (servovalues[s] < timings[timevalue][t]){
	MOVLW	LOW(_servovalues)
	ADDWF	r0x03, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x05
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x01, W
	MOVWF	r0x06
	CLRF	r0x07
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x07, F
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x08
	MOVF	r0x08, W
	SUBWF	r0x05, W
	BC	_00228_DS_
;	.line	167; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[timevalue][t]=servovalues[s];
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	r0x05, INDF0
;	.line	168; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_B][t]=0x00;
	MOVLW	LOW(_timings)
	ADDWF	r0x01, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_timings)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	CLRF	INDF0
;	.line	169; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_C][t]=0x00;
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	CLRF	INDF0
;	.line	170; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_A][t]=servomasks[s];
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVFF	r0x04, INDF0
;	.line	171; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	numservos=1;
	MOVLW	0x01
	MOVWF	r0x02
	BRA	_00256_DS_
_00228_DS_:
;	.line	173; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	else if (servovalues[s] == timings[timevalue][t]){
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x06
	MOVF	r0x05, W
	XORWF	r0x06, W
	BZ	_00293_DS_
	BRA	_00256_DS_
_00293_DS_:
;	.line	174; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_A][t] |= servomasks[s];
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x07
	MOVF	r0x07, W
	IORWF	r0x04, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	r0x04, INDF0
;	.line	175; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	numservos++;
	INCF	r0x02, F
	BRA	_00256_DS_
_00242_DS_:
;	.line	180; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if (servomasks[s] & mascaratotal[MaskPort_C] & activatedservos[MaskPort_C]){ 
	MOVLW	LOW(_servomasks)
	ADDWF	r0x03, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	BANKSEL	(_SortServoTimings_mascaratotal_1_1 + 1)
	MOVF	(_SortServoTimings_mascaratotal_1_1 + 1), W, B
	ANDWF	r0x04, W
	MOVWF	r0x05
	BANKSEL	(_activatedservos + 1)
	MOVF	(_activatedservos + 1), W, B
	ANDWF	r0x05, F
	MOVF	r0x05, W
	BTFSS	STATUS, 2
	BRA	_00256_DS_
;	.line	182; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	else if (servovalues[s] < timings[timevalue][t]){
	MOVLW	LOW(_servovalues)
	ADDWF	r0x03, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x05
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x01, W
	MOVWF	r0x06
	CLRF	r0x07
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x07, F
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x08
	MOVF	r0x08, W
	SUBWF	r0x05, W
	BC	_00236_DS_
;	.line	183; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[timevalue][t]=servovalues[s];
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	r0x05, INDF0
;	.line	184; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_B][t]=0x00;
	MOVLW	LOW(_timings)
	ADDWF	r0x01, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_timings)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	CLRF	INDF0
;	.line	185; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_C][t]=servomasks[s];
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVFF	r0x04, INDF0
;	.line	186; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_A][t]=0x00;
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	CLRF	INDF0
;	.line	187; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	numservos=1;
	MOVLW	0x01
	MOVWF	r0x02
	BRA	_00256_DS_
_00236_DS_:
;	.line	189; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	else if (servovalues[s] == timings [timevalue][t]){
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x06
	MOVF	r0x05, W
	XORWF	r0x06, W
	BNZ	_00256_DS_
;	.line	190; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timings[MaskPort_C][t] |= servomasks[s];
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x07
	MOVF	r0x07, W
	IORWF	r0x04, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	r0x04, INDF0
;	.line	191; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	numservos++;
	INCF	r0x02, F
_00256_DS_:
;	.line	145; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	for(s=0;s<18;s++) { 
	INCF	r0x03, F
	BRA	_00254_DS_
_00257_DS_:
;	.line	196; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	mascaratotal[MaskPort_B] |= timings[MaskPort_B][t];
	MOVLW	LOW(_timings)
	ADDWF	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	MOVLW	HIGH(_timings)
	ADDWFC	r0x04, F
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVFF	INDF0, r0x03
	BANKSEL	_SortServoTimings_mascaratotal_1_1
	MOVF	_SortServoTimings_mascaratotal_1_1, W, B
	IORWF	r0x03, F
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	_SortServoTimings_mascaratotal_1_1, B
;	.line	197; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	mascaratotal[MaskPort_C] |= timings[MaskPort_C][t];
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x04, F
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVFF	INDF0, r0x03
; removed redundant BANKSEL
	MOVF	(_SortServoTimings_mascaratotal_1_1 + 1), W, B
	IORWF	r0x03, F
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_SortServoTimings_mascaratotal_1_1 + 1), B
;	.line	198; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	mascaratotal[MaskPort_A] |= timings[MaskPort_A][t];
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x04, F
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVFF	INDF0, r0x03
; removed redundant BANKSEL
	MOVF	(_SortServoTimings_mascaratotal_1_1 + 2), W, B
	IORWF	r0x03, F
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_SortServoTimings_mascaratotal_1_1 + 2), B
;	.line	199; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	totalservos += numservos;
	MOVF	r0x02, W
	ADDWF	r0x00, F
;	.line	200; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	t++;
	INCF	r0x01, F
	BRA	_00247_DS_
_00249_DS_:
	BANKSEL	_needreordering
;	.line	203; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	needreordering=0;  // This indicates that servo timings is ordered.	
	CLRF	_needreordering, B
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__ServosPulseUp	code
_ServosPulseUp:
;	.line	118; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	PORTB = activatedservos[MaskPort_B] & 0xFF;
	MOVFF	_activatedservos, _PORTB
;	.line	119; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	PORTC = activatedservos[MaskPort_C] & 0xFF;
	MOVFF	(_activatedservos + 1), _PORTC
;	.line	120; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	PORTA = activatedservos[MaskPort_A] & 0xFF;	
	MOVFF	(_activatedservos + 2), _PORTA
	RETURN	

; ; Starting pCode block
S_main__ServosPulseDown	code
_ServosPulseDown:
;	.line	92; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	static void ServosPulseDown()
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	BANKSEL	_timingindex
;	.line	94; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timingindex = 0;
	CLRF	_timingindex, B
	BANKSEL	_timedivision
;	.line	96; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	for(timedivision=0;timedivision < 251;timedivision++){
	CLRF	_timedivision, B
_00196_DS_:
	MOVLW	0xfb
	BANKSEL	_timedivision
	SUBWF	_timedivision, W, B
	BTFSC	STATUS, 0
	BRA	_00200_DS_
;	.line	97; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	if (timings[timevalue][timingindex] == timedivision){
	MOVFF	_timingindex, r0x00
	CLRF	r0x01
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
; removed redundant BANKSEL
	XORWF	_timedivision, W, B
	BNZ	_00195_DS_
;	.line	98; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	PORTB = PORTB ^ timings[MaskPort_B][timingindex];
	MOVFF	_timingindex, r0x00
	CLRF	r0x01
	MOVLW	LOW(_timings)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	XORWF	_PORTB, F
;	.line	99; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	PORTC = PORTC ^ timings[MaskPort_C][timingindex];
	MOVFF	_timingindex, r0x00
	CLRF	r0x01
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	XORWF	_PORTC, F
;	.line	100; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	PORTA = PORTA ^ timings[MaskPort_A][timingindex];
	MOVFF	_timingindex, r0x00
	CLRF	r0x01
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	XORWF	_PORTA, F
	BANKSEL	_timingindex
;	.line	101; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	timingindex++;
	INCF	_timingindex, F, B
_00195_DS_:
	movlw 6
	movwf _loopvar
bucle:
	NOP
	decfsz _loopvar,1
	goto bucle
	
	BANKSEL	_timedivision
;	.line	96; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	for(timedivision=0;timedivision < 251;timedivision++){
	INCF	_timedivision, F, B
	BRA	_00196_DS_
_00200_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__servos_init	code
_servos_init:
;	.line	71; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	void servos_init()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	75; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	for(a=0;a<18;a++) servovalues[a]=255;
	CLRF	r0x00
_00180_DS_:
	MOVLW	0x12
	SUBWF	r0x00, W
	BC	_00183_DS_
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	SETF	INDF0
	INCF	r0x00, F
	BRA	_00180_DS_
_00183_DS_:
;	.line	78; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	TMR1H=0xFF;
	SETF	_TMR1H
;	.line	79; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	TMR1L=0x00;
	CLRF	_TMR1L
;	.line	81; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	T1CON=0x01;
	MOVLW	0x01
	MOVWF	_T1CON
;	.line	83; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	PIE1bits.TMR1IE=1;
	BSF	_PIE1bits, 0
;	.line	85; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	INTCONbits.PEIE=1;
	BSF	_INTCONbits, 6
;	.line	87; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/servos.c	INTCONbits.GIE=1;
	BSF	_INTCONbits, 7
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_main__pinmode	code
_pinmode:
;	.line	69; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	void pinmode(int input, int state)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	71; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	switch (port[input])
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_port)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_port)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVLW	0x03
	SUBWF	r0x04, W
	BTFSC	STATUS, 0
	BRA	_00168_DS_
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	CLRF	r0x08
	RLCF	r0x04, W
	RLCF	r0x08, F
	RLCF	WREG, W
	RLCF	r0x08, F
	ANDLW	0xfc
	MOVWF	r0x07
	MOVLW	UPPER(_00175_DS_)
	MOVWF	PCLATU
	MOVLW	HIGH(_00175_DS_)
	MOVWF	PCLATH
	MOVLW	LOW(_00175_DS_)
	ADDWF	r0x07, F
	MOVF	r0x08, W
	ADDWFC	PCLATH, F
	BTFSC	STATUS, 0
	INCF	PCLATU, F
	MOVF	r0x07, W
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVWF	PCL
_00175_DS_:
	GOTO	_00155_DS_
	GOTO	_00159_DS_
	GOTO	_00163_DS_
_00155_DS_:
;	.line	73; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	case 0: if (state) TRISB=TRISB | mask[input];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00157_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_TRISB, F
	BRA	_00168_DS_
_00157_DS_:
;	.line	74; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	else TRISB=TRISB & (255-mask[input]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_TRISB, F
;	.line	75; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	break;
	BRA	_00168_DS_
_00159_DS_:
;	.line	76; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	case 1: if (state) TRISC=TRISC | mask[input];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00161_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_TRISC, F
	BRA	_00168_DS_
_00161_DS_:
;	.line	77; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	else TRISC=TRISC & (255-mask[input]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_TRISC, F
;	.line	78; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	break;
	BRA	_00168_DS_
_00163_DS_:
;	.line	79; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	case 2: if (state) TRISA=TRISA | mask[input];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00165_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_TRISA, F
	BRA	_00168_DS_
_00165_DS_:
;	.line	80; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	else TRISA=TRISA & (255-mask[input]);
	CLRF	r0x02
	BTFSC	r0x01, 7
	SETF	r0x02
	MOVLW	LOW(_mask)
	ADDWF	r0x00, F
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	MOVF	r0x00, W
	SUBLW	0xff
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	ANDWF	_TRISA, F
_00168_DS_:
;	.line	90; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	}
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__digitalread	code
_digitalread:
;	.line	44; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	int digitalread(int input)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	46; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	switch (port[input])
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_port)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_port)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVLW	0x03
	SUBWF	r0x02, W
	BTFSC	STATUS, 0
	BRA	_00142_DS_
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	CLRF	r0x06
	RLCF	r0x02, W
	RLCF	r0x06, F
	RLCF	WREG, W
	RLCF	r0x06, F
	ANDLW	0xfc
	MOVWF	r0x05
	MOVLW	UPPER(_00150_DS_)
	MOVWF	PCLATU
	MOVLW	HIGH(_00150_DS_)
	MOVWF	PCLATH
	MOVLW	LOW(_00150_DS_)
	ADDWF	r0x05, F
	MOVF	r0x06, W
	ADDWFC	PCLATH, F
	BTFSC	STATUS, 0
	INCF	PCLATU, F
	MOVF	r0x05, W
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVWF	PCL
_00150_DS_:
	GOTO	_00130_DS_
	GOTO	_00134_DS_
	GOTO	_00138_DS_
_00130_DS_:
;	.line	48; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	case 0: if ((PORTB & mask[input])!=0) return (1);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	_PORTB, W
	ANDWF	r0x02, F
	MOVF	r0x02, W
	BZ	_00132_DS_
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00143_DS_
_00132_DS_:
;	.line	49; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	else return (0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00143_DS_
_00134_DS_:
;	.line	51; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	case 1: if ((PORTC & mask[input])!=0) return (1);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	_PORTC, W
	ANDWF	r0x02, F
	MOVF	r0x02, W
	BZ	_00136_DS_
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00143_DS_
_00136_DS_:
;	.line	52; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	else return (0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00143_DS_
_00138_DS_:
;	.line	54; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	case 2: if ((PORTA & mask[input])!=0) return (1);
	CLRF	r0x02
	BTFSC	r0x01, 7
	SETF	r0x02
	MOVLW	LOW(_mask)
	ADDWF	r0x00, F
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	MOVF	_PORTA, W
	ANDWF	r0x00, F
	MOVF	r0x00, W
	BZ	_00140_DS_
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00143_DS_
_00140_DS_:
;	.line	55; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	else return (0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00143_DS_
_00142_DS_:
;	.line	66; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	return (0);
	CLRF	PRODL
	CLRF	WREG
_00143_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_main__digitalwrite	code
_digitalwrite:
;	.line	20; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	void digitalwrite(int output,int state)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	22; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	switch (port[output])
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_port)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_port)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVLW	0x03
	SUBWF	r0x04, W
	BTFSC	STATUS, 0
	BRA	_00118_DS_
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	CLRF	r0x08
	RLCF	r0x04, W
	RLCF	r0x08, F
	RLCF	WREG, W
	RLCF	r0x08, F
	ANDLW	0xfc
	MOVWF	r0x07
	MOVLW	UPPER(_00125_DS_)
	MOVWF	PCLATU
	MOVLW	HIGH(_00125_DS_)
	MOVWF	PCLATH
	MOVLW	LOW(_00125_DS_)
	ADDWF	r0x07, F
	MOVF	r0x08, W
	ADDWFC	PCLATH, F
	BTFSC	STATUS, 0
	INCF	PCLATU, F
	MOVF	r0x07, W
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVWF	PCL
_00125_DS_:
	GOTO	_00105_DS_
	GOTO	_00109_DS_
	GOTO	_00113_DS_
_00105_DS_:
;	.line	24; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	case 0: if (state) PORTB=PORTB | mask[output]; 
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00107_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_PORTB, F
	BRA	_00118_DS_
_00107_DS_:
;	.line	25; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	else PORTB=PORTB & (255-mask[output]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_PORTB, F
;	.line	26; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	break;
	BRA	_00118_DS_
_00109_DS_:
;	.line	27; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	case 1: if (state) PORTC=PORTC | mask[output];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00111_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_PORTC, F
	BRA	_00118_DS_
_00111_DS_:
;	.line	28; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	else PORTC=PORTC & (255-mask[output]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_PORTC, F
;	.line	29; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	break;
	BRA	_00118_DS_
_00113_DS_:
;	.line	30; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	case 2: if (state) PORTA=PORTA | mask[output];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00115_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_PORTA, F
	BRA	_00118_DS_
_00115_DS_:
;	.line	31; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	else PORTA=PORTA & (255-mask[output]);
	CLRF	r0x02
	BTFSC	r0x01, 7
	SETF	r0x02
	MOVLW	LOW(_mask)
	ADDWF	r0x00, F
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	MOVF	r0x00, W
	SUBLW	0xff
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	ANDWF	_PORTA, F
_00118_DS_:
;	.line	41; /home/moteado/src/gnu/pinguino_beta9-05_linux/tools/bin/../share/sdcc/include/pic16/digitalw.c	}
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block for Ival
	code
_mask:
	DB	0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x40, 0x80, 0x01, 0x02
	DB	0x04, 0x01, 0x02, 0x04, 0x08, 0x20
; ; Starting pCode block for Ival
_port:
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01
	DB	0x01, 0x02, 0x02, 0x02, 0x02, 0x02
; ; Starting pCode block for Ival
_servomasks:
	DB	0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x40, 0x80, 0x01, 0x02
	DB	0x04, 0x01, 0x02, 0x04, 0x08, 0x20


; Statistics:
; code size:	 4444 (0x115c) bytes ( 3.39%)
;           	 2222 (0x08ae) words
; udata size:	   95 (0x005f) bytes ( 5.30%)
; access size:	   10 (0x000a) bytes


	end
