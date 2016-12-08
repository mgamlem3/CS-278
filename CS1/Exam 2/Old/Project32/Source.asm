; Description:   Exam 2
INCLUDE Irvine32.inc    
.data
string BYTE "  "		
.code
myK PROC				;will output Kaleidoscope continuously from a loop (12x12 squares)
		.IF (ebx == 0)						;black
			;white
			mov edx, OFFSET string
			mov eax, black + (black * 16)	;pick color
			call SetTextColor
			call WriteString				;write string
		
		.ELSEIF (ebx == 1)					;blue
			;blue
			mov edx, OFFSET string
			mov eax, blue + (blue * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string
		
		.ELSEIF (ebx == 2)					;green
			;green
			mov edx, OFFSET string
			mov eax, green + (green * 16)	;pick color
			call SetTextColor
			call WriteString				;write string

		.ELSEIF (ebx == 3)					;cyan
			;blue
			mov edx, OFFSET string
			mov eax, cyan + (cyan * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string

		.ELSEIF (ebx == 4)					;red
			;blue
			mov edx, OFFSET string
			mov eax, red + (red * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string

		.ELSEIF (ebx == 5)					;magenta
			;blue
			mov edx, OFFSET string
			mov eax, magenta + (magenta * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string

		.ELSEIF (ebx == 6)					;brown
			;blue
			mov edx, OFFSET string
			mov eax, brown + (brown * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string

		.ELSEIF (ebx == 7)					;lightGray
			;blue
			mov edx, OFFSET string
			mov eax, lightGray + (lightGray * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string

		.ELSEIF (ebx == 8)					;gray
			;blue
			mov edx, OFFSET string
			mov eax, gray + (gray * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string

		.ELSEIF (ebx == 9)					;lightBlue
			;blue
			mov edx, OFFSET string
			mov eax, lightBlue + (lightBlue * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string

		.ELSEIF (ebx == 10)					;lightGreen
			;blue
			mov edx, OFFSET string
			mov eax, lightGreen + (lightGreen * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string

		.ELSEIF (ebx == 11)					;lightCyan
			;blue
			mov edx, OFFSET string
			mov eax, lightCyan + (lightCyan * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string

		.ELSEIF (ebx == 12)					;lightRed
			;blue
			mov edx, OFFSET string
			mov eax, lightRed + (lightRed * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string

		.ELSEIF (ebx == 13)					;lightMagenta
			;blue
			mov edx, OFFSET string
			mov eax, lightMagenta + (lightMagenta * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string

		.ELSEIF (ebx == 14)					;yellow
			;blue
			mov edx, OFFSET string
			mov eax, yellow + (yellow * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string

		.ELSEIF (ebx == 15)					;white
			;blue
			mov edx, OFFSET string
			mov eax, white + (white * 16)	;pick color
			call SetTextColor			
			call WriteString				;write string
		.ENDIF

ret
myK ENDP


main PROC
	call Randomize
	mov esi, 0								;set loop counter
	mov ecx, 12								;run this many times
	L1:
		
		mov eax, 16							;get random number from 0-15
		call RandomRange					;get random number
		mov ebx, eax						;move value to eax from ebx
		call myK
		inc esi
	loop L1

invoke ExitProcess,0
main ENDP
END main