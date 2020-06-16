	AREA SIMPLE_PROG,CODE,READONLY
	
GPIOD EQU  	0x40020C00
GPIO_BSRR EQU 	0x18
	
Turn2	 	PROC
			EXPORT Turn2
				
			ldr r0,=GPIOD
			mov r2,#0x50000000
			str r2,[r0,#GPIO_BSRR]
			mov r2,#0xA000
			str r2,[r0,#GPIO_BSRR]
			
				
			bx lr
			ENDP
			ALIGN
			END