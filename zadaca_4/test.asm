//sp
@256
D=A
@SP
M=D
//call main.Main 0
@main.Main$ret0
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@main.Main
0;JMP
(main.Main$ret0)
//ep
($EP$)
@$EP$
0;JMP
//function Main 0
(main.Main)
//push constant 5
@5
D=A
@SP
M=M+1
A=M-1
M=D
//call fibonacci.Fibonacci 1
@fibonacci.Fibonacci$ret1
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.Fibonacci
0;JMP
(fibonacci.Fibonacci$ret1)
//pop static 1
@SP
AM=M-1
D=M
@main.1
M=D
//push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//push constant 5
@5
D=A
@SP
M=M+1
A=M-1
M=D
//push constant 8
@8
D=A
@SP
M=M+1
A=M-1
M=D
//call mid.Mid 3
@mid.Mid$ret2
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@mid.Mid
0;JMP
(mid.Mid$ret2)
//pop static 0
@SP
AM=M-1
D=M
@main.0
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//function Fibonacci 1
(Fibonacci.Fibonacci)
@SP
M=M+1
A=M-1
M=0
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB3
D;JLT
@LAB4
D=0;JMP
(LAB3)
D=-1
(LAB4)
@SP
A=M-1
M=D
//if-goto B
@SP
AM=M-1
D=M+1
@Fibonacci.Fibonacci$B
D;JEQ
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//call fibonacci.Fibonacci 1
@fibonacci.Fibonacci$ret5
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.Fibonacci
0;JMP
(fibonacci.Fibonacci$ret5)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//call fibonacci.Fibonacci 1
@fibonacci.Fibonacci$ret6
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.Fibonacci
0;JMP
(fibonacci.Fibonacci$ret6)
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label B
(Fibonacci.Fibonacci$B)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//function Mid 3
(Mid.Mid)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB7
D;JGT
@LAB8
D=0;JMP
(LAB7)
D=-1
(LAB8)
@SP
A=M-1
M=D
//if-goto ab
@SP
AM=M-1
D=M+1
@Mid.Mid$ab
D;JEQ
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB9
D;JGT
@LAB10
D=0;JMP
(LAB9)
D=-1
(LAB10)
@SP
A=M-1
M=D
//if-goto bc
@SP
AM=M-1
D=M+1
@Mid.Mid$bc
D;JEQ
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label ab
(Mid.Mid$ab)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB11
D;JGT
@LAB12
D=0;JMP
(LAB11)
D=-1
(LAB12)
@SP
A=M-1
M=D
//if-goto ac
@SP
AM=M-1
D=M+1
@Mid.Mid$ac
D;JEQ
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label bc
(Mid.Mid$bc)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB13
D;JGT
@LAB14
D=0;JMP
(LAB13)
D=-1
(LAB14)
@SP
A=M-1
M=D
//if-goto ac2
@SP
AM=M-1
D=M+1
@Mid.Mid$ac2
D;JEQ
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label ac
(Mid.Mid$ac)
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB15
D;JGT
@LAB16
D=0;JMP
(LAB15)
D=-1
(LAB16)
@SP
A=M-1
M=D
//if-goto bc2
@SP
AM=M-1
D=M+1
@Mid.Mid$bc2
D;JEQ
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label ac2
(Mid.Mid$ac2)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
//label bc2
(Mid.Mid$bc2)
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//return
@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
