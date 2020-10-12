ORG 0000H
MOV TMOD,#20H ;SM1
MOV SCON,#70H ;SM2
;Activating SMOD=1
MOV A,PCON
SETB ACC.7 
MOV PCON,A

MOV TH1,#-3 ;TIMER ONE ALONE USED 19200 BAUD RATE
SETB TR1
AGAIN:MOV R0,#12H ;ONLY THREE CHARACTERS CAN BE TRASMITTED
MOV DPTR,#8000H ;STARTING LOCATION OF EXTERNAL MEMORY
NEXT:MOVX A,@DPTR ;CONTENT AT ADDRESS OF DPTR IS MOVED TO A AND ACCESSING THE EXTERNAL MEMORY.
ACALL SUB ;CALLING SUBROUTINE
INC DPTR
DJNZ R0,NEXT
SJMP AGAIN
SUB:MOV SBUF,A ;TO HOLD THE DATA FROM A
WAIT:JNB TI,WAIT ;MONITOR THE TRANSMIT INTERRUPT FLAG
CLR TI
RET
END