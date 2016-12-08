; Structs and a rectangle

INCLUDE Irvine32.inc 
.data
COORD STRUCT
	x WORD ?
	y WORD ?
COORD ENDS

RECT STRUCT
	C1 COORD <3,1>
	C2 COORD <6,4>
RECT ENDS

r RECT <>
.code
main proc
	movzx eax, r.C1.x
	call WriteInt
	movzx eax, r.C1.y
	call WriteInt
	call crlf


	invoke ExitProcess,0
main endp
end main