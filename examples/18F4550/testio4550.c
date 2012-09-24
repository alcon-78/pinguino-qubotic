//
//



void setup()
{
pinmode(10,OUTPUT);
}

void loop()
{
if (analogread(20)>500) digitalwrite(10,HIGH);
else digitalwrite(10,LOW);
}


