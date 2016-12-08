;TITLE MASM Template						(main.asm)
INCLUDE Irvine32.inc
.data
msg BYTE "Hello there CS278", 0
.code
CopyString PROC pArray:PTR BYTE, count:DWORD
	LOCAL var1:WORD, var2:DWORD, temp[20]:BYTE
	lea edi, temp
	mov ecx, count
	mov esi, pArray
	mov var1, 0
	mov var2, 0
L1:
	mov al, BYTE PTR [esi]
	mov BYTE PTR [edi], al
	inc edi
	inc esi
	loop L1
	lea edx, temp
	call WriteString
	call Crlf
	;INVOKE WriteString
	;INVOKE crlf
	ret
CopyString ENDP
main PROC
	;push LENGTHOF msg
	;push OFFSET msg
	;call CopyString
	INVOKE CopyString, ADDR msg, LENGTHOF msg 
	exit
main ENDP
END main
