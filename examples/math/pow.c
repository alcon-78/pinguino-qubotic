//
//



float i,j;
float result;
char chaine[10];

void setup()
{
serial_begin(9600);
}

void loop()
{
i=45;
j=2;
result=powf(i,j);
if ((result>2024.0)&&(result<2025.0)) 
	{
	serial_write("OK");
	serial_write("\n\r");
	}
}

