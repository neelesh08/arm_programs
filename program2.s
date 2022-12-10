	AREA ALP2 , CODE , READONLY    ;program to find the sum first 10 integer numbers
	EXPORT start1
start1
	mov R0 , #10
	mov R1 , #00
loop
	add r1 , r1 , r0
	subs r0 , r0 , #1
	BNE loop
stop b stop 
	end
	