// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


(START)
@SCREEN // SCREEN = 16384
D = A 
@addr //random
M = D // addr <- 16384

@8191 // RAM addresses = 24576 minus beggining of screen address =  16384 MINUS 1 cause last one is KBD
D = A
@n
M = D

@i
M = 0 // i <- 0



@KBD // KBD = 24576
D = M
@LOOPBLACK
D;JGT
@LOOPWHITE
D;JEQ



(LOOPBLACK)
@i
D = M // D <- i
@n
D = D - M  // i <- i - n
@WAIT
D;JGT

@addr
A = M // A <- 16384
M = -1 // RAM[addr] = 1111111111111111

@i
M = M + 1 // i++ 
@addr
M = M + 1

@KBD // KBD = 24576
D = M
@START
D;JEQ

@LOOPBLACK
0;JMP






(LOOPWHITE)
@i
D = M // D <- i
@n
D = D - M  // i <- i - n
@WAIT
D;JGT


@addr
A = M // A <- 16384
M = 0

@i
M = M + 1 // i++ 
@addr
M = M + 1

@KBD // KBD = 24576
D = M
@LOOPWHITE
D;JEQ




(WAIT)
@KBD // KBD = 24576
D = M
@START
0;JMP



