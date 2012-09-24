//
//

void setup() 
{
	pinmode(1,INPUT);
	pinmode(7,OUTPUT);
}

void loop() 
{
	if (digitalread(1)) digitalwrite(7,HIGH);
	else digitalwrite(7,LOW);
}

