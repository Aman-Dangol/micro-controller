org 0000h
ajmp main
org 0013h
clr p0.0
here:	JNB p3.3,here
	setb p0.0
	reti
	org 30h
main:	setb p3.3
	clr p0.0
	setb p0.1
	setb tcon.2
	mov ie,#10000100b
wait:	sjmp wait
	end
	
		