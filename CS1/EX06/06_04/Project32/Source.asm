; Description:    EX06_04 Test_Score      
INCLUDE Irvine32.inc    
.data				
n DWORD ?						;to store random grade
.code
CalcGrade proc		;will determine which grade to display and display letter grade
	push eax					;save eax
	.IF (eax >= 0)&&(eax <= 59)
		mov al, 'F'
		call WriteChar			;display grade
		call crlf				;new line
	.ELSEIF (eax >= 60)&&(eax <= 69)
		mov al, 'D'
		call WriteChar			;display grade
		call crlf				;new line
	.ELSEIF (eax >= 70)&&(eax <= 79)
		mov al, 'C'
		call WriteChar			;display grade
		call crlf				;new line
	.ELSEIF (eax >= 80)&&(eax <= 89)
		mov al, 'B'
		call WriteChar			;display grade
		call crlf				;new line
	.ELSEIF (eax >= 90)&&(eax <= 100)
		mov al, 'A'
		call WriteChar			;display grade
		call crlf				;new line
	.ENDIF
	pop eax
	ret

CalcGrade endp

main PROC
	call Randomize
	mov esi, 0
	mov ecx, 10
	L1:
		mov eax, 51					;get random number from 0-50
		call RandomRange			;get random number
		mov n, eax
		add n, 50					;make random number 50-100
		mov eax, n					;move back to eax

		call CalcGrade
		inc esi
	loop L1
invoke ExitProcess,0

main ENDP
END main
