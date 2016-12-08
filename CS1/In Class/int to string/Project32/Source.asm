; Description:    Summing an Integer Array       
INCLUDE Irvine32.inc    
.data
myInt DWORD ?
myString DWORD ?
.code
main proc
	
	call ReadInt ;get int from user - stores in eax
	mov myInt, eax ;copy to myInt

	mov esi, 0 ;set loop counter
	L1:
		
	loop L1

	mov edx, OFFSET myString ;write results
	call WriteString


    invoke ExitProcess,0
main endp
end main
