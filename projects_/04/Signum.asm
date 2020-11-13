//Computes: if R0>0
//             R1=1
//          else
//             R1=0

@R0 // A=R0
D=M // D=RAM[0] gt edw R0=0

@POSITIVE
D;JGT

@R1
M=0
@END
0;JMP

(POSITIVE)
@R1 // A=R1 M=RAM[1]
M=1

(END)
@END
0;JMP