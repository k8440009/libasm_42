#include "test.h"

int main()
{
	char *src = "1234";
	char *dest;
	if (!(dest = (char *)malloc(sizeof(char) * strlen(src))))
		return (0);
	ft_strcpy(dest, src);
	printf("%s\n", dest);
	free(dest);

	char *src1 = "";
	char *dest1;
	if (!(dest1 = (char *)malloc(sizeof(char) * strlen(src1))))
		return (0);
	ft_strcpy(dest1, src1);
	printf("%s\n", dest1);
	free(dest1);

	char *src2 = "12345";
	char *dest2;
	if (!(dest2 = (char *)malloc(sizeof(char) * strlen(src2))))
		return (0);
	ft_strcpy(dest2, src2);
	printf("%s\n", dest2);
	free(dest2);
}