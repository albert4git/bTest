#! /bin/sh
#
# bashDODO.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#


sqlite3 test.db  "create table n (id INTEGER PRIMARY KEY,f TEXT,l TEXT);"
sqlite3 test.db  "insert into n (f,l) values ('john','smith');"
sqlite3 test.db  "select * from n";


sqlite3 dodo10.db  "select * from Cars";
sqlite3 dodo10.db  "select * from people";

