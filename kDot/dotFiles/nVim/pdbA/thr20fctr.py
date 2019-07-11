#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
# Python multithreading example.
# 1. Calculate factorial using recursion.
# 2. Call factorial function using thread.

import threading
from thread import start_new_thread

threadId = 1


def factorial(n):
    global threadId
    if n < 1:
        # base case
        print("%s: %d" % ("Thread", threadId))
        threadId += 1
        return 1

    if n > 1:
        # recursive call
        returnNumber = n * factorial(n - 1)
        print(str(n) + '! = ' + str(returnNumber))
        print(returnNumber)
        return returnNumber


print("waiting for the rain: ...")
start_new_thread(factorial, (8, ))
print("waiting for the sun: ...")

# c = raw_input("Waiting for threads to return...\n")
