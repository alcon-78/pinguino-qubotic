/*	----------------------------------------------------------------------------
	---------- getkey.pde
	----------------------------------------------------------------------------
	@author	(c)2010 - R. Blanchot <rblanchot@gmail.com>
	@desc		Simple example how to use serial_getkey()
	--------------------------------------------------------------------------*/

void setup()
{
	serial_begin(9600);
}

void loop()
{
	u8 c;
	
	serial_printf("Please, press a key\n");
	c = serial_getkey();
	serial_printf("You pressed key [%c]\n",c);
}


