/* Unfinished */

#error Unfinished source code! Fix this, Dan!

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define COUNT 100

int rnd(int range);
void seedrnd(void);
int roll_dice(void);

int main()
{
	int roll,YouWannaPlay,pot,bet,point;
	char c;

/* Setup */
	seedrnd();		//randomizer
	printf("Generating %d rolls of the dice.\n\n",COUNT);

	for
	YouWannaPlay=TRUE;
	pot=100;		//start with $100

/* Play the game main loop*/
	while(YouWannaPlay)
	{
/* First get their bet in a do-while loop. The bet must be
greater than $2 and can't be greater than their pot (total).
If the bet is less than 2, the if statement displays a rude
message. */
		do
		{
			printf("You have $%d in your pot.\n",pot);
			printf("Enter your bet: $");
			scanf("%d",&bet);
			if(bet<2)
				printf("Hey! You wanna do that low-ball stuff, go downtown!\n");
		}
		while(bet<2 || bet>pot);

		roll=roll_dice();
		printf("\tThe roll was %d.\n",roll);

/* The switch-case loop thing handles all rolls of
the dice: 7 and 11 to win and double your bet, 2, 3 or
12 to lose and lose your bet. */

		switch(roll)
		{
			case 7:
			case 11:
				printf("\tYou win!\n");
				pot+=bet;
				break;
			case 2:
			case 3:
			case 12:
				printf("\tCraps! You lose!\n");
				pot-=bet;
				break;
			default:		//everything else
				point=roll;	//set point
				printf("\tYour point is now %d.\n",point);

/* The while(TRUE) loop loops forever, but breaks within
the loop get you out of it. Basically you're looking for
x=point, rolling the point again, or x=7, which means
you lose. Both conditions are handled by if statements
within the loop, which adjust the pot and break out of
the loop as necessary */
				while(TRUE)
				{
					roll=roll_dice();
					printf("\tYou rolled %d, point is %d.\n",roll,point);
					if(roll==point)
					{
						printf("\tYou win!\n");
						pot+=bet;
						break;
					}
					if(roll==7)
					{
						printf("\tSeven out, you lose!\n");
						pot-=bet;
						break;
					}
				}
		}

/* Game over stuff */
/* At this point you've either won or lost, but you're still
in a while loop. First, tell the user how much is in their
pot. Then, if the pot is empty, you need to end the game.
Otherwise, ask if they want to play again and repeat the
loop. */

		printf("You now have $%d in your pot.\n",pot);
		if(pot==0)	/* outta money */
		{
			printf("You're broke!\n");
			printf("Get outta here!\n");
			break;	//quit the loop and the game
		}

/* Clear standard input here. remember to use fpurge(stdin) if
you're compiling on a Unix-like system */

		fflush(stdin);
		printf("Play again Y/N?");

/* This chunk of code gets Y or N input and quits the loop if
N is pressed. toupper converts the keystroke into upper case.
If they type an N, it's displayed and YouWannaPlay is set to
false, which ends the loop. Otherwise the program assumes you
pressed Y and the loop repeats.*/

		c=getchar();
		if(c=='N' || c=='n')
			YouWannaPlay=FALSE;
	}

/* Exit routines (there aren't any, but here is where they'd go) */

	return(0);
}

/* The roll_dice function rolls the dice and returns the total */

int roll_dice(void)
{
	int dice1,dice2;

/* One is added to the value rnd() returns since it returns
values from 0 to 5. */

	dice1=rnd(6)+1;		//get random number between 1 and 6
	dice2=rnd(6)+1;
	return(dice1+dice2);
}

/* Generate a random value */

int rnd(int range)
{
	int r;

	r=rand()%range;		//spit up random num.
	return(r);
}

/* Seed the randomizer */

void seedrnd(void)
{
	srand((unsigned)time(NULL));
}

