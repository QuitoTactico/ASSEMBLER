// ARGUMENTS: 	-initPos
//		-draw
//		-size

//-----------------------------
//  	initPos y actualPos

@18000		//initPos
D=A
@initPos
M=D
@actualPos
M=D

//-----------------------------
//	draw
// AMONGUS [a1 , a16]
//	   [21 ,  36]

@a1
M=0

@2016
D=A
@a2
M=D

@3120
D=A	
@a3
M=D

@2064
D=A
@a4
M=D

@6264
D=A
@a5
M=D

@10372
D=A
@a6
M=D
@a7
M=D

@10360
D=A
@a8
M=D

@10256
D=A
@a9
M=D
@a10
M=D

@6160
D=A
@a11
M=D

@2448
D=A
@a12
M=D

@2640
D=A
@a13
M=D

@1632
D=A
@a14
M=D

@a15
M=0
@a16
M=0

//-----------------------------
//	draw properties

@16		//size
D=A
@size
M=D

@a1
D=A
@initDraw
M=D
@actualDraw
M=D

//-----------------------------
//	DRAWLOOP

(DRAWLOOP)

@actualDraw
A=M
D=M

@actualDraw
M=M+1

@actualPos
A=M
M=D

@32
D=A
@actualPos
M=M+D

@actualDraw
D=M
@initDraw
D=D-M
@size
D=D-M
@END		//finish drawing
D;JEQ


@DRAWLOOP	//else drawloop
0;JMP


//-----------------------------
(END)
@END
0;JMP