gcc -c test.c
nasm -f macho64 ft_strcmp.s
gcc -o test ft_strcmp.o test.o
./test
rm *.o
rm test