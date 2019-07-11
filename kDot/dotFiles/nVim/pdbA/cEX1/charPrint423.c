/*
 * =====================================================================================
 *
 *       Filename:  charPrint423.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 03:38:37
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
// Program 10.11 Outputting character data
#define __STDC_WANT_LIB_EXT1__ 1
#include <stdio.h>
#include <limits.h>
#include <ctype.h>
// For isprint()
int main(void)
{
        int count = 0;
        printf("The printable characters are the following:\n");

        // Iterate over all values of type char
        for(int code = 0 ; code <= CHAR_MAX ; ++code)
        {
                char ch = (char)code;
                if(isprint(ch))
                {
                        if(count++ % 32 == 0)
                                printf("\n");
                        printf(" %c", ch);
                }
        }
        printf("\n");
        return 0;
}
