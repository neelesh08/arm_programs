	AREA ALP8,CODE,READONLY
	EXPORT start1
start1
	MOV R1, #5 ; ARRAY SIZE-1 in outer loop counter R1 (Pass Counter)
outloop
	MOV R3, R1 ; R3 – inner loop counter (comparison counter)
	LDR R0,=0x10000050 ; Starting Address of the array
INLOOP
	LDR R2,[R0],#4 ; R2=First element of array & post increment by 4 for next number
	LDR R4,[R0] ; second number to be compared is loaded into R4
	CMP R4,R2
	BCS SKIP ; Branch on carry set (lower number in R4) to ‘no exchange-SKIP’
; else exchange
; BCC SKIP for Descending Order
; Store first number in R2 into array at second number place pointed by [R0]
;Decreament R0 by 4 to point to previous number (first)
	STR R2,[R0],#-4
; store the copied second number in R4 into first number’s place
; & increament R0 to point to second number location
	STR R4,[R0],#4
SKIP
	SUBS R3,R3,#1 ; Decrement Inner Loop
	BNE INLOOP
	SUBS R1,R1,#1 ; Decrement Outer Loop
	BNE outloop
stop B stop
	END
		