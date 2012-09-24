//
//
#define tempo 750 //espera 500 mS

#define D 9 // sensor derecha en pin 9
#define I 8 // sensor izquierda en pin 8

#define RD 6 //rueda derecha (servo) en pin 6
#define RI 7 // rueda izquierda(servo) en pin 7

#define LD 1 //led derecho en pin 1
#define LI 2 //led izquierdo en pin 2
int N = 0;

void setup() {
//
	pinmode(D,INPUT);
	pinmode(I,INPUT);
	ServoAttach(RD);
	ServoAttach(RI);
	ServoAttach(LD);
	ServoAttach(LI);
}

void adelante() {
//
	ServoWrite(RI,250);
	ServoWrite(RD,50);
	Delayms(10);// espera 10 mS
}

void atras() {
//
	ServoWrite(RI,50);
	ServoWrite(RD,250);
	Delayms (750); // espera 250 mS
}
void izquierda() {
//
	atras();
	ServoWrite(RI,50);
	ServoWrite(RD,50);
	Delayms (tempo);
	N = 0;
}


void derecha () { 
//
	atras();
	ServoWrite(RI,250);
	ServoWrite(RD,250);
	Delayms (tempo);
}

void loop() {
//
//
//
 	if (!digitalread(I)) izquierda();
//
	if (!digitalread(D))  derecha();
	ServoWrite(LI,500); // enciende los led y varia su brillo
	ServoWrite(LD,20);
	adelante();
	
}

