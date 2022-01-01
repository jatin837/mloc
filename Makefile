CC=gcc
CFLAGS=-pthread

out.exe: main.o mloc.o
	gcc -o out.exe main.o mloc.o


%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm *.o out.exe
