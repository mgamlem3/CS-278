; Description:  In class 10.27.16

INCLUDE Irvine32.inc
.data
;num1 DWORD 5
;num2 DWORD 6

.code
main proc
;mov eax, num1
cmp ebx, ecx

JA L1
	mov eax, 5
	mov edx, 6
L1:

main endp
end main