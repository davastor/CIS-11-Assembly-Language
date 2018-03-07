;Reverse string

ExitProcess proto
.data
source BYTE "This is the source string", 0
target BYTE SIZEOF source DUP('#')
.code 
main proc
	mov rax, 0
	mov rcx, SIZEOF source


L1:
	mov dl, source[rax]
	mov rsi, rcx
	dec rsi
	mov target[rsi], dl
	inc rax
	loop L1

;Loop through target to check if reverse string was stored properly
	mov rcx, LENGTHOF target
	mov rax, 0

L2:
	mov dl, target[rax]
	inc rax
	loop L2

	call ExitProcess
main ENDP
end
