; first
; Example
; Data Var
; -----------------------
SECTION .data
EXIT_SUCCESS  equ 0
SYS_exit  equ 60

; -----------------------
; 8-bit
; -----------------------
bVar1 db  17
bVar2 db  9
bResult db  0
; -----------------------
SECTION .text
global _start
_start:
  ; add 8-bit store in bResult
  mov al,byte[bVar1]
  add al,byte[bVar2]
  mov byte[bResult],al

last:
  mov rax,SYS_exit
  mov rdi,EXIT_SUCCESS
  syscall
