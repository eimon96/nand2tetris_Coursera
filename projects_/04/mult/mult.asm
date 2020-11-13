// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


// initialize R2
@R2
M = 0

// hold R0 value to temp
@R0
D = M
@temp
M = D


(LOOP)
@R1 // M = R1
D = M // D = R1

@R2
M = M + D // R2 = R2 + R1

@R0
M = M - 1
D = M


@LOOP
D;JNE

// return the value of R0
@temp
D = M
@R0
M = D

(END)
@END
0;JMP
