ORG 0000H
CLR C
MOV R0,#70H
MOV R1,#71H
MOV A,@R0
SUBB A,@R1
JNC NEXT
CPL A
INC A
NEXT: MOV R1, A
END
