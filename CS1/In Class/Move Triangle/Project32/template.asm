TITLE AlignEx             (AlignEx.asm)
INCLUDE Irvine32.inc

COORD STRUCT
	x WORD ?
	y WORD ?
COORD ENDS

.data
points COORD[3] DUP(<0,0>) 

.code
main PROC
;beginning triangle coordinates
	mov (COORD PTR points[0]).x, 1	;1
	mov (COORD PTR points[0]).y, 1
	mov (COORD PTR points[4]).x, 2	;2
	mov (COORD PTR points[4]).y, 4
	mov (COORD PTR points[8]).x, 4	;3
	mov (COORD PTR points[8]).y, 1

	mov esi,0						; array index
	mov edi, 3
	mov ecx,3						; loop counter

L1:
	add (COORD PTR points[esi*4]).x ,8
	inc esi
	Loop L1


INVOKE ExitProcess, 0

main ENDP
END main