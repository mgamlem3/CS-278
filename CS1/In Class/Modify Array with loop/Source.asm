; Description:    Summing an Integer Array       
INCLUDE Irvine32.inc    
.data
Iarray DWORD 1,2,3,4,5,6,7,8,9,10
.code
main proc
	
    mov esi,0	               ; Setup a pointer to the Iarray
    mov ecx, LENGTHOF Iarray  ; loop counter, ECX=10
    mov eax, 0                 ; SUM = 0
	
    L1: 
	add eax,Iarray[esi*TYPE Iarray] ; SUM = SUM + Iarray[c]
	add esi,1                      ; c = c + 1
    loop L1                            ; repeat till ECX == 0

    invoke ExitProcess,0
main endp
end main
