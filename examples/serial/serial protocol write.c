//
//
//
//

int i;
int caractere,caractere1,caractere2;

void setup()
{
//
for (i=0;i<8;i++) 	{
				pinmode(i,OUTPUT);
				digitalwrite(i,LOW);
				}
//
serial_begin(9600);
}

void loop()
{
//
if (serial_available())
	{
//
	caractere=serial_read();
	if (caractere=='W')
		{
//
		Delayms(3);
//
		if (serial_available()) caractere1=serial_read();
		else 	{
//
				serial_flush();
//
				goto end;
				}
		Delayms(3);
		if (serial_available()) caractere2=serial_read();
		else  	{
				serial_flush();
				goto end;
				}
//
		if ((caractere1>=0x30)&&(caractere2>=0x30))
			{
			caractere1-=0x30; 
			caractere2-=0x30;		
			}
		else goto end;
//
		digitalwrite(caractere1,caractere2);
//
		serial_write("bonjour\n\r");
		end:
		}
	}
}

