;Weak encryption example 10.25.16
INCLUDE Irvine32.inc
KEY = 239	; can be any byte value
BUFMAX = 128

.data
buffer  BYTE BUFMAX+1 DUP(0)
bufSize DWORD BUFMAX
byteCount DWORD ? ; holds counter
firstMessage BYTE "Enter the text you wish to encode: ",0
secondMessage BYTE "Encrypted Text: ",0
thirdMessage BYTE "Decrypted Text: ",0

.code
main PROC
    mov ecx,bufSize	; loop counter
    mov esi,0	; index 0 in buffer
    mov edx, OFFSET firstMessage
    call WriteString ; display first message
    mov edx, OFFSET buffer ; point to the buffer for write
    call ReadString ; input the string
    mov byteCount, eax ; number of characters
    mov ecx, eax
L1:
    xor buffer[esi],KEY	; translate a byte
    inc esi	; point to next byte
loop L1

mov edx, OFFSET secondMessage
call WriteString ;display second message
mov edx, OFFSET buffer ; ensure that we are pointing to the correct location for read of string
call WriteString ; display coded string

mov esi, 0 ; reset esi
mov ecx, byteCount
L2:
    xor buffer[esi],KEY ; decrypt string
    inc esi
loop L2

mov edx, OFFSET thirdMessage
call crlf ; write new line
call WriteSTring ;display third message
mov edx, OFFSET buffer ; ensure that we are pointing to the correct location for read of string
call WriteString ; display decoded string

main ENDP
END main