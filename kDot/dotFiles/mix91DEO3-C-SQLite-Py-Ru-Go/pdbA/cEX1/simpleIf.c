/*
 * =====================================================================================
 *
 *       Filename:  simpleIf.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  16.03.2019 23:27:43
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include <stdio.h>
int main(void)
{
        int number = 0;
        printf("\n YYY Enter an integer between 1 and 10: ");
        scanf("%d",&number);
        if(number > 5)
                printf("XXX You entered %d which is greater than 5\n", number);
        if(number < 6)
                printf("ZZZ You entered %d which is less than 6\n", number);
        return 0;
}
