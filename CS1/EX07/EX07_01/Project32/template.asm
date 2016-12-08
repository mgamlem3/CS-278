TITLE MASM Illustrate removal of unpredictable branches (main.asm)
; Description:
; Revision date:
INCLUDE Irvine32.inc
CONST1 EQU 35
CONST2 EQU 45
CONST3 EQU CONST1 - CONST2
.data
.code
main PROC
    call Clrscr
    ;-------------------------------------------------------------
    ; Assembly language to solve unpredictable branch problem
    ;-------------------------------------------------------------
    mov ecx, 20
L1:
    ; Compute a random EBX value
    push ecx
    mov eax,5000           
    call RandomRange
    mov ebx, eax   ; move random value to EBX
    
    ; Compute a random EAX calue
    mov eax,5000           
    call RandomRange   
    
    ; Conditionally set ECX to CONST1 or CONST2
    xor ecx, ecx 		; clear ecx (C in the C++ code)

    cmp EAX, EBX        ; values of EAX and EBX unpredictable
    setge cl 		;  cl= 0          OR  cl= 1

    sub ecx, 1 		; ecx= FFFFFFFFh  OR ecx= 00000000h
    and ecx, CONST3 	; ecx= CONST3     OR ecx= 00000000h
    add ecx, CONST2 	; ecx= CONST1     OR ecx= CONST2 

    ; Use the value of ECX 
    mov eax, ecx
    call WriteInt
    call crlf
    pop ecx
loop L1
exit
main ENDP
END main
