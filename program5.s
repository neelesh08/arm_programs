	AREA ALP5,CODE,READONLY
	EXPORT start1
start1
	LDR R0,=0x10000005
	LDMIA R0!,{R1-R4}
	ADDS R3,R3,R1
	ADCS R4,R4,R2
	MOV R5,#0
	ADDCS R5,#1 
	STMIA R0,{R3,R4,R5}
STOP B STOP
	END