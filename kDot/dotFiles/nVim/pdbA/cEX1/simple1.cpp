/*
 * =====================================================================================
 *
 *       Filename:  simple1.cpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 21:23:22
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>

/* a simple C++-program */
#include <iostream>
#include <iomanip>
using namespace std;
double a=2.718281; // global
int main() {
        bool b=true; // local; not false
        bool B=true; // case-sensitive
        char c='G';
        char str[]="job";
        cout << "Hello world!\n";
        cout << "Hello students!" << endl;
        // cout handles different
        // data types
        cout << "a=" << a << endl;
        cout << b << " " << c << "\n";
        cout << "str=" << str << endl;
        cout << "a=" << setprecision(10) << scientific << a << endl;
        cout << "a=" << setprecision(4) << fixed << a << endl;
        cout << "Insert a double and a string:" << endl;
        cin >> a >> str;
        cout << "a=" << a << ", str=" << str << endl;
        return 0;
}
