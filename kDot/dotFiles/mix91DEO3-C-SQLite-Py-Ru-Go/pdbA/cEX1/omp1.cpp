/*
 * =====================================================================================
 *
 *       Filename:  omp1.cpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 21:33:05
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
        double *v=new double[50000000];

        for(i=0;i<50000000;i++) {
                v[i]=cos((double)i);
        }
        delete [] v;
        return 0;
}
