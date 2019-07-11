/*
 * =====================================================================================
 *
 *       Filename:  simple2IO.cpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 21:26:14
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include <cstdlib>
#include <iostream>
#include <fstream> // or use separately <ofstream>, <ifstream>
using namespace std;
int main()
{
        ofstream fout;
        fout.open("output.dat");
        fout << 0.123456789 << " " << "Dies ist ein Text!" << endl;
        fout.close();
        system("cp output.dat input.dat");
        string str1, str2;
        ifstream fin;
        fin.open("input.dat");
        fin >> str1;
        getline(fin,str2);
        fin.close();
        cout << str1 << endl;
        cout << str2 << endl;
        fstream f;
        f.open("ouput.dat",ios::out); f.close();
        f.open("input.dat",ios::in); f.close();
        return 0;
}
