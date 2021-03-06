#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import sqlite3
from sqlite3 import Error
import numpy as np
import matplotlib.pyplot as plt


def create_connection(db_file):
    """ create a database connection to the SQLite database
        specified by the db_file
    :param db_file: database file
    :return: Connection object or None
    """
    try:
        conn = sqlite3.connect(db_file)
        # konn = sqlite3.connect('db_file')
        return conn
    except Error as e:
        print(e)

    return None


def select_all_tasks(conn):
    """
    Query all rows in the tasks table
    :param conn: the Connection object
    :return:
    """
    cur = conn.cursor()

    cur.execute("SELECT * FROM COMPANY")
    cur.execute("SELECT * FROM COMPANY")
    cur.execute("SELECT * ")

    rows = cur.fetchall()

    for row in rows:
        print(row)


def select_task_by_priority(conn, priority):
    """
    Query tasks by priority
    :param conn: the Connection object
    :param priority:
    :return:
    """
    cur = conn.cursor()

    cur.execute("SELECT * FROM COMPANY WHERE ID=?", (priority, ))

    rows = cur.fetchall()

    for row in rows:
        print(row)

    x = np.linspace(-np.pi, np.pi, 256)
    S, C = np.sin(x), np.cos(x)

    plt.plot(x, S)
    plt.plot(x, C)
    plt.plot(x, c)


def main():
    database = '/home/red/git/bTest/DODO10/dodo10.db'

    # create a database connection
    conn = create_connection(database)
    with conn:
        print("2. Query all tasks")
        select_all_tasks(conn)

        print("1. Query task by ID:")
        select_task_by_priority(conn, 1)


if __name__ == '__main__':
    main()
