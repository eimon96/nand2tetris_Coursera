// for (i=0; i<n; i++){
//    arr[i] = -1;
// }
// Suppose that arr = 100 and n = 10

// ousiastika to arr = 100 shmainei oti se mia thesh mnhmhs "arr" 
// exei apothikeutei to 100 = h thesh mnhmhs pou KSEKINAEI to array
// omoiws gia to n



// arr = 100
@100 // A = 100 
D = A 
@arr // M = RAM[arr] where arr = a register
M = D

// n = 10
@10
D = A 
@n
M = D 

// i = 0
@i
M = 0

(LOOP)
// if i == n goto END
@i
D = M 
@n
D = D - M // D = i - n
@END
D;JEQ

//arr[i] = -1 i goes on, means RAM[arr+i] = -1
@arr // A = arr && M = RAM[arr]
D = M 
@i // A = i && M = RAM[i]
A = D + M // A = RAM[arr] + RAM[i]      POINTER!!!!!!
M = -1 // RAM[ RAM[arr] + RAM[i] ] = -1     ?!!

// i++
@i
M = M + 1

@LOOP
0;JMP


(END)
@END
0;JMP
