; Description:	EX06_03 Filling_Array
INCLUDE Irvine32.inc
.data
n DWORD  15					;nubmer of numbers
j DWORD  0					;min
k DWORD  10					;max
array DWORD 10 DUP(?)		;array to hold random numbers
.code
rand PROC
	mov esi, 0					;set loop counter
	mov ecx, n					;run this many times
	L1:
		mov eax, k+1				;move max to eax
		call RandomRange		;get random value in EAX
		mov array[esi], eax			;move random value to array
		inc esi
	loop L1


invoke ExitProcess,0
;ret

rand ENDP
END rand

main PROC
;	push 15
;	push 0
;	push 10
;	push OFFSET array
;	call rand

;invoke ExitProcess,0

;main ENDP
;END main