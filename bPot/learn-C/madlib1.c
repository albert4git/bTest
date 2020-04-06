/*
MADLIB1.C Source Code
Written by Dan Gookin
*/

#include <stdio.h>

int main()
{
	char adjective[20];
	char food[20];
	char chore[20];
	char furniture[20];

/* Get the words to use in the madlib */

	printf("Enter an adjective:");		/* prompt */
	scanf("%s",&adjective);			/* input */
	printf("Enter a food:");
	scanf("%*s",&food);
	printf("Enter a household chore (past tense):");
	scanf("%s",&chore);
	printf("Enter an item of furniture:");
	scanf("%s",&furniture);

/* Display the output */
	
	printf("\n\nDon't touch the %s %s\n",adjective,food);
	printf("I just %s the %s!\n",chore,furniture);

	return(0);
}

