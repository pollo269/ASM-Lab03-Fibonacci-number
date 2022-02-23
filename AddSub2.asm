

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine32.inc

.data

fibnum DWORD 30 DUP(?)

.code
main PROC

	mov esi,offset fibnum  ;f[0]
	mov edi,offset fibnum  ;f[0]
	mov ecx,26
	mov eax,1      ;f[0]

	call WriteInt
	call Crlf  ;next line
	
	mov ebx,1      ;f[1]

	call WriteInt
	call Crlf  ;next line

	add eax,ebx    ;f[0]+f[1]
	
	add esi,8      ;f[2]
	add edi,12     ;f[3]

	mov [esi],eax  ;f[2]
	
	call WriteInt
	call Crlf  ;next line

	add ebx,[esi]  ;f[1]+f[2]

	mov [edi],ebx  ;f[3]
	mov eax,ebx

	call WriteInt
	call Crlf  ;next line

L1:	
	
	mov eax,[esi]  ;f[n]
	mov ebx,[edi]  ;f[n+1]
	add eax,ebx ;f[n]+f[n+1]=f[n+2]
	mov [edi],eax  ;f[n+2]
	mov [esi],ebx  ;f[n+1]
	
	call WriteInt
	call Crlf  ;next line
	loop L1

	exit

main ENDP
END main