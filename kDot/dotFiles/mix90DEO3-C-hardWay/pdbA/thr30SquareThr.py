#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import threading


def calc_square(number):
    print('Square:', number * number)


def calc_quad(number):
    print('Quad:', number * number * number * number)


if __name__ == "__main__":
    number = 7

thread1 = threading.Thread(target=calc_square, args=(number, ))
thread2 = threading.Thread(target=calc_quad, args=(number, ))

# Will execute both in parallel
thread1.start()
thread2.start()

# Joins threads back to the parent process, which is this
# program
thread1.join()
thread2.join()

# This program reduces the time of execution by running tasks in
# parallel
