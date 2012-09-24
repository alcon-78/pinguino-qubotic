//
//

unsigned int i;

void setup() 
	{
	serial_begin(9600);
	}

void loop() 
	{
	while (1) 	{
			i=analogread(15);
			serial_write("input 15=");
			serial_write(i,DEC);
			serial_write("\n\r");
			}
}

