LD=ld -s --stats
ASM=nasm -Ox -Wall -f elf64

all: test

hello: clean
	$(ASM) hello.asm
	$(LD) -o $@ hello.o

test: clean
	$(ASM) test.asm
	$(LD) -o $@ test.o

clean:
	rm -f *.o hello test
