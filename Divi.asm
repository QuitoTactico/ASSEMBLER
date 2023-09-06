// a/b = c
// 16 = a | 17 = b | 18 = c

@40     //a
D=A
@a
M=D

@5      //b
D=A
@b
M=D

@c
M=0

(LOOP)
@b
D=M
@a
M=M-D

D=M
@END
D;JLT

@c
M=M+1

@LOOP
0;JMP

(END)
@END
0;JMP