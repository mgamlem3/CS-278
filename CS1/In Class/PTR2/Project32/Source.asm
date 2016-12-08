; Description:    Pointer Example         
INCLUDE Irvine32.inc    
.data
myCount WORD 0  
.code
main proc

     mov esi,OFFSET myCount
	 
	 ADD myCount, 20d
	 call WriteInt

     ; add 20 decimal to myCount and output the new value
     ; you must use the pointer to myCount stored in esi
     ; output the updated value using a pointer to the variable.
     
     invoke ExitProcess,0
main endp
end main
