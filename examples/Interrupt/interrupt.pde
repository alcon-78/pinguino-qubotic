// How to use interrupt on Pinguino
// simple example blink a led with timer 1
// led is connected on output 0
// Jean-Pierre Mandon 2009

void UserInterrupt()
{
// timer 1 interrupt flag in register PIR1
if (PIR1bits.TMR1IF)
{
// reset interrupt flag
PIR1bits.TMR1IF=0;
// reverse state of pin 0 ( blink )
digitalWrite(0,digitalRead(0)^1);
}
}

void setup()
{
// led is connected on output 0
pinMode(0,OUTPUT);
// timer 1 configuration
// you can write T1CON=0xB1; or
// timer1 register is 16 bits
T1CONbits.RD16=1;
// clock source for timer 1 is derived from clock
T1CONbits.T1RUN=0;
// prescale value 1/8
T1CONbits.T1CKPS1=1;
T1CONbits.T1CKPS0=1;
// timer 1 oscillator is shut off ( internal clock )
T1CONbits.T1OSCEN=0;
// T1SYNC is not used ( internal clock )
// timer clock is internal clock ( Fosc/4 )
T1CONbits.TMR1CS=0;
// timer 1 is On
T1CONbits.TMR1ON=1;
// FOSC is 48 Mhz => Internal clock = 48 Mhz / 4 = 12 Mhz
// clock period is 83 nS
// prescale for timer 1 is 8 => clock period for timer 1 is 667 nS
// timer 1 is incremented every 667 nS
// timer 1 is a 16 bits register, it will overflow every 667nS*65536 = 43.6 mS
// when timer 1 overflow it generate an interrupt
// Interrupt configuration
// enable interrupt for timer1 in register PIE1
PIE1bits.TMR1IE=1;
// Here you can write INTCON|=0xC0; or
// enable peripheral interrupt
INTCONbits.PEIE=1;
// global enable interrupt
INTCONbits.GIE=1;
// now an interrupt will be generated by timer1 every 43,6 mS
}

void loop()
{
// nothing to do in the main loop :-)
}