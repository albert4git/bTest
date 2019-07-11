/*
 * =====================================================================================
 *
 *       Filename:  pointFunc.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 02:59:37
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
// Program 9.1 Pointing to functions
#include <stdio.h>

// Function prototypes
int sum(int, int);
int product(int, int);
int difference(int, int);

int main(void)
{
        int a = 10;
        int b = 5;
        int result = 0;
        int (*pfun)(int, int);
        pfun = sum;
        result = pfun(a, b);
        printf("pfun = sum result = %2d\n", result);


        pfun = product;
        result = pfun(a, b);


        printf("pfun = product result = %2d\n", result);
                        

        pfun = difference;
        result = pfun(a, b);

        printf("pfun = difference result = %2d\n", result);
        return 0;
}
