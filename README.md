# arm-c-assembly-io-blink
Combine C and arm assembly functions to blink some of the STM32F4-Discovery board

After the intialization of the board in C, the assembly functions Turn1 and Turn2 run recursively with a delay between them.
In the assembly functions we can see the initialization of the addresses that the GPIO pins are controlled.
We can store a 32 bit word in the GPIO register and have the LEDS behave accordingly.
In this control word bits 28-31 reset the LEDs and bits 12-15 set them.
It is impossible to set LED x and reset LED y at the same time.
Reseting and setting have to be done in different GPIO register str instructions.
