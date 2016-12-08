; Description:    EX05_03
; find fibonacci numbers 
INCLUDE Irvine32.inc    

.data
array BYTE 1, 1
.code
main proc
    mov esi,0		         ; index register
    mov ecx, 9               ; WE ARE GOING TO FIND NINE NUMBERS !!!!!!!!!
    L1:
        mov al, array[esi]   ; move first index to al
        inc esi
        add al, array[esi]   ; add second value to the first
        mov array[esi+1], al ; move new value (result of previous line) to next index	  
	loop L1		             ; repeat until all numbers found
    

    invoke ExitProcess,0
main endp
end main
