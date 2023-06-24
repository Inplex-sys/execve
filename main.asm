section .data
    command db '/bin/sh', 0

section .text
    global _start

_start:
    call exec_command
    jmp exit_program

exec_command:
    mov eax, 59 ; sys_execve system call
    mov rdi, command ; command to execute
    syscall ; invoke the system call

exit_program:
    ; Exit the program
    mov eax, 60 ; sys_exit system call
    xor edi, edi ; exit code 0
    syscall ; invoke the system call