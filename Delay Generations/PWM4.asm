ORG 0000H
MOV TMOD,#20H ;TIMER 0,MODE 2 8BIT AUTO RELOAD
AGAIN:MOV TL0,#77H
MOV TH0,#0BFH
ACALL DELAY
CPL P1.0
SJMP AGAIN
DELAY: SETB TR0
INC P1
BACK: JNB TF0,BACK
CLR TR0

CLR TF0
DJNZ R5,DELAY
RET
END