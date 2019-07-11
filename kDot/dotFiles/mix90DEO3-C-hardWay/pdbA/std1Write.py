#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import sys

z = 12
y = 123
x = 1234
f1 = open('datei.txt', 'a')
f1.write(' x y z\n')
for i in range(100):
    f1.write("{:20.10g} {:20.10g} {:20.10g}\n".format(x[i], y[i], z[i]))
f1.close()
