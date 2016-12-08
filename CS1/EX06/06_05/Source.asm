; Description:    EX06_05 Colors  
INCLUDE Irvine32.inc    
.data
string BYTE "This text is colored randomly"					
.code
myColor PROC				;will output one line of colored text from "string"
		.IF (ebx >= 0)&&(ebx <= 2)			;white if 0 <= n <= 2
			;white
			mov edx, OFFSET string
			mov eax, white + (black * 16)	;pick color
			call SetTextColor
			call WriteString				;write string
			call crlf						;new line
		
		.ELSEIF (ebx == 3)					;blue if n = 3
			;blue
			mov edx, OFFSET string
			mov eax, blue + (black * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string
			call crlf						;new line
		
		.ELSEIF (ebx >= 4)&&(ebx <= 9)			;green if 4 <= n <= 9
			;green
			mov edx, OFFSET string
			mov eax, green + (black * 16)	;pick color
			call SetTextColor
			call WriteString				;write string
			call crlf						;new line
		.ENDIF

ret
myColor ENDP


main PROC
	call Randomize
	mov esi, 0								;set loop counter
	mov ecx, 20								;run this many times
	L1:
		
		mov eax, 10							;get random number from 0-9
		call RandomRange					;get random number
		mov ebx, eax						;move value to eax from ebx
		call myColor
		inc esi
	loop L1

invoke ExitProcess,0
main ENDP
END main