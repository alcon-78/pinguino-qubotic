// test blink with Pinguino
#define PIC18F2550

void setup() {
	pinMode(0,OUTPUT);
}

void loop() {
	digitalWrite(0,HIGH);
	delay(500);
	digitalWrite(0,LOW);
	delay(500);
}