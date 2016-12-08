; Description:    EX05_02
; Exchangeing Array Values
INCLUDE Irvine32.inc    

.data
array BYTE 1,2,3,4,5,6,7,8,9,10 
.code
main proc
    mov  esi,0		            ; index register
    mov ecx, SIZEOF array
    L1:
	    mov bl,array[esi]       ; get first value and store it in al
        mov al, array[esi+1]    ; get second value and store it in bl
        mov array[esi], al      ; move second value to first index
	    mov array[esi+1],bl     ; move first value to second index
	    inc esi                 ; move to next value
        inc esi		  
        dec ecx
	loop L1		                ; repeat for rest of bigEndian
    

    invoke ExitProcess,0
main endp
end main
