	PRESERVE8
	THUMB
	AREA |.text|,CODE,READONLY
	EXPORT __main
__main
	LDR R0,=0x20000000
	LDR R1,=0x20000200
	MOV R2,#0
swap
	LDRB R3,[R0,R2]
	STRB R3,[R1,R2]
	ADD R2,R2,#1
	CMP R2,#10
	BLT swap
stop B stop
	END
