gcc -c test.c
nasm -f macho64 ft_strcpy.s
gcc -o test ft_strcpy.o test.o
./test
rm *.o
rm test