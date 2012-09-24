//
//

void setup()
{
}

void loop()
{
PWM_set_dutycycle(11,512);	// 50% square wave on output 11
PWM_set_dutycycle(12,102);	// 10% square wave on output 12
while(1);
}


