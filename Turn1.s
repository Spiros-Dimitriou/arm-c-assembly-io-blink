	AREA SIMPLE_PROG,CODE,READONLY
	
GPIOD EQU  	0x40020C00
GPIO_BSRR EQU 	0x18
	
Turn1 		PROC
			EXPORT Turn1
				
			ldr r0,=GPIOD
			mov r2,#0x5000
			str r2,[r0,#GPIO_BSRR]
			mov r2,#0xA0000000
			str r2,[r0,#GPIO_BSRR]
			
			
			bx lr
			ENDP
			ALIGN
			END