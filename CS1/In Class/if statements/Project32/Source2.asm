; Description:  In class 10.27.16

INCLUDE Irvine32.inc
.data
var1 DWORD 1
var2 DWORD 2
var3 DWORD ?
var4 DWORD ?

.code
main2 proc

	mov eax, var1
	cmp eax, var2

	JLE L1
		mov var3, 6
		mov var4, 7
		JMP L2
	L1:
		mov var3, 10
	L2:

main2 endp
end main2