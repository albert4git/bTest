#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
# import module
import calendar

yy = 2019
mm = 11

# To ask month and year from the user
# yy = int(input("Enter year: "))
# mm = int(input("Enter month: "))

# display the calendar
print(calendar.month(yy, mm))

# import complex math module
import cmath

a = 1
b = 5
c = 6

# To take coefficient input from the users
# a = float(input('Enter a: '))
# b = float(input('Enter b: '))
# c = float(input('Enter c: '))

# calculate the discriminant
d = (b**2) - (4 * a * c)

# find two solutions
sol1 = (-b - cmath.sqrt(d)) / (2 * a)
sol2 = (-b + cmath.sqrt(d)) / (2 * a)

print('The solution are {0} and {1}'.format(sol1, sol2))
# Enter a: 1
# Enter b: 5
# Enter c: 6
# The solutions are (-3+0j) and (-2+0j)

# Python 3
count = 1
# Code block 1
while count < 11:
    print(count)
    count = count + 1
    # Code block 2
    if count == 11:
        print('Counting complete.')


def func1(a):
    if a % 2 == 0:
        return 0
    else:
        return 1


func1(7)
func1(4)

# ========================================================================
import datetime

today = datetime.datetime.today()

for w in range(10):
    day = today + datetime.timedelta(weeks=w)
    print(day.strftime("%Y-%m-%d"))

# ========================================================================

import math


class Sphere:
    def __init__(self, radius):
        self.radius = radius

    def volume(self):
        return (4 / 3) * math.pi * math.pow(self.radius, 3)

    def surface_area(self):
        return 4 * math.pi * self.radius**2


# ========================================================================
import re

WORDS = re.compile('(\S+)(\s+)(\S+)')


def swap_words(s):
    return WORDS.sub(r'\3\2\1', s)


# ========================================================================
# ========================================================================
# ========================================================================
