#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""

f2 = open('tabelle1.txt', 'r')
f2.readline()  # skip first line
f2.readline()  # skip second line

for l in f2:
    Lst = l.split()
    n = int(Lst[0])
    x = float(Lst[1])
    y = float(Lst[2])
    print(n, x, y)

f2.close()
