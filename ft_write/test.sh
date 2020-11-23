gcc -c test.c
nasm -f macho64 ft_write.s
gcc -o test ft_write.o test.o
./test
rm *.o
rm test