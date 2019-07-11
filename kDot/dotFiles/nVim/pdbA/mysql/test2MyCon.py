#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
#! /usr/bin/python
# connect.py - connect to the MySQL server
import sys
import MySQLdb
# import pymysql
import numpy
import time

try:
    conn = MySQLdb.connect(
        db="adb", host="localhost", user="root", passwd="mypass")
    print("Connected")
except:
    print("Cannot connect to server")
    sys.exit(1)
    conn.close()
    print("Disconnected")
    sys.exit(0)

t = time.time()
cursor = conn.cursor()
cursor.execute("select id,r1 from atest")
rez = cursor.fetchall()
resarray = numpy.array(map(float, rez))
print("==================================================================1===")
print(rez)
print("==================================================================2===")
print(resarray)
print("==================================================================3===")
print(time.time() - t)
print("==================================================================4===")

# cursor.execute("INSERT INTO atest VALUES (5, 20, 21, 22)")
# seq = cursor.insert_id()

# cursor.execute("""
#                INSERT INTO atest (ID, r1, r2, r3) VALUES ('7', '70', '71', '72')
#                """)

cursor.execute("""
               UPDATE  atest set r1=69 WHERE ID=2
               """)
conn.commit()
print("==================================================================4===")

try:
    cursor = conn.cursor()
    cursor.execute("select id,r1,r2,r3 from atest")
    for row in cursor.fetchall():
        row = list(row)
        # convert non-mutable tuple to mutable list
        for i in range(0, len(row)):
            if row[i] == None:  # is the column value NULL?
                row[i] = "NULL"
        print("id: %s, r1: %s, r2: %s, r3: %s" % (row[0], row[1], row[2],
                                                  row[3]))
except:
    print("Oops, the query failed")
print("==================================================================5===")

# execute SQL query using execute() method.
cursor.execute("SELECT VERSION()")

# Fetch a single row using fetchone() method.
data = cursor.fetchone()
print("Database version : %s " % data)
cursor.close()
conn.close()
print("==================================================================6===")

print(time.time() - t)
