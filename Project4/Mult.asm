// RAM[0] is first number
// We will add up RAM[1] to itself RAM[0] times (RAM[0] = 4, RAM[1] = 7)
@R0
D=M

@times
M=D

@i
M=0

(LOOP)
@i
D=M
@times
D=D-M
@END
D;JGE

@R1
D=M
@R2
M=D+M

@i
M=M+1

@LOOP
0;JMP

(END)
@END
0;JMP

