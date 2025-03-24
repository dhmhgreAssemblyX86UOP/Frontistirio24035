TITLE MASM Project Template
INCLUDE Irvine32.inc

.data

; name of the array -> type of element -> initial value
array DWORD 100h, 200h, 300h, 400h, 500h

; #define N 5
; const int N = 5;

.code
main PROC
    mov eax, OFFSET array ; load the address of the array into eax. 
						  ; eax is a 32bit register that acts as a pointer
						  ; OFFSET is a directive that returns the offset of a variable


	
exit
main ENDP
END main

