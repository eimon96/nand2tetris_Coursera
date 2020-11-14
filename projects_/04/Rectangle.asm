// for (i=0; i<n; i++){
//     draw 16 black pixels at the beggining of row i
//     dld width = 16 px kai height = RAM[0] px
// }

// addr = SCREEN
// n = RAM[0]
// i = 0

// LOOP:
//     if i > n goto END
//     RAM[addr] = -1 //1111111111111111
//     // advances to the next row
//     addr = addr + 32
//     i++
//     goto LOOP

// END:
//     goto END

@SCREEN // SCREEN = 16384
D = A 
@addr //random
M = D // addr <- 16384

@0
D = M // D <- RAM[0]
@n
M = D // n <- RAM[0]

@i
M = 0 // i <- 0

(LOOP)
@i
D = M // D <- i
@n
D = D - M  // i <- i - n
@END
D;JGT

@addr
A = M // A <- 16384
M = -1 // RAM[addr] = 1111111111111111

@i
M = M + 1 // i++
@32
D = A 
@addr
M = D + M // addr <- addr + 32
@LOOP
0;JMP

(END)
@END
0;JMP



















