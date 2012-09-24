// Prueba del robot con bigotes 
// Bazza, 18 de Septiembre de 2012
#define tempo 750 //espera 500 mS

#define D 9 // sensor derecha en pin 9
#define I 8 // sensor izquierda en pin 8

#define RD 6 //rueda derecha (servo) en pin 6
#define RI 7 // rueda izquierda(servo) en pin 7

#define LD 1 //led derecho en pin 1
#define LI 2 //led izquierdo en pin 2
int N = 0;

void setup() {
//define entradas y salidas servos
	pinMode(D,INPUT);
	pinMode(I,INPUT);
	servo.attach(RD);
	servo.attach(RI);
	servo.attach(LD);
	servo.attach(LI);
}

void adelante() {
	// avance;
	servo.write(RI,250);
	servo.write(RD,50);
	delay(10);// espera 10 mS
}

void atras() {
	// retroceso
	servo.write(RI,50);
	servo.write(RD,250);
	delay (750); // espera 250 mS
}
void izquierda() {
// retroceso y giro a la izquierda
	atras();
	servo.write(RI,50);
	servo.write(RD,50);
	delay (tempo);
	N = 0;
}


void derecha () { 
// retroceso y giro a la derecha
	atras();
	servo.write(RI,250);
	servo.write(RD,250);
	delay (tempo);
}

void loop() {
// bucle pricipal
	//N ++; 
 // ! funciona como negacion ,si la señal Izquierda es 0 entonces izquierda
 	if (!digitalRead(I)) izquierda();
	//if (N < 100) izquierda();
	if (!digitalRead(D))  derecha();
	servo.write(LI,500); // enciende los led y varia su brillo
	servo.write(LD,20);
	adelante();
	
}
