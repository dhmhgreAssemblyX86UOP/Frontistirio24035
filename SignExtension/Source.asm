TITLE Sign/Zero Extension	
INCLUDE Irvine32.inc

.data
color DWORD 00FFA07Fh   ; Red -> 7Fh
						; Green -> A0h
						; Blue -> FFh

; The task to transfer the distinct clor values to registers ebx,ecx,edx
; and to display the values in the console window				



.code
main PROC

 mov eax,color
 call WriteHex  ; prints the value of eax in the console window


 movzx ebx,al ; move the RED value of al to ebx and zero extend it
 xchg eax,edi ; save the value of eax in edi
 mov eax, ebx ; move the value of ebx to eax for printing the to the console window 
 call Crlf	  ; prints a new line in the console window
 call WriteHex  ; prints the value of eax (RED) in the console window
 xchg eax,edi ; restore the value of eax from edi


 movzx ecx,ah
 shr eax,16   ; eax =0000 00FF
 movzx edx,al


 
	
exit
main ENDP
END main

