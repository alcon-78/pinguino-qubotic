//
//
//

unsigned int counts=0;

void setup()
{
TMR3H=0;	// reset the timer value
TMR3L=0;
T3CON=0b10000111;	// configure timer 3 in 16 bits counter mode
//
//
//
serial_begin(9600); // to debug
}

void loop()
{
counts=(TMR3H<<8)+TMR3L;
serial_write(counts,DEC);
serial_write("\n\r");
}

