// Computes RAM[1] = 1 + 2 + ... + RAM[0]
// Pseudo Code:
// n = R0
// i = 1
// sum = 0
// LOOP:
//      if i > n goto STOP
//      sum = sum + i
//      i++
//      goto LOOP
// STOP:
//      R1 = sum

@R0 // M=RAM[R0]
D = M
@n
M = D // RAM[n] = RAM[R0] <=> n = R0

@i
M = 1 // RAM[i] = 1 <=> i = 1

@sum
M = 0 // sum = 0

(LOOP)
@i
D = M // D = i
@n // M = n
D = D - M // D = i - n 
@STOP
D;JGT // if i > n goto STOP

@sum
D = M // D = sum
@i
D = D + M // D = sum + i
@sum
M = D // sum = sum + i
@i
M = M + 1 // i = i + 1
@LOOP
0;JMP 


(STOP)
@sum
D = M
@R1
M = D

(END)
@END
0;JMP