; Description:  exchane pairs of aray values
INCLUDE Irvine32.inc    
.data
array  BYTE  1, 2, 3, 4, 5 6, 7, 8, 9, 10
.code
main proc
    mov  esi,0		         ; index register
    mov  ecx,SIZEOF array - 1	 ; loop counter
    L1:
	    mov  bl,array[esi+1] ; store temp
	    mov  array[esi+1],array[esi] ; store it in the target
        mov  array[esi], bl ;move temp to place
	    
        
        inc  esi		  ; move to next two
        inc esi
	loop L1		         ; repeat for entire array

	invoke ExitProcess,0
main endp
end main
