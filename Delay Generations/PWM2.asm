ORG 0000H
MOV A,#0FFH
BACK: CPL A
MOV P1,A
LCALL DELAY
SJMP BACK
DELAY: MOV R1,#5 ;outer loop executed 5 times (1)
A1: MOV R2,#95 ; count goes to 95 times for every one outer loop. (1)
B1: MOV R3,#200
AGAIN:DJNZ R3,AGAIN ;(2)
DJNZ R2,B1 ;(2)
DJNZ R1,A1
RET
END