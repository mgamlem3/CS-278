TITLE MASM Template	(main.asm)
; Description:    Demo And Operation  
INCLUDE Irvine32.inc    
.data
msgprompt BYTE "Please enter a integer: ",0
msgoutput BYTE "that number bitwise anded with 0Fh is ",0 
.code 
main proc
	; Ask the user to enter a integer
	mov edx, OFFSET msgprompt
	call WriteString
	call ReadInt

	; Bitwise AND operation
	;and eax, 0Fh
    ;and eax, 73h
    ;and eax, 00000000000000000000000001110011b
    or eax, 0FFFFFE73h

	mov edx, OFFSET msgoutput
	call WriteString ; output description
	call WriteHex
    ;call WriteInt    ; ouptut EAX result
	call crlf
	
	invoke ExitProcess,0
main endp
end main
