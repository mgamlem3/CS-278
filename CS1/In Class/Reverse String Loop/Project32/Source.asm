TITLE  RevStr.asm
; This program reverses a string.
INCLUDE Irvine32.inc

.data
aName BYTE 51 DUP(0) ;create input buffer max 50 characters
nameSize = ($ - aName) - 1
rName BYTE nameSize DUP (?),0
byteCount DWORD ? ; holds counter

.code
main PROC
	mov edx, OFFSET aName  ;point to the buffer
	mov ecx, nameSize	   ;specify max characters
	call ReadString			;input the string
	mov bytecount, eax		;number of characters
	;mov aName, eax


    mov ecx,nameSize  ; Load loop counter with size of aName
    mov esi, 0

    L1: movzx eax, aName[esi]  ; Loop and push each char onto the stack.
		push eax
		inc esi ; Reload loop counter
    loop L1
	mov esi, 0
	mov ecx, nameSize
    L2: pop eax; Loop and pop each char off of the stack into the memory array rName
		mov rName[esi], al
		inc esi
	loop L2
    
    ; Display the names.
    mov edx,OFFSET aName
    call Writestring
    call Crlf	
    mov edx,OFFSET rName
    call Writestring
    call Crlf
    exit
main ENDP
END main
