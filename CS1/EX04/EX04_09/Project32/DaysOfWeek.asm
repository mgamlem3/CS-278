;AddTwo.asm
;EX04_09

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
.code
main PROC

	first TEXTEQU <"This is the first textequ">
	second TEXTEQU <"This is the second textequ">
	third TEXTEQU <"This is the third textequ">
	fourth TEXTEQU <"This is the fouth textequ">
	fifth TEXTEQU <"This is the fifth and final textequ">

	prompt1 BYTE first
	prompt2 BYTE second
	prompt3 BYTE third
	prompt4 BYTE fourth
	prompt5 BYTE fifth

	INVOKE ExitProcess,0
main ENDP
END main 