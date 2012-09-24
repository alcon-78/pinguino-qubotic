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
Delayms(500);
ServoAttach(0);
ServoAttach(1);
ServoAttach(2);
ServoAttach(3);
ServoAttach(4);
ServoAttach(5);
ServoAttach(6);
ServoAttach(7);
ServoAttach(8);
ServoAttach(9);
ServoAttach(10);
ServoAttach(11);
ServoAttach(12);
ServoAttach(13);
ServoAttach(14);
ServoAttach(15);
ServoAttach(16);
ServoAttach(17);
}

void loop(void)
{                        
ServoWrite(0,255-position);
ServoWrite(1,255-position);
ServoWrite(2,255-position);
ServoWrite(8,255-position);
ServoWrite(9,255-position);
ServoWrite(10,position);
ServoWrite(11,position);
ServoWrite(12,position);
ServoWrite(16,position);
ServoWrite(17,position);
if(position>100){
    ServoMaximumPulse(3);
    ServoMaximumPulse(4);
    ServoMaximumPulse(5);
    ServoMaximumPulse(6);
    ServoMaximumPulse(7);
    ServoMaximumPulse(13);
    ServoMaximumPulse(14);
    ServoMaximumPulse(15);
} else {
    ServoMinimumPulse(3); 
    ServoMinimumPulse(4); 
    ServoMinimumPulse(5); 
    ServoMinimumPulse(6); 
    ServoMinimumPulse(7); 
    ServoMinimumPulse(13);
    ServoMinimumPulse(14);
    ServoMinimumPulse(15);
}
Delayms(250);
position++;
}




