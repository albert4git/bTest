#include <omp.h>
#include <iostream>
#include <cmath>
using namespace std;
int main()
{
int i;
double *v=new double[50000000];
#pragma omp parallel for
for(i=0;i<50000000;i++) {
v[i]=cos((double)i);
}
delete [] v;
return 0;
}
$ g++ -fopenmp -o omp1.ex omp1.cpp
$ export OMP NUM THREADS=2
$ time ./omp1.ex


Beispiel 2
TUTORIAL #omp2
#include <omp.h>
#include <iostream>
#include <cmath>
using namespace std;
int main()
{
int i;
double w;
double sum=0.0;
#pragma omp parallel for private(w) reduction(+:sum)
for(i=0;i<50000000;i++) {
w=sqrt((double)i);
sum=sum+cos(w);
}
cout << sum << endl;
return 0;
}
$ g++ -fopenmp -o omp2.ex omp2.cpp
$ export OMP NUM THREADS=2
$ time ./omp2.ex

Beispiel 1
TUTORIAL #mpi1
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
$ mpic++ -o mpi1.ex mpi1.cpp
$ time mpirun -np 2 ./mpi1.ex

#include <mpi.h>
#include <iostream>
#include <iomanip>
#include <cstdlib>
using namespace std;
int main(int argc, char *argv[])
{
int rank, nranks;
MPI Init(&argc, &argv);
MPI Comm rank(MPI COMM WORLD, &rank);
MPI Comm size(MPI COMM WORLD, &nranks);
int N=1000000;
double local pi, global pi=0.0;
srand(rank); // this is essential!!!
local pi=compute pi(N);
MPI Reduce(&local pi, &global pi, 1, MPI DOUBLE, MPI SUM, 0,
MPI COMM WORLD);
if (rank==0) cout << setprecision(10) << fixed << "pi(" << nranks
<< ")=" << global pi/((double)nranks) << endl;
MPI Finalize();
return 0;
}

Erforderliche Pakete
− Installiere die folgenden Packages
$ sudo apt-get install libcr-dev mpich2 mpich2-doc
• Kompilierung
− Beispiele für eine Quellcode-Übersetzung
$ g++ -fopenmp -o test.ex test.cpp
$ mpic++ -o test.ex test.cpp
$ mpic++ -fopenmp -o test.ex test.cpp
− Reiner OpenMP-Aufruf
$ export OMP NUM THREADS=2; ./test.ex
− Reiner MPI-Aufruf
$ mpirun -np 2 ./test.ex



