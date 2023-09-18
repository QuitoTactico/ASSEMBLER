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
//	clean (white)

@DRAWLOOP
0;JMP

(CLEAN)
@16384
D=A
@actualClean
M=D

@a1		//restart draw pos
D=A
@initDraw
M=D
@actualDraw
M=D

@initPos	//restart screen pos
D=M
@actualPos
M=D

(CLEANLOOP)
@actualClean
A=M
M=0

@24575		//if screen cleaned,
D=A		//  draw (drawloop)
@actualClean
D=M-D
@DRAWLOOP
D;JEQ

@actualClean	//else +1 and loop
M=M+1
@CLEANLOOP
0;JMP

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
@KEY		//finish drawing,
D;JEQ		//  wait for key


@DRAWLOOP	//else drawloop
0;JMP

//-----------------------------
//	key

(KEY)
@24576
D=M
@actualKey
M=D

(LEFT)
@130	
D=A
@actualKey
D=M-D
@RIGHT	
D;JNE	//if not left, continue
@initPos
M=M-1
@CLEAN
0;JMP	//if left, pos-1 and draw

(RIGHT)
@132	
D=A
@actualKey
D=M-D
@UP
D;JNE	//if not right, continue
@initPos
M=M+1
@CLEAN
0;JMP	//if right, pos+1 and draw

(UP)
@131	
D=A
@actualKey
D=M-D
@DOWN
D;JNE	//if not up, continue
@512	//if up, pos-512 and draw
D=A
@initPos
M=M-D
@CLEAN
0;JMP	

(DOWN)
@133	
D=A
@actualKey
D=M-D
@FUCKYOU
D;JNE	//if not down, continue
@512	//if down, pos+512 and draw
D=A
@initPos
M=M+D
@CLEAN
0;JMP	

(FUCKYOU)
@KEY
0;JMP	//anyways... wait for key

//-----------------------------
//	deprecated end
(END)
@END
0;JMP