gcc -c test.c
nasm -f macho64 ft_read.s
gcc -o test ft_read.o test.o
./test
rm *.o
rm test