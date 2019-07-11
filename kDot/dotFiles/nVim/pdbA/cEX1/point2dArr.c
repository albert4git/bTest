/*
 * =====================================================================================
 *
 *       Filename:  point2dArr.c
 *
 *    Description:  
 *        Version:  1.0
 *        Created:  17.03.2019 01:26:51
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include <stdlib.h>
#include <stdio.h>
int main(void)
{
        char board[3][3] = {
                {'1','2','3'},
                {'4','5','6'},
                {'7','8','9'}
        };
        // List all elements of the array
        for(int i = 0 ; i < 9 ; ++i)
                printf(" board: %c\n", *(*board + i));
        return 0;
}
