DATA SEGMENT              ; Start of the data segment
S1 DB 10,1,2,3,4,5,6,7,8,9,10   ; Define an array S1 with the specified values
S2 DB 10 DUP(0)                ; Define an array S2 with 10 elements all initialized to 0
DATA ENDS                      ; End of the data segment

CODE SEGMENT                   ; Start of the code segment
ASSUME CS:CODE,DS:DATA         ; Assume that the code segment is CODE and the data segment is DATA

START: MOV AX,DATA             ; Load the address of the data segment into AX
MOV DS,AX                      ; Move the content of AX into DS (Data Segment register)
MOV ES,AX                      ; Move the content of AX into ES (Extra Segment register)
LEA SI,S1                      ; Load the effective address of S1 into SI (Source Index register)
LEA DI,S2                      ; Load the effective address of S2 into DI (Destination Index register)
MOV CL,[SI]                    ; Move the first byte of S1 into CL (will be used for REP MOVSB count)
MOV CH,00H                     ; Clear CH, setting CX to be 8-bit CL's value (CX is used as a counter)
INC SI                         ; Increment SI to point to the next element in S1
CLD                            ; Clear the direction flag (ensures string operations increment SI/DI)
REP MOVSB                      ; Repeat moving byte from address DS:SI to ES:DI for CX times
MOV AX,4C00H                   ; Load the value 4C00H into AX (Terminate program with return code 0)
INT 21H                        ; Call interrupt 21H (DOS interrupt) to terminate the program
CODE ENDS                      ; End of the code segment

END START                      ; Indicate that execution should start at the label 'START'
