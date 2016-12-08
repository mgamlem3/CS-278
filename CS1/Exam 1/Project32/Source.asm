TITLE MASM Template	(main.asm)
; Description:    Card Value Program 
; Author:         
; Date:           
INCLUDE Irvine32.inc    
; TODO: PLACE SYMBOLIC INTEGER CONSTANTS HERE 
ACE=14
KING=13
QUEEN=12
JACK=11
TEN=10
NINE=9
EIGHT=8
SEVEN=7
SIX=6
FIVE=5
FOUR=4
THREE=3
TWO=2
.data
; TODO: MAKE A LABEL cards THAT LOCATES MEMORY FOR ALL THE DWORD CARDS VALUES
; USE THE INTEGER CONSTANTS SPECIFIED ABOVE TO INITALIZE ALL 13 DWORD VALUES
; PUT THE CARD CONSTANTS IN MEMORY IN DESCENDING ORDER SO THAT THE OUTPUT FROM YOUR
; PROGRAM MATCHES THAT SHOWN BELOW
.code
cards DWORD ACE, KING, QUEEN, JACK, TEN, NINE, EIGHT, SEVEN, SIX, FIVE, FOUR, THREE, TWO

main proc
       ; The code for main has already been written for you...
       ; Setup a loop that will run 13 times and output all the DWORD card values
	mov ecx, 13
	mov esi, 0   
	label1:
	    ; This writes out each DWORD from the array "cards" to the screen 
	    mov eax,cards[esi*TYPE DWORD]
	    call WriteInt
	    ; This increments the array index counter
	    inc esi
	LOOP label1  ; Loop 13 times (based on value in ECX)
	invoke ExitProcess,0
main endp
end main
