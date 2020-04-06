
➜ curl cheat.sh/sqlite/
Unknown topic.
Do you mean one of these topics maybe?

    * sqlite3 92
    * split 73
    * csplit 67
    

~/git/CHEATSH 
➜ curl cheat.sh/sqlite3/
# create database and launch interactive shell
sqlite3 example.db

# create table
sqlite3 example.db "CREATE TABLE Os(ID INTEGER PRIMARY KEY, Name TEXT, Year INTEGER);"

# insert data
sqlite3 example.db "INSERT INTO 'Os' VALUES(1,'Linux',1991);"

# list tables
sqlite3 example.db ".tables"

# view records in table
sqlite3 example.db "SELECT * FROM 'Os';"

# view records in table conditionally
sqlite example.db "SELECT * FROM 'Os' WHERE Year='1991';"

# view records with fuzzy matching
sqlite3 ~/example.db "SELECT * FROM 'Os' WHERE Year like '19%';"
