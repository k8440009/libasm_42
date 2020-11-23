#include "test.h"

int main()
{
	int fd;
	char buf[1024];
	int size;

	fd = open("test.sh", O_RDONLY);

	if (fd == -1)
		printf("file open error\n");
	size = ft_read(fd, buf, sizeof(buf));
	buf[size] = '\0';
	printf("%s\n", buf);
	close(fd);
}