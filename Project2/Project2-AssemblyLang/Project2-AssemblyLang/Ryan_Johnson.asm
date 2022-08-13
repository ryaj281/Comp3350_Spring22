.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data
		input byte 1,2,3,4,5,6,7,8
		shift byte 2
.code
		main proc
			; clear up the registers to make sure there is no old values inside them
			mov eax, 0
			mov ebx, 0
			mov ecx, 0
			mov edx, 0

			; setup EAX register with 1st and 2nd values from the input array
			mov ah, [input]
			add ah, shift

			mov al, [input + 1]
			add al, shift
				
			; setup EBX register with 3rd and 4th values from the input array
			mov bh, [input + 2]
			add bh, shift

			mov bl, [input + 3]
			add bl, shift

			; setup ECX register with 5th and 6th values from the input array
			mov ch, [input + 4]
			add ch, shift

			mov cl, [input + 5]
			add cl, shift 
			; setup EDX register with 7th and 8th values from the input array
			mov dh, [input + 6]
			add dh, shift
			
			mov dl, [input + 7]
			add dl, shift


			; exit the program
			invoke ExitProcess, 0
		main endp
end main