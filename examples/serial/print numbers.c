//
//

int number;

void setup()
{
serial_begin(9600);
}

void loop()
{
//
number=3200;
serial_write("Decimal 3200=");
serial_write(number,DEC);
serial_write("\n\r");
number=253;
serial_write("Hexadecimal 253=");
serial_write(number,HEX);
serial_write("\n\r");
number=156;
serial_write("Binary 156=");
serial_write(number,BIN);
serial_write("\n\r");
number=236;
serial_write("Octal 236=");
serial_write(number,OCTAL);
serial_write("\n\r");
number=65;
serial_write("Byte 65=");
serial_write(number,BYTE);
serial_write("\n\r");
}

