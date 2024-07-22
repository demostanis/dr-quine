section .text

default rel
extern fflush
extern fopen
extern asprintf
extern fprintf
extern system

global _start

_start:
	%ifdef z
	dec byte [i]
	cmp byte [i], -1
	je _ret
	%endif

	mov rdi, a
	mov rsi, f
	mov rdx, [i]
	call asprintf

	mov rdi, [a]
	mov rsi, m
	call fopen

	mov rdi, rax
	mov rsi, v
	mov rdx, v
	mov rcx, 10
	mov r8d, 34
	mov r9d, [i]
	call fprintf

	xor rdi, rdi
	call fflush

	mov rdi, b
	mov rsi, c
	mov rdx, [a]
	call asprintf

	mov rdi, [b]
	call system

_ret:
	mov rax, 60
	mov rdi, 0
	syscall

section .data
i: dd 5
f: db "Sully_%d.s", 0
c: db "k=%s;nasm -Dz=1 -felf64 -o ${k%%%%.s}.o $k&&ld -lc -dynamic-linker /lib/ld-linux-x86-64.so.2 ./${k%%%%.s}.o -o ./${k%%%%.s}&&./${k%%%%.s}", 0
m: db "w", 0
v: db "section .text%2$c%2$cdefault rel%2$cextern fflush%2$cextern fopen%2$cextern asprintf%2$cextern fprintf%2$cextern system%2$c%2$cglobal _start%2$c%2$c_start:%2$c	%%ifdef z%2$c	dec byte [i]%2$c	cmp byte [i], -1%2$c	je _ret%2$c	%%endif%2$c%2$c	mov rdi, a%2$c	mov rsi, f%2$c	mov rdx, [i]%2$c	call asprintf%2$c%2$c	mov rdi, [a]%2$c	mov rsi, m%2$c	call fopen%2$c%2$c	mov rdi, rax%2$c	mov rsi, v%2$c	mov rdx, v%2$c	mov rcx, 10%2$c	mov r8d, 34%2$c	mov r9d, [i]%2$c	call fprintf%2$c%2$c	xor rdi, rdi%2$c	call fflush%2$c%2$c	mov rdi, b%2$c	mov rsi, c%2$c	mov rdx, [a]%2$c	call asprintf%2$c%2$c	mov rdi, [b]%2$c	call system%2$c%2$c_ret:%2$c	mov rax, 60%2$c	mov rdi, 0%2$c	syscall%2$c%2$csection .data%2$ci: dd %4$d%2$cf: db %3$cSully_%%d.s%3$c, 0%2$cc: db %3$ck=%%s;nasm -Dz=1 -felf64 -o ${k%%%%%%%%.s}.o $k&&ld -lc -dynamic-linker /lib/ld-linux-x86-64.so.2 ./${k%%%%%%%%.s}.o -o ./${k%%%%%%%%.s}&&./${k%%%%%%%%.s}%3$c, 0%2$cm: db %3$cw%3$c, 0%2$cv: db %3$c%1$s%3$c,0%2$c%2$csection .bss%2$ca: resq 1%2$cb: resq 1%2$c",0

section .bss
a: resq 1
b: resq 1
