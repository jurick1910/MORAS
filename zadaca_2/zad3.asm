@R0
D = M
@R5
M = D

@R1
D = M - D

@M1
D; JGT

@S1
D; JLT

(M1)
@R1
D = M
@R5
M = D

(S1)
@R5
D = M

@R2
D = M - D

@M2
D; JGT

@S2
D; JLT

(M2)
@R2
D = M
@R5
M = D

(S2)
@R5
D = M

@R3
D = M - D

@M3
D; JGT

@S3
D; JLT

(M3)
@R3
D = M
@R5
M = D

(S3)
@R5
D = M

@R4
D = M - D

@M4
D; JGT

@END
D; JLT

(M4)
@R4
D = M
@R5
M = D


(END)
@END
0;JMP