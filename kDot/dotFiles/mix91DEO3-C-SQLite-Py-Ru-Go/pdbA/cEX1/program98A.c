/*
 * =====================================================================================
 *
 *       Filename:  program98A.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 03:24:22
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdio.h>
int main(int argc, char *argv[])
{
        printf("Program name: %s\n", argv[0]);
        for(int i = 1 ; i<argc ; ++i)
                printf("Argument %d: %s\n", argc, argv[i]);
        return 0;
}
