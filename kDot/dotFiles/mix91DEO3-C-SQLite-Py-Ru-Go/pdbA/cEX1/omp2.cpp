/*
 * =====================================================================================
 *
 *       Filename:  omp2.cpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 21:37:33
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include <omp.h>
#include <iostream>
#include <cmath>
using namespace std;
int main()
{
        int i;
        double w;
        double sum=0.0;

        for(i=0;i<50000000;i++) {
                w=sqrt((double)i);
                sum=sum+cos(w);
        }
        cout << sum << endl;
        return 0;
}
