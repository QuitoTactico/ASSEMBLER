@INIT
0;JMP

(draw)
	@18000
	D=A
	@R12    //puedes poner en donde comienza 
	AD=D+M	//	el dibujo
	@96 
	D=D+A 
	A=D-A 
	M=D-A 
	D=A 
	@32
	AD=D+A
	@112 
	D=D+A 
	A=D-A 
	M=D-A 
	D=A 
	@32
	AD=D+A
	@120 
	D=D+A 
	A=D-A 
	M=D-A 
	D=A 
	@32
	AD=D+A
	@108 
	D=D+A 
	A=D-A 
	M=D-A 
	D=A 
	@32
	AD=D+A
	@102 
	D=D+A 
	A=D-A 
	M=D-A 
	D=A 
	@32
	AD=D+A
	@96 
	D=D+A 
	A=D-A 
	M=D-A 
	D=A 
	@32
	AD=D+A
	@96 
	D=D+A 
	A=D-A 
	M=D-A 
	D=A 
	@32
	AD=D+A
	@96 
	D=D+A 
	A=D-A 
	M=D-A 
	D=A 
	@32
	AD=D+A
	@96 
	D=D+A 
	A=D-A 
	M=D-A 
	D=A 
	@32
	AD=D+A
	@96 
	D=D+A 
	A=D-A 
	M=D-A 
	D=A 
	@32
	AD=D+A
	@96 
	D=D+A 
	A=D-A 
	M=D-A 
	D=A 
	@32
	AD=D+A
	@1022 
	D=D+A 
	A=D-A 
	M=D-A 
(END)
@END
0;JMP

(INIT)
@draw
0;JMP