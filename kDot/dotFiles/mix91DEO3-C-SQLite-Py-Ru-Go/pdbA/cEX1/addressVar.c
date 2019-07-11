/*
 * =====================================================================================
 *
 *       Filename:  addressVar.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 00:35:46
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include<stdio.h>
int main(void)
{
        // Define some integer variables
        long a = 1L;
        long b = 2L;
        long c = 3L;
        // Define some floating-point variables
        double d = 4.0;
        double e = 5.0;
        double f = 6.0;
        printf("\nHere are the addresses of some variables of type long:");
        printf("\nThe address of a is: %p The address of b is: %p", &a, &b);
        printf("\nThe address of c is: %p", &c);
        printf("\nHere are the addresses of some variables of type double:");
        printf("\nThe address of d is: %p The address of e is: %p", &d, &e);
        printf("\nThe address of f is: %p\n", &f);
        return 0;
}
