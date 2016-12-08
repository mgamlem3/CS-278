; Description:	EX06_03 Filling_Array
INCLUDE Irvine32.inc
.data
n DWORD  15					;nubmer of numbers
j DWORD  0					;min
k DWORD  10					;max
array DWORD 10 DUP(?)		;array to hold random numbers
.code
rand PROC
	push ecx
	push ebx
	push edx
	push esi
	mov esi, ecx				;set loop counter
	;mov ecx, n					;run this many times
	L1:
		mov eax, edx			;move max to eax
		add eax, 1
		call RandomRange		;get random value in EAX
		add eax, ebx			;add min
		mov array[esi], eax		;move random value to array
		inc esi
	loop L1
	pop ecx
	pop ebx
	pop edx
	pop esi

ret
rand ENDP

main PROC
	call Randomize
	call Random32
;run #1
	mov ecx, 15				;run this many times
	mov ebx, 0				;min
	mov edx, 10				;max
	mov esi, OFFSET array	;store the array here
	call rand
;end run #1
;run #2
	mov ecx, 12				;run this many times
	mov ebx, 1				;min
	mov edx, 12				;max
	mov esi, OFFSET array	;store array here
	call rand
;end run #2
invoke ExitProcess,0

main ENDP
END main