TITLE MASM Project Template
INCLUDE Irvine32.inc

.data

; name of the array -> type of element -> initial value
array DWORD 100h, 200h, 300h, 400h, 500h
arrayofChars BYTE "ABCDE"   ; 41 42, 43, 44, 45 -> 44434241

; #define N 5
; const int N = 5;


.code
main PROC
    mov eax, OFFSET array ; load the address of the array into eax. 
						  ; eax is a 32bit register that acts as a pointer
						  ; OFFSET is a directive that returns the offset of a variable

	mov ebx,[eax]		; dereference the pointer in eax and store the value in eb
	mov ebx,[eax+4]		; dereference the pointer in eax + 4 bytes and store the value in ebx
	mov ebx,[eax+8]		; dereference the pointer in eax + 8 bytes and store the value in ebx
	mov ebx,[eax+12]	; dereference the pointer in eax + 12 bytes and store the value in ebx
	mov ebx,[eax+16]	; dereference the pointer in eax + 16 bytes and store the value in ebx

	mov esi, OFFSET arrayofChars
	
	mov al,[esi]
	mov al,[esi+1]
	mov al,[esi+2]
	mov al,[esi+3]
	mov al,[esi+4]  ;***** OFFSETS in [register + offset] are always measured in BYTE ******
		
	mov eax,[esi]  ; void*  -> int*

	; int a[100]   a[1]  1 refers to the first element
	; mov ebx,[eax+4]    
		



	
exit
main ENDP
END main