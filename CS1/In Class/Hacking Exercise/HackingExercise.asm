TITLE Demo Bad Code
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
arrayD  DWORD 1,2,3,4
.code
main PROC
	mov eax,[arrayD-00002980] ; ??
	mov eax,[arrayD-4] ; ??
	mov eax,[arrayD-6] ; ??
	invoke ExitProcess,0
main ENDP
END main
