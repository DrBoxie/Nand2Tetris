// size of screen is 256 rows on 512 columns, which is 131072 bits, which is 8192 registers

@8192
D=A
@size
M=D 

(START)
@SCREEN 
D=A 
@address 
M=D 

@i 
M=0 

@KBD // 10
D=M 

@WHITEN 
D;JEQ 

(BLACKEN)
@address // 14
A=M
M=-1  

@i 
M=M+1
D=M 
@size 
D=D-M 
@START 
D;JGE 

@address 
M=M+1

@BLACKEN 
0;JMP 

(WHITEN)
@address 
A=M
M=0  

@i 
M=M+1
D=M 
@size 
D=D-M 
@START 
D;JGE 

@address 
M=M+1 

@WHITEN 
0;JMP 