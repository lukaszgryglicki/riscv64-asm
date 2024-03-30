	.globl	main
main:
	la	a1, hello
	addi	a0, x0, 1
	addi	a2, x0, 6
	call	write
	addi	a0, x0, 0
	call	exit
	# not called
	la	a1, hello
	addi	a0, x0, 1
	addi	a2, x0, 6
	call	write
hello:  .ascii "hello\n"
