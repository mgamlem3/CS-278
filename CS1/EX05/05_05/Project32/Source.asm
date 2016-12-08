; Description:    EX05_05
; shift elements in array
INCLUDE Irvine32.inc    

.data
array BYTE 1, 2,3,4
.code
main proc
    mov  esi,0		                   ; index register
    mov ecx, SIZEOF array              ; find size of array
    
    mov bl, array[ecx-1]               ; move item one to bl
    L1:
        mov al, array[ecx-2]           ; move to al
        mov array[ecx-1], al           ; move new value to next index	
          
	loop L1		                       ; repeat for rest of array
    mov array[0], bl
    
    invoke ExitProcess,0
main endp
end main
