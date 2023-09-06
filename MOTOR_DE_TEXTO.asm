@24576              //  O   L   I   C   U
D=M                 //  79  76  73  67  85
@6              //goto white
D;JEQ
@24             //goto keys
0;JEQ
@16384          //  white
D=A
@33
M=D             
(LOOP)
@33             // 10 PAINT LOOP
D=M
A=D
M=0
@33             // PAINT OUT
D=M
@24575
D=D-A;
@0
D;JEQ
@33             // PAINT +1
M=M+1
@LOOP
0;JEQ           // 23

@777            // KEYS
M=D

@777            //go left  OC
D=M
@79                
D=D-A            
@40   
D;JEQ            
@777
D=M
@67                
D=D-A 
@40
D;JEQ  

@42
0;JEQ
@16769          //left 40
M=-1

@777            //go down  OLCU    42 -6
D=M
@79                
D=D-A            
@68  
D;JEQ 
@777  
D=M
@76   
D=D-A 
@68   
D;JEQ 
@777  
D=M
@67   
D=D-A 
@68 
D;JEQ 
@777  
D=M
@85   
D=D-A 
@68  
D;JEQ 

@70     
0;JEQ
@17537      //down 68 -7
M=-1

@777  
D=M
@79   
D=D-A 
@102
D;JEQ 
@777  
D=M
@76   
D=D-A 
@102
D;JEQ
@777  
D=M
@73   
D=D-A 
@102
D;JEQ  
@777  
D=M
@67   
D=D-A 
@102
D;JEQ 
@777  
D=M
@85   
D=D-A 
@102  
D;JEQ 

@122
0;JEQ
@16801        //102 -9 START LEFT
D=A
@40
M=D
@40    //LOOP LEFT 106
D=M
A=D
M=1
@40
D=M
@17505
D=D-A
@122
D;JEQ
@32
D=A
@40
M=D+M
@106
0;JEQ

@777    //122 -10   RIGHT O,U
D=M
@79   
D=D-A 
@136   
D;JEQ 
@777
D=M
@85   
D=D-A 
@136
D;JEQ 

@154
0;JEQ
@16770        //-11
D=A
@41
M=D
@41        //LOOP RIGHT
D=M
A=D
M=1
@17538
D=D-A
@154
D;JEQ
@32
D=A
@41
M=D+M
@140
0;JEQ

@0          //-12, ENDDDDD, PUTA
0;JEQ

//24576