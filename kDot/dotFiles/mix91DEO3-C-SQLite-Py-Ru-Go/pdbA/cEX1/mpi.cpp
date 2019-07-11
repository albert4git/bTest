/*
 * =====================================================================================
 *
 *       Filename:  mpi.cpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 21:40:52
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include <mpi.h>
#include <iostream>
using namespace std;
int main(int argc, char *argv[])
{
        int i, j, sum=0;
        int
                MPI
                MPI
                MPI
                rank, nranks;
        Init(&argc, &argv); // MPI initialization
        Comm rank(MPI COMM WORLD, &rank); // get current process id
        Comm size(MPI COMM WORLD, &nranks); // get number of processes
        cout << "Hello world from process "
                << rank+1 << " of " << nranks << "!" << endl;
        MPI Finalize(); // MPI deinitialization
        return 0;
}
