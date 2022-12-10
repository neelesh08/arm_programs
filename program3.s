	
	; program find factorial of a number.
	AREA ALP3 , CODE , READONLY
	export start1
start1
	mov r0 , #5			  ; to find 5!
	mov r1 , #1			  ; Result in R1
loop
	mul r1 , r1 , r0
	subs r0 , r0 , #1     ;decrement counter
	BNE loop
stop b stop 
	end