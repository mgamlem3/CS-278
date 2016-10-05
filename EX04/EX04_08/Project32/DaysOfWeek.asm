;AddTwo.asm
;EX04_07

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
.code
main PROC

	M EQU = 1
	T EQU = 2
	W EQU = 3
	TH EQU = 4
	F EQU = 5
	S EQU = 6
	SU EQU = 7

	daysOfWeek WORD M, T, W, TH, F, S, SU
	
	INVOKE ExitProcess,0
main ENDP
END main 