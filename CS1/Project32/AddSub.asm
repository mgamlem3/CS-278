TITLE MASM Template	(main.asm)
; Description:    Example String Output
; Author:         M. Bell with Will Crowther
; Date:           9/22/2016
INCLUDE Irvine32.inc    
.data
myMessage BYTE "A note on the wall says: 'XYZZY'",0dh,0ah,0
.code
main PROC
	mov eax, 58d + 25d * 42d
    call DumpRegs   
    mov	 edx,OFFSET myMessage
    call WriteString
    exit
main ENDP
END main

