
➜ curl cheat.sh/mysql/:learn
/*
 * How can I learn MySql version?
 * 
 * If you have the mysql client installed you can use that to connect to
 * your database server and issue the following statement:
 */

SELECT VERSION();

/* For example you could use this: */

echo SELECT VERSION() | mysql -u foo ...other parameters here...

/*
 * The result will look something like this:
 * 
 * <pre>
 * VERSION()
 * 5.1.41-community
 * </pre>
 * 
 * [Mark Byers] [so/q/4414415] [cc by-sa 3.0]
 */

~/git/CHEATSH 
➜ curl cheat.sh/mysql/      
# To connect to a database
mysql -h localhost -u root -p

# To backup all databases
mysqldump --all-databases --all-routines -u root -p > ~/fulldump.sql

# To restore all databases
mysql -u root -p  < ~/fulldump.sql

# To create a database in utf8 charset
CREATE DATABASE owa CHARACTER SET utf8 COLLATE utf8_general_ci;

# To add a user and give rights on the given database
GRANT ALL PRIVILEGES ON database.* TO 'user'@'localhost'IDENTIFIED BY 'password' WITH GRANT OPTION;

# To list the privileges granted to the account that you are using to connect to the server. Any of the 3 statements will work. 
SHOW GRANTS FOR CURRENT_USER();
SHOW GRANTS;
SHOW GRANTS FOR CURRENT_USER;

# Basic SELECT Statement
SELECT * FROM tbl_name;

# Basic INSERT Statement
INSERT INTO tbl_name (col1,col2) VALUES(15,col1*2);

# Basic UPDATE Statement
UPDATE tbl_name SET col1 = "example";

# Basic DELETE Statement
DELETE FROM tbl_name WHERE user = 'jcole';

# To check stored procedure
SHOW PROCEDURE STATUS;

# To check stored function
SHOW FUNCTION STATUS;

