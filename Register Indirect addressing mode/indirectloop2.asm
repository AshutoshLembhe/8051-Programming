ORG 0000H
MOV A,#44H
MOV R0,#50H
MOV R2,#5 ;COUNTER
AGAIN:MOV @R0,A
INC R0
DJNZ R2,AGAIN
END