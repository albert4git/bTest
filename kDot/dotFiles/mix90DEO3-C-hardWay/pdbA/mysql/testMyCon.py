#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import pymysql
import numpy


conn2 = MySQLdb.connect(
    db="cookbook",
    host="localhost",
    unix_sock="/var/tmp/mysql.sock",
    user="root",
    passwd="mypass")




conn = pymysql.connect(host='', port=, user='', passwd='', db='')
cursor = conn.cursor()
cursor.execute("select x,y from TABLENAME")
rez = cursor.fetchall()
resarray = numpy.array(map(float,rez))
finalres = resarray.reshape((resarray.size/2,2))


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



try:
    conn = MySQLdb.connect(
        db="adb", host="localhost", user="root", passwd="mypass")
    print("Connected")
except MySQLdb.Error, e:
    print("Cannot connect to server")
    print("Error code:", e.args[0])
    print("Error message:", e.args[1])
    sys.exit(1)



try:
    cursor = conn.cursor ( )
    cursor.execute ("SELECT name, birth, foods FROM profile")
    for row in cursor.fetchall ( ):
        row = list (row)
        # convert non-mutable tuple to mutable list
        for i in range (0, len (row)):
            if row[i] == None: # is the column value NULL?
                row[i] = "NULL"
                print "name: %s, birth: %s, foods: %s" % (row[0], row[1], row[2])
                cursor.close ( )
except:
    print "Oops, the query failed"



            print "id: %s, r1: %s, r2: %s" % (row[0], row[1], row[2])
INSERT INTO `atest` (`ID`, `r1`, `r2`, `r3`) VALUES ('4', '10', '11', '12');
