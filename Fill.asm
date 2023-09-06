@24576
D=M
@6
D;JGT
@24
0;JEQ
@16384          // 6 PAINT
D=A
@33
M=D             
@33             // 10 PAINT LOOP
D=M
A=D
M=-1
@33             // PAINT OUT
D=M
@24575
D=D-A;
@0
D;JEQ
@33             // PAINT +1
M=M+1
@10
0;JEQ
@16384          // 24 DEPAINT
D=A
@33
M=D             
@33             // 28 DEPAINT LOOP
D=M
A=D
M=0
@33             // DEPAINT OUT
D=M
@24575
D=D-A;
@0
D;JEQ
@33             // DEPAINT +1
M=M+1
@28
0;JEQ



//24576