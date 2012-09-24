/*
 * LCD routines for use with pinguino board, based on LiquidCrystal lib from Arduino project.
 * By Marcus Fazzi (Anunakin)
 * Pins, Schematics and more info: 
 * http://pinguino.koocotte.org/index.php/LCD_Example
 * http://anunakin.blogspot.com/2010/08/pinguino-clock.html
 */
 
//


#define LED 13
#define HOUR 14
#define MIN 15

//
uchar counter = 0;
uchar sec  = 0;
uchar min  = 0;
uchar hour = 0;

float num;
 
void setup(){
//
//
	
//
	lcd(8, 9, 0, 1, 2, 3, 0, 0, 0, 0); // RS, E, D4 ~ D8	
	
//
	begin(2, 0);
	
	/* Debug */
	pinmode(LED, OUTPUT);		// LED on pin 13
	
//
	pinmode(HOUR, INPUT);
	pinmode(MIN, INPUT);
}
 
void loop()
{
//
	home();
	lcdPrint("Pinguino-LCDlib");	// Output char
		
	if (counter>9){
		counter = 0;
		sec++;
	}
	
	if (sec>59){
		sec = 0;
		min++;
	}
	
	if (min>59){
		min = 0;
		hour++;
	}
	
	if (hour>23){
		hour = 0;
	}
	
	
	setCursor(0, 1);
	
	if (hour < 10)
		lcdPrint("0");	
	printNumber(hour, 10);
	
	if (min < 10)
		lcdPrint(":0");
	else
		lcdPrint(":");		
	printNumber(min, 10);
	
	if (sec < 10)
		lcdPrint(":0");
	else
		lcdPrint(":");
	printNumber(sec, 10);	
	
//
	if(digitalread(HOUR)){
		hour++;
	}
	if(digitalread(MIN)){
		min++;
	}
	
	counter++;
	
	Delayms(51); //just a fine tune to get 100ms with this!
	digitalwrite(LED, LOW);
	Delayms(51);
	digitalwrite(LED, HIGH);	
}


