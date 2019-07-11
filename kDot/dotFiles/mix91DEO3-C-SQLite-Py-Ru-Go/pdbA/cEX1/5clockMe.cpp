/*
 * =====================================================================================
 *
 *       Filename:  5clockMe.cpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 20:31:08
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include <stdlib.h>
#include <time.h>
#include <stdio.h>

int main()
{
        int i;
        clock_t start, end;
        double cpu_time_used;
        start = clock();
        for(i = 0; i < 100; i++) {}
        end = clock();
        printf("start time: %ld \n",start);
        printf("end time: %ld \n",end);
        printf("CLOCKS_PER_SEC %ld \n",CLOCKS_PER_SEC);
        return 0;
}
