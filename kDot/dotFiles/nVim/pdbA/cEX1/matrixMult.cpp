/*
 * =====================================================================================
 *
 *       Filename:  matrixMult.cpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 20:53:15
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include <iostream>
#include <string>

template<std::size_t N, std::size_t M, std::size_t P>
int mult(int A[N][M], int B[M][P]) {
        static_assert(N > 1, "N must be greater than 1");
        static_assert(M > 1, "M must be greater than 1");
        static_assert(P > 1, "P must be greater than 1");

        int C[N][P];

        for (int n = 0; n < N; n++) {
                for (int p = 0; p < P; p++) {
                        int num = 0;
                        for (int m = 0; m < M; m++) {
                                num += A[n][m] * B[m][p];
                        }
                        C[n][p] = num;
                        std::cout << num << " ";
                }
                std::cout << std::endl;
        }

        return 0;
}

int main() {
        int A[4][3]{
                {1, 2, 3},
                {4, 5, 6},
                {7, 8, 9},
                {1, 1, 1}
        };

        int B[3][2]{
                {1, 2},
                {3, 4},
                {5, 6}
        };

        mult<4, 3, 2>(A, B);
        return 0;
}
