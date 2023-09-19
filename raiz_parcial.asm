// [PARCIAL: Raíz entera de un número]
//
// Por: 	Esteban Vergara Giraldo
//      	Jonathan Betancur Espinoza
//      	Miguel Angel Cock Cano

//------------------------------------
// int(sqroot(A)) -> B
// input  (A) registro 16
// output (B) registro 17

// IMPORTANTE: Darle valor a A en
//	       la primera línea.


@32		// <---  INGRESAR A    [INPUT] <- <- <- <- <- <- <- <- <- <- <- 
D=A
@A
M=D //A=32


// Llegaremos a B por medio de tanteo.
// 	Probaremos las diferentes potencias
// 	cuadradas hasta pasarnos.

// Inicializamos el tanteo en 1
@1
D=A
@B
M=D 

// La raíz de cero es una excepción a 
//  este método. Si A == 0 entonces sale.
@A
D=M
@EXIT
D;JEQ  


// Aquí se inicializan las variables
//  necesarias para hacer cada tanteo.
// Cada tanteo es b^2.
(INIT)

    // Necesitamos un acumulador para
    //  guardar la potencia de cada tanteo.
    // Lo limpiamos cada ciclo al 
    //  asignarle un cero.
    @potencia
    M=0 

 
    // Necesitamos una variable auxiliar
    //  que diga cuántas veces vamos a 
    //  sumarle B al acumulador.

    // Ya que es b^2, es b×b, entonces al 
    //  acumulador, se le suma b, b veces. (suena raro XD)
    // En fin, el auxiliar se inicia en b
    //  e irá disminuyendo hasta llegar a 0.
    @B
    D=M
    @aux
    M=D 


    // MULTIPLICACION. Aquí es donde obtenemos
    //  la potencia cuadrada del tanteo actual.
    (MULTLOOP)

        // Le sumamos B al acumulador
        @B
        D=M
        @potencia
        M=D+M

        // Cada vez que lo hacemos, le
        //  restamos 1 al contador auxiliar.
        @aux
        M=M-1 

            // IF. Si el contador auxiliar llegó a 0
            //  entonces es porque la potencia
            //  ha sido terminada. Podemos validar.
            @aux
            D=M
            @VALIDAR 
            D;JEQ

            // ELSE. De lo contrario, le seguiremos
            //  sumando b al acumulador, y
            //  restándole 1 al contador auxiliar.
            @MULTLOOP  
            0;JMP


    (VALIDAR)

        // IF. Si la potencia que nos dió el 
        //  acumulador, es mayor que A, entonces
        //  ya nos pasamos, y tenemos el resultado.
        @potencia
        D=M
        @A
        D=D-M
        @EXIT 

        // ELSE. De lo contrario, tendremos que
        //  tantear con el siguiente número.
        // Le sumamos +1 a B, y nos ponemos a
        //  intentar de nuevo con su potencia.
        D;JGT            
        @B
        M=M+1
        @INIT
        0;JMP


// Ya que el resultado del tanteo 
//	siempre se pasa por +1, le
// 	restaremos ese excedente a B.
(EXIT)
@B
M=M-1 

//  [  YA OBTUVIMOS NUESTRO RESULTADO,  ]
//  [          SIGUE DIBUJAR            ]


//----------------------------------------
// Validación (switch-case) del resultado.
//
// Dependiendo de cuál número sea B
//	(o sea, el resultado), hará jump
//	hacia la zona en donde es dibujado.


//Validar si B es 0
@B
D=M
@DRAW0
D;JEQ

//Validar si B es 1
@B
D=M
@DRAW1
D-1;JEQ

//Validar si B es 2
@B
D=M
@2
D=D-A
@DRAW2
D;JEQ

//Validar si B es 3
@B
D=M
@3
D=D-A
@DRAW3
D;JEQ

//Validar si B es 4
@B
D=M
@4
D=D-A
@DRAW4
D;JEQ

//Validar si B es 5
@B
D=M
@5
D=D-A
@DRAW5
D;JEQ

//Validar si B es 6
@B
D=M
@6
D=D-A
@DRAW6
D;JEQ

//Validar si B es 7
@B
D=M
@7
D=D-A
@DRAW7
D;JEQ

//Validar si B es 8
@B
D=M
@8
D=D-A
@DRAW8
D;JEQ

//Validar si B es 9
@B
D=M
@9
D=D-A
@DRAW9
D;JEQ

//---------------------------------------------
//	Dibujar el número que le corresponde.
//  Hacer esta cosa fué horriblemente largo XD


//INICIO DIBUJO DEL 0
(DRAW0)

    //fila3
    @2016
    D=A
    @18064
    M=D

    //fila4
    @3120
    D=A
    @18096
    M=D

    //fila5
    @2576
    D=A
    @18128
    M=D

    //fila6
    @2576
    D=A
    @18160
    M=D

    //fila7
    @2320
    D=A
    @18192
    M=D

    //fila8
    @2320
    D=A
    @18224
    M=D

    //fila9
    @2192
    D=A
    @18256
    M=D

    //fila10
    @2192
    D=A
    @18288
    M=D

    //fila11
    @2128
    D=A
    @18320
    M=D

    //fila12
    @2128
    D=A
    @18352
    M=D

    //fila13
    @3120
    D=A
    @18384
    M=D

    //fila14
    @2016
    D=A
    @18416
    M=D

    @END
    0;JMP


//INICIO DIBUJO DEL 1
(DRAW1)

    //fila3
    @384
    D=A
    @18064
    M=D

    //fila4
    @448
    D=A
    @18096
    M=D

    //fila5
    @480
    D=A
    @18128
    M=D

    //fila6
    @432
    D=A
    @18160
    M=D

    //fila7
    @408
    D=A
    @18192
    M=D

    //fila8
    @384
    D=A
    @18224
    M=D

    //fila9
    @384
    D=A
    @18256
    M=D

    //fila10
    @384
    D=A
    @18288
    M=D

    //fila11
    @384
    D=A
    @18320
    M=D

    //fila12
    @384
    D=A
    @18352
    M=D

    //fila13
    @384
    D=A
    @18384
    M=D

    //fila14
    @4088
    D=A
    @18416
    M=D

    @END
    0;JMP


//INICIO DIBUJO DEL 2
(DRAW2)

    //fila3
    @960
    D=A
    @18064
    M=D

    //fila4
    @3696
    D=A
    @18096
    M=D

    //fila5
    @6168
    D=A
    @18128
    M=D

    //fila6
    @6168
    D=A
    @18160
    M=D

    //fila7
    @3072
    D=A
    @18192
    M=D

    //fila8
    @1536
    D=A
    @18224
    M=D

    //fila9
    @768
    D=A
    @18256
    M=D

    //fila10
    @384
    D=A
    @18288
    M=D

    //fila11
    @192
    D=A
    @18320
    M=D

    //fila12
    @96
    D=A
    @18352
    M=D

    //fila13
    @48
    D=A
    @18384
    M=D

    //fila14
    @8184
    D=A
    @18416
    M=D

    @END
    0;JMP


//INICIO DIBUJO DEL 3
(DRAW3)

    //fila3
    @4080
    D=A
    @18064
    M=D

    //fila4
    @6168
    D=A
    @18096
    M=D

    //fila5
    @3072
    D=A
    @18128
    M=D

    //fila6
    @1536
    D=A
    @18160
    M=D

    //fila7
    @768
    D=A
    @18192
    M=D

    //fila8
    @960
    D=A
    @18224
    M=D

    //fila9
    @3072
    D=A
    @18256
    M=D

    //fila10
    @6144
    D=A
    @18288
    M=D

    //fila11
    @4096
    D=A
    @18320
    M=D

    //fila12
    @6168
    D=A
    @18352
    M=D

    //fila13
    @3184
    D=A
    @18384
    M=D

    //fila14
    @960
    D=A
    @18416
    M=D

    @END
    0;JMP


//INICIO DIBUJO DEL 4
(DRAW4)

    //fila3
    @1536
    D=A
    @18064
    M=D

    //fila4
    @1792
    D=A
    @18096
    M=D

    //fila5
    @1920
    D=A
    @18128
    M=D

    //fila6
    @1728
    D=A
    @18160
    M=D

    //fila7
    @1632
    D=A
    @18192
    M=D

    //fila8
    @1584
    D=A
    @18224
    M=D

    //fila9
    @1560
    D=A
    @18256
    M=D

    //fila10
    @8184
    D=A
    @18288
    M=D

    //fila11
    @1536
    D=A
    @18320
    M=D

    //fila12
    @1536
    D=A
    @18352
    M=D

    //fila13
    @1536
    D=A
    @18384
    M=D

    //fila14
    @1536
    D=A
    @18416
    M=D

    @END
    0;JMP


//INICIO DIBUJO DEL 5
(DRAW5)

    //fila3
    @8176
    D=A
    @18064
    M=D

    //fila4
    @4088
    D=A
    @18096
    M=D

    //fila5
    @24
    D=A
    @18128
    M=D

    //fila6
    @24
    D=A
    @18160
    M=D

    //fila7
    @24
    D=A
    @18192
    M=D

    //fila8
    @2040
    D=A
    @18224
    M=D

    //fila9
    @4080
    D=A
    @18256
    M=D

    //fila10
    @6144
    D=A
    @18288
    M=D

    //fila11
    @4096
    D=A
    @18320
    M=D

    //fila12
    @6168
    D=A
    @18352
    M=D

    //fila13
    @4080
    D=A
    @18384
    M=D

    //fila14
    @2016
    D=A
    @18416
    M=D

    @END
    0;JMP


//INICIO DIBUJO DEL 6
(DRAW6)

    //fila3
    @960
    D=A
    @18064
    M=D

    //fila4
    @3696
    D=A
    @18096
    M=D

    //fila5
    @6160
    D=A
    @18128
    M=D

    //fila6
    @4120
    D=A
    @18160
    M=D

    //fila7
    @8
    D=A
    @18192
    M=D

    //fila8
    @968
    D=A
    @18224
    M=D

    //fila9
    @3704
    D=A
    @18256
    M=D

    //fila10
    @6168
    D=A
    @18288
    M=D

    //fila11
    @4104
    D=A
    @18320
    M=D

    //fila12
    @6168
    D=A
    @18352
    M=D

    //fila13
    @3696
    D=A
    @18384
    M=D

    //fila14
    @960
    D=A
    @18416
    M=D

    @END
    0;JMP


//INICIO DIBUJO DEL 7
(DRAW7)

    //fila3
    @8184
    D=A
    @18064
    M=D

    //fila4
    @8184
    D=A
    @18096
    M=D

    //fila5
    @7176
    D=A
    @18128
    M=D

    //fila6
    @3072
    D=A
    @18160
    M=D

    //fila7
    @3584
    D=A
    @18192
    M=D

    //fila8
    @1536
    D=A
    @18224
    M=D

    //fila9
    @1792
    D=A
    @18256
    M=D

    //fila10
    @768
    D=A
    @18288
    M=D

    //fila11
    @896
    D=A
    @18320
    M=D

    //fila12
    @384
    D=A
    @18352
    M=D

    //fila13
    @448
    D=A
    @18384
    M=D

    //fila14
    @448
    D=A
    @18416
    M=D

    @END
    0;JMP


//INICIO DIBUJO DEL 8
(DRAW8)

    //fila3
    @2016
    D=A
    @18064
    M=D

    //fila4
    @3120
    D=A
    @18096
    M=D

    //fila5
    @6168
    D=A
    @18128
    M=D

    //fila6
    @6168
    D=A
    @18160
    M=D

    //fila7
    @3120
    D=A
    @18192
    M=D

    //fila8
    @960
    D=A
    @18224
    M=D

    //fila9
    @3120
    D=A
    @18256
    M=D

    //fila10
    @6168
    D=A
    @18288
    M=D

    //fila11
    @4104
    D=A
    @18320
    M=D

    //fila12
    @6168
    D=A
    @18352
    M=D

    //fila13
    @3696
    D=A
    @18384
    M=D

    //fila14
    @960
    D=A
    @18416
    M=D

    @END
    0;JMP


//INICIO DIBUJO DEL 9
(DRAW9)

    //fila3
    @7104
    D=A
    @18064
    M=D

    //fila4
    @7792
    D=A
    @18096
    M=D

    //fila5
    @6168
    D=A
    @18128
    M=D

    //fila6
    @4104
    D=A
    @18160
    M=D

    //fila7
    @6168
    D=A
    @18192
    M=D

    //fila8
    @7792
    D=A
    @18224
    M=D

    //fila9
    @7104
    D=A
    @18256
    M=D

    //fila10
    @6144
    D=A
    @18288
    M=D

    //fila11
    @6144
    D=A
    @18320
    M=D

    //fila12
    @6144
    D=A
    @18352
    M=D

    //fila13
    @6144
    D=A
    @18384
    M=D

    //fila14
    @6144
    D=A
    @18416
    M=D

    @END
    0;JMP


//--------------------------------------
// el resultado ha sido dibujado
// ciclo infinito final

(END)
@END
0;JMP