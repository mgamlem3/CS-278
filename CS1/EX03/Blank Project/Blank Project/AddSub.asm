TITLE Add and Subtract              (AddSubAlt.asm)

; This program adds and subtracts 32-bit integers.
INCLUDE Irvine32.inc

.data
	; no data defined yet
.code
main PROC
	mov eax,10000h		; EAX = 10000h
	add eax,40000h		; EAX = 50000h
	sub eax,20000h		; EAX = 30000h
	call DumpRegs		; display registers
	exit                                      ; halt the program
main ENDP
END main
