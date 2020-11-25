#include "test.h"

int main()
{
	char *ptr;
	ptr = ft_strdup("12345");
	printf("%s\n", ptr);
	free(ptr);

	ptr = ft_strdup("");
	printf("%s\n", ptr);
	free(ptr);

	char *ptr2;
	ptr = ft_strdup(ptr2);
	printf("%s\n", ptr);
	free(ptr);
}