#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""
CREATE TABLE `dodoTest` (
`ID`	INTEGER,
`r1`	INTEGER,
`r2`	INTEGER
);

INSERT into dodoTest VALUES ('2', '8', '81')
"""

import sqlite3
sqlite_file = '/home/red/git/aTest/dotFiles/sq1light/dododb.db'
conn = sqlite3.connect(sqlite_file)

conn = sqlite3.connect(sqlite_file)
c = conn.cursor()
# print("Opened database successfully")

c.execute('SELECT * FROM dodoTest')
all_rows = c.fetchall()
print('1):', all_rows)

cursor = conn.execute("select * from dodoTest")
for row in cursor:
    print("ID = ", row[0])
    print("r1 = ", row[1])
    print("r2 = ", row[2], "\n")

conn.close()
