; This program will print its own source when run.
section .text
default rel
extern fflush
extern fopen
extern fprintf
global _start
%define rux rax
%define fprintouf fprintf
%macro FT 1
_start:
	mov rdi, f
	mov rsi, m
	call fopen
	mov rdi, rux
	mov rsi, v
	mov rdx, v
	mov rcx, 10
	mov r8d, %1
	call fprintouf
	xor rdi, rdi
	call fflush
	mov rax, 60
	mov rdi, 0
	syscall
%endmacro
FT(34)
section .data
f: db "Grace_kid.s", 0
m: db "w", 0
v: db "; This program will print its own source when run.%2$csection .text%2$cdefault rel%2$cextern fflush%2$cextern fopen%2$cextern fprintf%2$cglobal _start%2$c%%define rux rax%2$c%%define fprintouf fprintf%2$c%%macro FT 1%2$c_start:%2$c	mov rdi, f%2$c	mov rsi, m%2$c	call fopen%2$c	mov rdi, rux%2$c	mov rsi, v%2$c	mov rdx, v%2$c	mov rcx, 10%2$c	mov r8d, %%1%2$c	call fprintouf%2$c	xor rdi, rdi%2$c	call fflush%2$c	mov rax, 60%2$c	mov rdi, 0%2$c	syscall%2$c%%endmacro%2$cFT(34)%2$csection .data%2$cf: db %3$cGrace_kid.s%3$c, 0%2$cm: db %3$cw%3$c, 0%2$cv: db %3$c%1$s%3$c,0%2$c",0
