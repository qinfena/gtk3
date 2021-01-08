PKG = `pkg-config --libs --cflags gtk+-3.0`

image:main.o
	gcc -g -o image main.o ${PKG}
main.o:
	gcc -g -c main.c ${PKG}

.PHONY:clean
clean:
	rm *.o image
