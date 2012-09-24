//
//

int i;
int caractere;

void setup()
{
for (i=0;i<8;i++) 	{
				pinmode(i,OUTPUT);
				digitalwrite(i,LOW);
				}
serial_begin(9600);
}

void loop()
{
if (serial_available())
	{
	digitalwrite(0,HIGH);
	caractere=serial_read();
	serial_write("test");
	if (caractere=='A') digitalwrite(1,digitalread(1)^1);
	}
}


