/*
 * =====================================================================================
 *
 *       Filename:  ttt.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 00:49:20
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
        int winner = 0;
        int player = 0;
        char board[3][3] = {
                {'1','2','3'},
                {'4','5','6'},
                {'7','8','9'}
        };

        for(unsigned int i = 0; i < 4 && winner == 0; ++i)
        {
                printf("\n");
                printf(" %c | %c | %c\n", board[0][0], board[0][1], board[0][2]);
                printf("---+---+---\n");
                printf(" %c | %c | %c\n", board[1][0], board[1][1], board[1][2]);
                printf("---+---+---\n");
                printf(" %c | %c | %c\n", board[2][0], board[2][1], board[2][2]);
                player = i%2 + 1;
        }
        /* Code to output the result */
        return 0;
}
