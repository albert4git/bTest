#! /bin/sh
#
# inOutSqlite.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#



#!/bin/sh
echo "What project ?"
read Proj
echo "For when ?"
read Due
echo "What status ?"
read Stat
echo "What to do ?"
read Descr


echo "im gonna run" sqlite3 tasks.db "insert into todo \
     (project,duedate,status,description) \
     values (\"$Proj\",$Due,\"$Stat\",\"$Descr\");"
sqlite3 tasks.db "insert into todo (project,duedate,status,description) \
         values (\"$Proj\",$Due,\"$Stat\",\"$Descr\");"

