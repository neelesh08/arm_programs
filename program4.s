    ; program to find to add an array of 16 bit numbers and store the 32 bit result in internal RAM
	AREA alp4 , code , readonly
	export start1
start1
	LDR r1 ,= 0x10000050		; starting address
	mov r0 , #0                	; to store sum 
	mov r2 , #10				; 10 numbers
loop 
	LDRH r3 ,[r1] , #2       	; post indexing mode 
	add r0 ,r0 , r3
	subs r2, r2, #1				; decrement counter
	BNE loop
	LDR r1 ,= 0x10000080
	str r0 , [r1]               ; storing the value at r1 location
stop b stop
	end