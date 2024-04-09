#!/bin/bash
# as -o hello.o hello.s && ld -o hello hello.o
# cc -nostartfiles -nostdlib -c hello.s && ld -o hello hello.o
# cc -static -o c c.s
cc -static -nostdlib -nostartfiles -o c c.s && strip -s c && brandelf -t freebsd c && ./c && echo ok
as -o a.o c.s && ld -o a a.o && strip -s a && brandelf -t freebsd a && ./a && echo ok
as -o hello.o hello.s && ld -o hello hello.o && strip -s hello && ./hello && echo 'ok'
as -o hel.o hel.s && ld -o hel hel.o && strip -s hel && ./hel
