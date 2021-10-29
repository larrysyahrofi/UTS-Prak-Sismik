;PROGRAM DIGITAL IO SEDERHANA 

	org 00h ;Program dimulai dari alamat 00
 
MOV P3, #00000000B
	MULAI: 
	mov p3, #00h
	JNB P2.0, LED1 ;Jika P2.0 = 0, maka lompat ke label LED 1
 	JNB P2.1, LED2 ;Jika P2.1 = 0, maka lompat ke label LED 2
        SJMP MULAI
       
LED1: MOV P3, #00001111B
      ;MOV P3, #00H
      SJMP MULAI

LED2: MOV P3, #11110000B
 	;MOV P3, #00H
	;ACALL DELAY
      SJMP MULAI
      
;DELAY : MOV r0, #6
      END