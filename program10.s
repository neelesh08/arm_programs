	AREA ALP10,CODE,READONLY
	EXPORT start1
start1
	LDR R0, =0X10000050
	MOV R1,#10 ;ARRAY SIZE
	MOV R3,#0 ;COUNT INTIALIZED TO ZERO
LOOP
	LDR R2,[R0],#4 ; 4 bytes = 32 bit numbers
	; load data into R2 and update R0 pointer
	MOVS R2,R2 ; updaate flags- even sign flag gets updated
	ADDMI R3,#1 ; if sign flag ==1, i.e MI is set; R3 is incremented
	SUBS R1,#1
	BNE LOOP
stop B stop
	END