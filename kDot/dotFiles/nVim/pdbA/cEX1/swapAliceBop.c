/*
 * =====================================================================================
 *
 *       Filename:  swapAliceBop.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 19:38:51
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

static void Swap(int* a, int* b) {
        printf("\n ONE a: %u b: %u", *a, *b);
        int temp;
        temp = *a;
        *a = *b;
        *b = temp;
        printf("\n TWO a: %u b: %u", *a, *b);

}
static void IncrementAndSwap(int* x, int* y) {
        (*x)++;
        (*y)++;
        Swap(x, y);
        // don't need & here since a and b are already
        // int*'s.
}
int main()
{
        int alice = 10;
        int bob = 20;
        Swap(&alice, &bob);
        // at this point alice==20 and bob==10
        IncrementAndSwap(&alice, &bob);
        // at this point alice==11 and bob==21
        return 0;
}
