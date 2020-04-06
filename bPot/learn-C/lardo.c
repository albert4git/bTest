#include <stdio.h>

int main()
{
	char weight[4];
	int w;

	printf("Enter your weight:");
	gets(weight);
	w=atoi(weight);

	printf("Here is what you weight now: %d\n",w);
	w=w+1;
	printf("Your weight after the potatoes: %d\n",w);
	w=w+1;
	printf("Here you are after the mutton: %d\n",w);
	w=w+8;
	printf("And your weight after dessert: %d pounds!\n",w);
	printf("Lardo!\n");
	return(0);
}
