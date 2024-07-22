CC = ld
AS = nasm
ASFLAGS = -felf64
LDFLAGS = -lc -dynamic-linker /lib/ld-linux-x86-64.so.2

all: Colleen Grace Sully

Colleen: Colleen.o
Grace: Grace.o
Sully: Sully.o

clean:
	$(RM) Colleen.o Colleen
	$(RM) Grace.o Grace
	$(RM) Sully.o Sully

re: clean all

-include tests.mk

.PHONY: all clean re
