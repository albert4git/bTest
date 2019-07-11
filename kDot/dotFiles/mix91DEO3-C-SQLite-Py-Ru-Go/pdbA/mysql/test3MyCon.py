#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import MySQLdb
import pandas.io.sql as psql
from MySQLdb.converters import conversions
from MySQLdb.constants import FIELD_TYPE

conversions[FIELD_TYPE.DECIMAL] = float
conversions[FIELD_TYPE.NEWDECIMAL] = float

conn = MySQLdb.connect(
    db="adb", host="localhost", user="root", passwd="mypass")
sql = "select * from atest"
df = psql.read_frame(sql, conn)
print("==================================================================1===")
print(df)
print("==================================================================2===")
