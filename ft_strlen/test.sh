gcc -c test.c
nasm -f macho64 ft_strlen.s
gcc -o test ft_strlen.o test.o
./test
rm *.o
rm test