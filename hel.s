.globl _start
_start:
li a0,1
la a1,hell
li a2,5
li a7,64
ecall
li a0,0
li a7,93
ecall
.data
hell: .ascii "hell\n"
