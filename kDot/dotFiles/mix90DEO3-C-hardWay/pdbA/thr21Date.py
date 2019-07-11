#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
# Python multithreading example to print current date.
# 1. Define a subclass using Thread class.
# 2. Instantiate the subclass and trigger the thread.

import threading
import datetime


def print_date(threadName, counter):
    datefields = []
    today = datetime.date.today()
    datefields.append(today)
    print("%s[%d]: %s" % (threadName, counter, datefields[0]))


class myThread(threading.Thread):
    def __init__(self, name, counter):
        threading.Thread.__init__(self)
        self.threadID = counter
        self.name = name
        self.counter = counter

    def run(self):
        print("Starting " + self.name)
        print_date(self.name, self.counter)
        print("Exiting " + self.name)


# Create new threads
thread1 = myThread("Thread", 1)
thread2 = myThread("Thread", 2)

# Start new Threads
thread1.start()
thread2.start()

thread1.join()
thread2.join()
print("Exiting the Program!!!")
