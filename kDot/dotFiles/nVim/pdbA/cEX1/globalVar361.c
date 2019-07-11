/*
 * =====================================================================================
 *
 *       Filename:  globalVar361.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 03:15:59
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdio.h>
int count = 0;
// Declare a global variable
// Function prototypes
void test1(void);
void test2(void);

int main(void)
{
        int count = 0;
        // This hides the global count
        for( ; count < 5 ; ++count)
        {
                test1();
                test2();
        }
        return 0;
}

// Function test1 using the global variable
void test1(void)
{
        printf("test1 count = %d\n", ++count);
}


void test2(void)
{
        printf("II-test2 count = %d\n", ++count);
}
