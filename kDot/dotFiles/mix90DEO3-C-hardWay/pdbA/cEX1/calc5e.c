/*
 * =====================================================================================
 *
 *       Filename:  calc5e.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 00:07:37
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
        double number1 = 0.0;
        double number2 = 0.0;
        char operation = 0;
        //* First operand value a decimal number *//
        //* Second operand value a decimal number *//
        //* Operation - must be +, -, *, /, or % *//
        printf("\nEnter the calculation\n");
        scanf("%lf %c %lf", &number1, &operation, &number2);
        switch(operation)
        {
                case '+':
                        // No checks necessary for add
                        printf("= %lf\n", number1 + number2);
                        break;
                case '-':
                        // No checks necessary for subtract
                        printf("= %lf\n", number1 - number2);
                        break;
                case '*':
                        // No checks necessary for multiply
                        printf("= %lf\n", number1 * number2);
                        break;
                case '/':
                        if(number2 == 0)
                                // Check second operand for zero
                                printf("\n\n\aDivision by zero error!\n");
                        else
                                printf("= %lf\n", number1 / number2);
                        break;
                case '%':
                        // Check second operand for zero
                        if((long)number2 == 0)
                                printf("\n\n\aDivision by zero error!\n");
                        else
                                printf("= %ld\n", (long)number1 % (long)number2);
                        break;
                default:
                        // Operation is invalid if we get to here
                        printf("\n\n\aIllegal operation!\n");
                        break;
        }
}
