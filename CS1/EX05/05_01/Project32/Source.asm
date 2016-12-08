; Description:    Convert Big Endian to Little Endian       
INCLUDE Irvine32.inc    

.data
bigEndian BYTE 12h, 24h, 56h, 78h
littleEndian DWORD ?

.code
main proc

    mov  esi,0		                ; index register
    mov  ecx,SIZEOF bigEndian	    ; loop counter
    L1:
	    movzx  eax,bigEndian[ecx-1] ; get first value from source
	    mov  littleEndian[esi],eax  ; store it in the target
	    inc  esi		            ; move to next value
	loop L1		                    ; repeat for rest of bigEndian
    

    invoke ExitProcess,0
main endp
end main
