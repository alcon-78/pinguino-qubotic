

unsigned char answer;

void setup()
{
serial_begin(9600);
}

void loop()
{
//
//
ee_write(0,0x41);
answer=ee_read(0);
serial_write(answer,BYTE);
}

