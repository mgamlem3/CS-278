; Description:    EX06_03 Filling_Array
INCLUDE Irvine32.inc    
.data
array DWORD 10 DUP(?)			;array to hold random numbers
;numberOfNumbers DWORD ?		;number of numbers to create
;j DWORD ?						;lower bound
;k DWORD ?						;upper bound
;pointerToData = array			;pointer to array
;num DWORD ?					;to store random number to add
.code
Rand PROC, min:DWORD, max:DWORD, numberOfNumbers:DWORD, a:DWORD
	push ebp
	mov ebp, esp			
	mov esi, 0
	;mov esi, [ebp+8]			;set loop counter
	mov esi, min
	;mov ecx, [ebp+12]			;run this many times
	mov ecx, numberOfNumbers
	L1:
		;mov eax, [ebp+16]
		mov eax, max
		;sub eax, [ebp+20]
		sub eax, min
		call RandomRange
		;add eax, [ebp+20]
		add eax, min
		;mov array, eax			;get random number and add to array
		
		;add esi, 4
		inc esi
	loop L1

    ;invoke ExitProcess,0
Rand ENDP
END Rand

main PROC
	call Randomize
	push 10		;min
	push 60		;max
	push 10		;number of numbers
	push OFFSET array
	call Rand

	push 0		;min
	push 10		;max
	push 10		;number of numbers
	push OFFSET array
	call Rand
main ENDP
END main