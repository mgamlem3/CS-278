;AddTwo.asm
;EX04_07

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
.code
main PROC

	;do some math
	;(A+B)
	ADD eax, ebx
	;(C+D)
	ADD ecx, edx
	;result of (a+b) - (c+d)
	SUB eax, ecx
	
	INVOKE ExitProcess,0
main ENDP
END main 