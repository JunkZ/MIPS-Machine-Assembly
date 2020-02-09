OPT = 0
CFLAGS	= -S -g -ffunction-sections -O$(OPT)

all:
	sde-gcc -march=r3k $(CFLAGS) lab4.c
	sde-as -march=r3k lab4.s -o lab4.o
	sde-ld -T linker_script lab4.o -o a.out
	sde-objdump -h -z -S -d -t -s a.out > mips_program_$(OPT).objdump
	rm -r *.o a.out
	mv lab4.s lab4_$(OPT).s
