/*
 * =====================================================================================
 *
 *       Filename:  demo1.cpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 21:57:14
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

// demo.cpp
// Outputs constructor and destructor calls.
// ---------------------------------------------------
#include <iostream>
#include <string>
using namespace std;
int count = 0;
// Number of objects.
class Demo
{
        private:
                string name;
        public:
                Demo( const string& );
                // Constructor
                ~Demo();
                // Destructor
};


Demo::Demo( const string& str)
{
        ++count;
        name = str;

        // cout << "I am the constructor of "<< name << '\n'
        //         << "This is the " << count << ". object!\n"
}



// Defining the destructor
Demo:: ~Demo()
{
        cout << "I am the destructor of " << name << '\n'
                << "The " << count << ". object "
                << "will be destroyed " << endl;
        --count;
}

// -- To initialize and destroy objects of class Demo --
Demo globalObject("the global object");
int main()
{
        cout << "The first statement in main()." << endl;
        Demo firstLocalObject("the 1. local object");
        {
                Demo secLocalObject("the 2. local object");
                static Demo staticObject("the static object");
                cout << "\nLast statement within the inner block"
                        << endl;
        }
        cout << "Last statement in main()." << endl;
        return 0;
}
