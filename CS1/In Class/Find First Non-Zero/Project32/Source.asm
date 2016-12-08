;Weak encryption example 10.25.16
INCLUDE Irvine32.inc

.data
array SWORD 50 DUP(?)
sentinel SWORD 0FFFFh
.code
main PROC
    mov esi,OFFSET array
    mov ecx,LENGTHOF array
    L1:	cmp WORD PTR [esi],0	; check for zero


	    ; (fill in your code here)
    loop L1
main ENDP
END main