#include <stdio.h>

int main()
{
	unsigned char a;

	for(a=32;a<128;a=a+1)
		printf("%3i = '%c'\t",a,a);
	return(0);
}
