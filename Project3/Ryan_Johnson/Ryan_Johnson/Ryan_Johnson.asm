;Ryan Johnson
;raj0035
;Ryan_Johnson.asm
;Template file

; This program add and subtracts 32-bit Integers

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD


.data
    shift dword 2
    input byte 1,2,3,4,5,6,7,8
    output byte lengthof input dup(?)	
.code
    main proc

		mov eax, 0
		mov ebx, 0
		mov ecx, shift
				
    l1:	
		NEG	ecx
		mov al, input[lengthof input + ecx]
		mov output[ebx], al
		NEG ecx
		INC ebx

    loop l1
		mov ecx, LENGTHOF input
		sub ecx, shift
		mov edx, 0

    l2:	
		mov al, input[edx]
		mov output[ebx], al
		INC ebx
		INC ebx
	loop l2

INVOKE ExitProcess,0
main ENDP
END main
