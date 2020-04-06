#include <stdio.h>

int main()
{
	char c;

	printf("Would you like your computer to explode?");
	c=getchar();
	if(c=='Y')
	{
		printf("OK: Configuring computer to explode now.\n");
		printf("Bye!\n");
	}
	else if(c=='y')
	{
		printf("OK: Configuring computer to explode now.\n");
		printf("Bye!\n");
	}
	else
	{
		printf("Okay. Whew!\n");
	}
	return(0);
}
