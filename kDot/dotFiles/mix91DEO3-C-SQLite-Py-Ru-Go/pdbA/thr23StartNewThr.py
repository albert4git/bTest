#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import thread
import time


# Define a function for the thread
def print_time(threadName, delay):
    count = 0
    while count < 5:
        time.sleep(delay)
        count += 1
        print("%s: %s" % (threadName, time.ctime(time.time())))


# Create two threads as follows
thread.start_new_thread(print_time, (
    "Thread-1",
    2,
))
thread.start_new_thread(print_time, (
    "Thread-2",
    4,
))

while 1:
    pass
