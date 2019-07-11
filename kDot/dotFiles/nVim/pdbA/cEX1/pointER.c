/*
 * =====================================================================================
 *
 *       Filename:  pointER.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 01:13:03
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
        int number = 0;
        int *pnumber = NULL;
        // A variable of type int initialized to 0
        // A pointer that can point to type int
        number = 10;
        printf("number's address: %p\n", &number);
        printf("number's value: %d\n\n", number);
        pnumber = &number;
        // Output the address
        // Output the value
        // Store the address of number in pnumber
        printf("pnumber's address: %p\n", (void*)&pnumber);
        printf("pnumber's size: %zd bytes\n", sizeof(pnumber));
        printf("pnumber's value: %p\n", pnumber);
        printf("value pointed to: %d\n", *pnumber);
        return 0;
}
