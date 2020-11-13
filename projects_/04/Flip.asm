// flips the values of 
// RAM[0] and RAM[1]

// temp = R0
// R0 = R1
// R1 = temp

// @temp : find some available memory register
// and use it to represent the variable temp

@R0 // A=R0=0 M=RAM[0]
D=M // D=RAM[0]
@temp // A=temp M=RAM[temp] where temp = a register
M=D // temp=RAM[0]

@R1 // A=R1=1 M=RAM[1]
D=M // D=RAM[1]
@R0 // A=RO=0 M=RAM[0]
M=D // R0=R1

@temp // A=temp M=RAM[temp] where temp = a register
D=M // D=RAM[temp]
@R1 // A=R1 M=RAM[1]
M=D // R1 = temp

(END)
@END // A = END
0;JMP // LOOP TO END