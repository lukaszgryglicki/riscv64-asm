# FreeBSD RISC-V hello world using kernel syscalls
# syscall numbers in /usr/src/sys/sys/syscall.h
# syscalls examples taken from /usr/src/sys/riscv/riscv/locore.S
.globl	_start
_start:
	la	a1, hello	# load address of "hello\n" string
	addi	a0, x0, 1	# stdout file number 1
	addi	a2, x0, 6	# "hello\n" length 6
	addi	t0, x0, 4	# sys call #4 write
	ecall			# sys call
	addi	a0, x0, 0	# exit code 0
	addi	t0, x0, 1	# sys call #1 exit
	ecall			# syscall
				# everything after this is not called
	la	a1, hello
	addi	a0, x0, 1
	addi	a2, x0, 6
	addi	t0, x0, 4
	ecall
hello:  .ascii "hello\n"
