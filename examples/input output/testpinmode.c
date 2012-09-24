//
//

int led1;
int led2;

void setup() 
{
	led1=1;
	led2=7;
	pinmode(0,OUTPUT);
	pinmode(1,OUTPUT);
	pinmode(2,OUTPUT);
	pinmode(3,OUTPUT);
	pinmode(4,OUTPUT);
	pinmode(5,OUTPUT);
	pinmode(6,OUTPUT);
	pinmode(7,OUTPUT);
	pinmode(8,OUTPUT);
	pinmode(9,OUTPUT);
	pinmode(10,OUTPUT);
	pinmode(11,OUTPUT);
	pinmode(12,OUTPUT);
}

void loop() 
{
	digitalwrite(0,HIGH);
	digitalwrite(1,HIGH);
	digitalwrite(2,HIGH);
	digitalwrite(3,HIGH);
	digitalwrite(4,HIGH);
	digitalwrite(5,HIGH);
	digitalwrite(6,HIGH);
	digitalwrite(7,HIGH);
	digitalwrite(8,HIGH);
	digitalwrite(9,HIGH);
	digitalwrite(10,HIGH);
	digitalwrite(11,HIGH);
	digitalwrite(12,HIGH);
}	

