; Description:    The Call Stack - In class
INCLUDE Irvine32.inc    
.data
myInt DWORD ?
myString DWORD ?
.code
AddTwo PROC, val1:DWORD, val2:DWORD
	
	mov eax,val1			;9-10 do the same thing as 11-12
	add eax,val2
	mov eax, [ebp+8]
	add eax, [ebp+12]
	ret
AddTwo ENDP
main PROC
	push 10h
	push 20h
	call AddTwo
	exit
main ENDP

END main

Difference PROC
	mov eax, 16
	mov eax, 30
	

Difference ENDP
END Difference