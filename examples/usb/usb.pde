// Pinguino cdc with processing
// Jean-Pierre Mandon 2010

unsigned char i;

void setup()
{
for (i=0;i<4;i++)
{
pinMode(i,OUTPUT);
digitalWrite(i,LOW);
}
}

unsigned char receivedbyte;
unsigned char rxstr[64];

void loop()
{
// Use the run led to check if a terminal is connected
if (CONTROL_LINE) PORTAbits.RA4=1;
else PORTAbits.RA4=0;

// receive a string from the USB uart and send it on the uart
receivedbyte=CDC.read(rxstr);
if (receivedbyte>0)
{
rxstr[receivedbyte]=0; // to make received character(s) a string
switch (rxstr[0])
{
case 'S':switch(rxstr[1])     // SET
{
case '0': digitalWrite(0,HIGH);  // Pin 0 ON
 break;
case '1': digitalWrite(1,HIGH);  // Pin 1 ON
 break;
case '2': digitalWrite(2,HIGH);  // Pin 2 ON
 break;
case '3': digitalWrite(3,HIGH);  // Pin 3 ON
 break;
}
break;
case 'R':switch(rxstr[1])     // RESET
{
case '0': digitalWrite(0,LOW);  // Pin 0 OFF
        break;
case '1': digitalWrite(1,LOW);  // Pin 1 OFF
 break;
case '2': digitalWrite(2,LOW);  // Pin 2 OFF
 break;
case '3': digitalWrite(3,LOW);  // Pin 3 OFF
 break;
}
break;
}
}
}