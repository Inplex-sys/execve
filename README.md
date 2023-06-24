# execve
Executing a command with ASM

See [fs/exec.c](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/tree/fs/exec.c)

|  syscall_id: 59    |   execve  | stub_execve |
| :------ | :-------- | :---------- |
| %rdi | %rsi | %rdx |
| const char __user * filename |	const char __user *const __user * argv |	const char __user *const __user * envp |
