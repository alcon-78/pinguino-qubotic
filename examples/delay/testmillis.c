//
//

int i;

void setup()
{
pinmode(0,OUTPUT);
digitalwrite(0,LOW);
}

void loop()
{
if (Millis()>2000) digitalwrite(0,HIGH);
}


