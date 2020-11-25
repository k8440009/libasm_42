gcc -c test.c
nasm -f macho64 ft_strdup.s
gcc -o test ft_strdup.o test.o
./test
rm *.o
rm test