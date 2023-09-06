//	sqroot(a) = b
//	16 = a | 17 = b
//	18 = c (auxiliar, b^2 que se va acercando cada vez más a a) (llega hasta (b+1)^2 y luego es borrado)
//	19 = d (auxiliar, ayuda a conseguir c (la b^2 con la que se tantea))

@10	//a
D=A
@a
M=D

@b
M=0

@c
M=0

@d
M=0


(LOOP)
@b
M=M+1

@b
D=M
@d
M=D

@c
M=0

(MULT)
@b
D=M

@c
M=D+M

@d
M=M-1
D=M

@MULT
D;JGT
(FINMULT)	// no usado, sólo para guiarme

@a
D=M
@c
D=D-M
@ENDLOOP
D;JLT

@LOOP
0;JMP

(ENDLOOP)
@b
M=M-1

@c
M=0

(END)
@END
0;JMP

