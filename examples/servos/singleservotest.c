//
//
//
//
//
//
//
//
//
//

uchar position=1;

void setup(void)
{
ServoAttach(17);
}

void loop(void)
{
ServoWrite(17,position);
Delayms(500);
position++;
}


