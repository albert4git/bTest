#include <stdio.h>

int main()
{
	int methus;
	int you;
	char years[8];

	printf("How old are you?");
	gets(years);
	you=atoi(years);

	printf("How old was Methuselah?");
	gets(years);
	methus=atoi(years);

	printf("You are %d years old.\n",you);
	printf("Methuselah was %d years old.\n",methus);
	return(0);
}
