; This program will print its own source when run.
section .text
default rel
extern printf
extern fflush
global _start
nl:
	; Returns the NEWLINE char
	mov rax,10
	ret
_start:
	call nl
	mov rdx, rax
	mov rsi, v
	mov rdi, v
	mov rdx, rax
	mov rcx, 34
	call printf
	xor rdi, rdi
	call fflush
	mov rax, 60
	mov rdi, 0
	syscall
section .data
v: db "; This program will print its own source when run.%2$csection .text%2$cdefault rel%2$cextern printf%2$cextern fflush%2$cglobal _start%2$cnl:%2$c	; Returns the NEWLINE char%2$c	mov rax,10%2$c	ret%2$c_start:%2$c	call nl%2$c	mov rdx, rax%2$c	mov rsi, v%2$c	mov rdi, v%2$c	mov rdx, rax%2$c	mov rcx, 34%2$c	call printf%2$c	xor rdi, rdi%2$c	call fflush%2$c	mov rax, 60%2$c	mov rdi, 0%2$c	syscall%2$csection .data%2$cv: db %3$c%1$s%3$c,0%2$c",0
