#include "test.h"

int main()
{
	printf("same : %d\n", ft_strcmp("123", "123"));
	printf("left : %d\n", ft_strcmp("123", "12"));
	printf("right : %d\n", ft_strcmp("12", "123"));

	/*
	printf("same : %d\n", ft_strcmp("", ""));
	printf("left : %d\n", ft_strcmp("1", ""));
	printf("right : %d\n", ft_strcmp("", "1"));

	char *s1, s2;
	printf("null1 : %d\n", ft_strcmp(s1, s2));
	printf("null2 : %d\n", ft_strcmp(s1, "123"));
	printf("null3 : %d\n", ft_strcmp("123", s2));
	*/

}