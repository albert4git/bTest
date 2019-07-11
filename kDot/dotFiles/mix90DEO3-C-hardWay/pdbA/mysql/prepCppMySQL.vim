Linking of MYSQL Database with C++ on Linux Machine

Posted August 7, 2011 by Sandeep Ghai in Uncategorized. 5 Comments

C++ and MySQL both are very powerfull. And there combination makes a killer application.

Check below If you want to Connect your MYSQL Database with C++ programs On a Linux Machine.

If you are a user of Linux and G++ compiler,then to connect MYSQL with C++,You need to install two additional packages i.e. ‘libmysql++’ and ‘libmysql++-dev‘ (without quotes)

To install these packages ,open terminal and type

"sudo apt-get install libmysql++"
"sudo apt-get install libmysql++-dev"

 
remember to write these commands without quotes.

——————————————————————————————————————————————————-after installing your packages,

make a program of C++

here is an example

#include <iostream>

#include <mysql.h>

using namespace std;

MYSQL *connection, mysql;

MYSQL_RES *result;

MYSQL_ROW row;

int query_state;

int main() {

return 0;

}

 Now go on terminal and execute this program,and check if it works.
NOTE:- If you dont know how to compile and execute the programs on G++,then please refer to this link before reading

https://sandeepghai.wordpress.com/2011/06/04/c-in-linux/
————————————————————————————————————————————————–
How to compile the above program:-

 Suppose you save the above program with the name
test.cpp
then type following command on terminal ,after addressing the directory where exactly your file is placed


g++ -o test test.cpp -L/usr/include/mysql 
-lmysqlclient -I/usr/include/mysql

————————————————————————————————————————————————
If this program gets executable well then you can go for another program to check database and tables by C++
I am taking the same Database here in the following program as I have created in the post
https://sandeepghai.wordpress.com/2011/08/07/creating-database-in-mysql-using-console-mode/

So I am taking the same database in this program too and you will be shown the same table while executing this program

#include<iostream>
#include<mysql.h>
#include<stdio.h>
using namespace std;
#define SERVER "HOST"
#define USER "USR"
#define PASSWORD "PSWD"
#define DATABASE "example"
int main()
{
MYSQL *connect;
connect=mysql_init(NULL);
if (!connect)
{
cout<<"MySQL Initialization failed";
return 1;
}
connect=mysql_real_connect(connect, "HOST", "USERNAME", "PASSWORD" , 
"example" ,0,NULL,0);
if (connect)
{
cout<<"connection Succeeded\n";
}
else
{
cout<<"connection failed\n";
}
MYSQL_RES *res_set;
MYSQL_ROW row;
mysql_query (connect,"select * from example;");
unsigned int i =0;
res_set = mysql_store_result(connect);
unsigned int numrows = mysql_num_rows(res_set);
while (((row= mysql_fetch_row(res_set)) !=NULL ))
{ //cout<<" %s\n",row[i] !=NULL?row[i] : "NULL";

 cout <<"\t | \t" << row[i] << "\t | \t";
 cout <<  row[i+1] <<  "\t |"<< endl;
}
mysql_close (connect);
return 0;
}

Note:- Remember,you have to mention your own server,username and password there.

and while mentioning your details in the body of program, mention them using double quotes.

————————————————————————————————————————————————-


How to compile:-

I saved the above program as main.cpp

. so to execute and compiling it,you need to mention the following commands in terminal

g++ -o main main.cpp -L/usr/include/mysql
 -lmysqlclient -I/usr/include/mysql
