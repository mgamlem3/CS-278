; Description:  In class 10.27.16

INCLUDE Irvine32.inc
.data

.code
main3 proc

	comp ebx, ecx
	JA end
	comp ecx, edx
	JBE end
	mov eax, 5
	mov edx, 6
	end:	


main3 endp
end main3