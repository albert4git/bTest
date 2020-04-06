#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/*
 * RANGE - maximum number of balls
 * BALLS - number of balls drawn
 */

#define RANGE 50
#define BALLS 6

int rnd(int range);
void seedrnd(void);

int main()
{
	int numbers[RANGE];	/* array that holds the balls */
	int i,b;

	printf("L O T T O   P I C K E R\n\n");
	seedrnd();

/* initialize the array */

	for(i=0;i<RANGE;i++)
		numbers[i]=0;

	printf("Press Enter to pick this week's numbers:");
	getchar();

/* draw the numbers */
	
	printf("\nHere they come: ");
	for(i=0;i<BALLS;i++)
	{
		sleep(1);

/* picks a random number and check to
see if it's already been picked */

	        do
		{
			b=rnd(RANGE);	/* draw number */
		} while(numbers[b]);	/* already drawn? */

		numbers[b]=1;		/* mark it as drawn */
		printf("%d ",b+1);	/* add one for zero */
	}
	printf("\n\nGood luck in the drawing!\n");
	return(0);
}

/* Generate a random value */

int rnd(int range)
{
	int r;

	r=rand()%range;
	return(r);
}

/* Seed the randomizer */

void seedrnd(void)
{
	srand((unsigned)time(NULL));
}

