

#define CS 3		
#define SDI 2		
#define SDO 0		
#define CLKpin 1		
#define RESET 4

#define wd 1	// delay for MRF24J40 clk

//
#define RFCTL 0x36
#define EADR0 0x05

void setup()
{
	pinmode(CS,OUTPUT);
	pinmode(SDI,INPUT);
	pinmode(SDO,OUTPUT);
	pinmode(CLKpin,OUTPUT);
	pinmode(RESET,OUTPUT);
	serial_begin(9600);
}

unsigned char short_read(unsigned char address)
{
	unsigned char i;
	unsigned char resultat=0;
	
	digitalwrite(CS,0);
	address=(address<<1)&0x7E;
	for (i=0;i<8;i++)
		{
		if ((address&0x80)==0x80) digitalwrite(SDO,1);
		else digitalwrite(SDO,0);
		digitalwrite(CLKpin,1);
		Delayus(wd);
		digitalwrite(CLKpin,0);
		Delayus(wd);
		address=address<<1;
		}
	for (i=0;i<8;i++)
		{
		digitalwrite(CLKpin,1);
		Delayus(wd);
		if (digitalread(SDI)) resultat=resultat|1;
		if (i!=7) resultat=resultat<<1;
		digitalwrite(CLKpin,0);
		Delayus(wd);
		}
digitalwrite(CS,1);
return(resultat);
}

unsigned int long_read(unsigned int address)
{
	unsigned int resultat=0;
	unsigned char i;
	
	digitalwrite(CS,0);
	address=((address<<1)&0x7FE)|0x800;
	for (i=0;i<12;i++)
		{
		if ((address&0x800)!=0) digitalwrite(SDO,1);
		else digitalwrite(SDO,0);
		Delayus(wd);
		digitalwrite(CLKpin,1);
		Delayus(wd);
		digitalwrite(CLKpin,0);
		address=address<<1;
		}
	for (i=0;i<4;i++)
		{
		digitalwrite(CLKpin,1);
		Delayus(wd);
		digitalwrite(CLKpin,0);
		Delayus(wd);
		}
	for (i=0;i<8;i++)
		{
		digitalwrite(CLKpin,1);
		if (digitalread(SDI)==1) resultat=resultat|1;
		if(i!=7) resultat=resultat<<1;
		digitalwrite(CLKpin,0);
		Delayus(wd);
		}
digitalwrite(CS,1);
return(resultat);
}

void short_write(unsigned char address,unsigned char value)
{
	unsigned char i;
	
	digitalwrite(CS,0);
	address=((address<<1)&0x7F)|1;
	for (i=0;i<8;i++)
		{
		if ((address&0x80)!=0) digitalwrite(SDO,1);
		else digitalwrite(SDO,0);
		digitalwrite(CLKpin,1);
		Delayus(wd);
		digitalwrite(CLKpin,0);
		address=address<<1;
		}
	for (i=0;i<8;i++)
			{
			if ((value&0x80)!=0) digitalwrite(SDO,1);
			else digitalwrite(SDO,0);
			digitalwrite(CLKpin,1);
			Delayus(wd);
			digitalwrite(CLKpin,0);
			value=value<<1;
			}			
digitalwrite(CS,1);
}

void long_write(unsigned int address, unsigned char value)
{
	unsigned char i;
	
	digitalwrite(CS,0);
	address=((address<<1)&0x7FF)|0x801;
	for (i=0;i<12;i++)
		{
		if ((address&0x800)!=0) digitalwrite(SDO,1);
		else digitalwrite(SDO,0);
		Delayus(wd);
		digitalwrite(CLKpin,1);
		Delayus(wd);
		digitalwrite(CLKpin,0);
		address=address<<1;
		}	
	for (i=0;i<4;i++)
		{
		digitalwrite(CLKpin,1);
		Delayus(wd);
		digitalwrite(CLKpin,0);
		Delayus(wd);
		}
	for (i=0;i<8;i++)
		{
		if ((value&0x80)!=0) digitalwrite(SDO,1);
		else digitalwrite(SDO,0);
		digitalwrite(CLKpin,wd);
		Delayus(1);
		digitalwrite(CLKpin,wd);
		value=value<<1;
		}			
digitalwrite(CS,1);				
}

void init_zigbee()
{
	digitalwrite(RESET,0);
	digitalwrite(CS,1);
	digitalwrite(CLKpin,0);
	digitalwrite(SDO,0);
	digitalwrite(RESET,1);
	Delayms(100);
}
		
void loop()
{
	unsigned char reponse;
	unsigned char i;
	
	serial_write("SPI with MRF24J40MA\r\n");
	init_zigbee();
	
	short_write(EADR0,0x7f);
	reponse=short_read(EADR0);
	serial_write(reponse,HEX);
	while(1);
}	


