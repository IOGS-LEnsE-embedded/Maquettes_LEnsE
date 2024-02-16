/*
 *  Copyright (c) 2012 Neal Horman - http://www.wanlink.com
 *  
 *  License: MIT open source (http://opensource.org/licenses/MIT)
 *      Summary;
 *      Use / modify / distribute / publish it how you want and 
 *      if you use it, or don't, you can't hold me liable for how
 *      it does or doesn't work.
 *      If it doesn't work how you want, don't use it, or change
 *      it so that it does work.
 */
 
#include "mbed.h"
#include "Adafruit_SSD1306.h"
#include "Adafruit_GFX.h"
#include <cstdint>
 
DigitalOut myled(LED1);
 
// an I2C sub-class that provides a constructed default
class I2CPreInit : public I2C
{
public:
    I2CPreInit(PinName sda, PinName scl) : I2C(sda, scl)
    {
        frequency(400000);
        start();
    };
};
 
I2CPreInit gI2C(I2C_SDA,I2C_SCL);
Adafruit_SSD1306_I2c gOled2(gI2C, NC);
 
int main()
{   
    uint8_t i = 1;
    wait_us(1000000);
    gOled2.clearDisplay();
    while(1)
    {
        myled = !myled;
        gOled2.clearDisplay();
        gOled2.drawChar(0, 0, '0'+i, 1, 0, 20);
        gOled2.drawCircle(50, 20, 10, 1);
        gOled2.display();
        if(i == 9)  i = 0;
        else        i++;
        wait_us(500000);
    }
}