#include <stdio.h>

#define SPEED 55

int main()
{
	printf("Now, the speed limit here is %d.\n",SPEED);
	printf("But I clocked you doin' %d.\n",SPEED+15);
	printf("Didn't you see that %d MPH sign?\n",SPEED);
	return(0);
}
