;-----------------------------------
; Description:   Exam 2 kaleidoscope
;
; Source.asm
; Exam 2
;
; Created by Michael Gamlem on 11/14/16. 
; Copyright © 2016 Michael Gamlem III. All rights reserved.
;-----------------------------------
INCLUDE Irvine32.inc    
.data
count DWORD ?
string DWORD " "						;the text that will be output, looks like a square
x BYTE ?								;x coordinate
y BYTE ?								;y coordinate
tempx BYTE ?							;temp for x
tempy BYTE ?							;temp for y
maxSize BYTE 24							;max size of display
.code

myNewColor PROC
;get a random color to use
	mov eax, 16
	call RandomRange					;get random number 0-15
	mov ebx, 16
	imul eax, ebx						;multiply eax times 16 for background ccolor
	call SetTextColor

;get a random x and y to use as coordinates
	movzx eax, maxSize
	call RandomRange
	mov x, al
	mov bl, x							;save x
	movzx eax, maxSize
	call RandomRange
	mov y, al
	mov bh, y							;save y
	
;top left
	mov dh, x							;no subtraction needed in first quadrant			
	mov dl, y							
	call Gotoxy							;set coordinates for output
	mov  edx, OFFSET string 			
	call WriteString					;write the square to the screen

;top right
	mov bl, maxSize						;subtract x from maxSize to get the location for quadrant 2
	sub bl, x
	mov tempx, bl
	mov dh, tempx					
	mov dl, y
	call Gotoxy							;set coordinates for output
	mov edx, OFFSET string
	call WriteString					;write square to screen

;bottom left
	mov bl, maxSize						;subtract y from maxSize to get the location for quadrant 3
	sub bl, y
	mov	tempy, bl
	mov dh, x
	mov dl, tempy
	call Gotoxy							;set coordinate for output
	mov edx, OFFSET string
	call WriteString					;write square to screen

;bottom right
	mov bl, maxSize						;subtract x from 24 and y from 24 to get location for quadrant 4
	sub bl, x
	mov tempx, bl
	mov bl, maxSize
	sub bl, y
	mov tempy, bl
	mov dh, tempx
	mov dl, tempy
	call Gotoxy							;set coordinates for output
	mov edx, OFFSET string
	call WriteString					;write square to screen
ret
myNewColor ENDP

main PROC
	call Randomize
	
	mov esi, 0
	mov ecx, -1							;run basically forever
	L1:
		call myNewColor
	loop L1

	invoke ExitProcess, 0				;if you ever get here...stop
main ENDP
END main