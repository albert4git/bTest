#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2020 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.

"""

"""
import sqlite3

def create_connection(db_file):
    try:
        conn = sqlite3.connect(db_file)
        cur.execute("SELECT * ")
        rows = cur.fetchall()
        for row in rows:
            print(row)



def main():
    database = '/home/red/git/bTest/DODO10/dodo10.db'
    conn = create_connection(database)
    with conn:
        print("2. Query all tasks")
        select_all_tasks(conn)

if __name__ == '__main__':
    main()
