@100
D=A
@1
M=D

@0
D=M
@2
M=D
@4
M=D


(compare)
@2
D=M
(finish)
@finish
D; JEQ

@4
M=M-1
D=M
@reset
D; JEQ

@1
A=M 
D=M 

@1
A=M+1 
D=D-M 


@swap
D; JGT

@1
M=M+1 
@compare
0; JMP 

(swap)

@1
A=M 
D=M 
@3
M=D 


@1
A=M+1 
D=M 


@1
A=M 
M=D 


@3
D=M 
@1
A=M+1 
M=D 

@1
M=M+1 
@compare
0; JMP 

(reset)

@0
D=M
@4
M=D


@2
M=M-1


@100
D=A
@1
M=D
@compare
0; JMP