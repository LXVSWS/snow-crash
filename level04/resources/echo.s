.data
	cmd: .string "/bin/getflag"

.text
	.global _start

_start:
	mov $11, %eax # execve syscall
	mov $cmd, %ebx
	int $0x80

	mov $1, %eax # exit syscall
	xor %ebx, %ebx
	int $0x80
