/*
 * =====================================================================================
 *
 *       Filename:  gradeArr.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 00:29:26
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
        int grades[10];
        unsigned int count = 10;
        long sum = 0L;
        float average = 0.0f;
        printf("\nEnter the 10 grades:\n");
        // Prompt for the input
        // Read the ten numbers to be averaged
        for(unsigned int i = 0 ; i < count ; ++i)
        {
                printf("%2u> ",i + 1);
                scanf("%d", &grades[i]);
                // Read a grade
                sum += grades[i];
                // Add it to sum
        }

        average = (float)sum/count;
        // Calculate the average
        printf("\nAverage of the ten grades entered is: %.2f\n", average);
        return 0;
}
