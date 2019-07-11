#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""


class Punkt:
    """simple class of points in the cartesian plane"""

    def __init__(self, x, y):
        self.x = x
        self.y = y

    def translate(self, deltax, deltay):
        self.x += deltax
        self.y += deltay

    def __str__(self):
        return ("Punkt bei ({}, {})".format(self.x, self.y))


class Vec(Punkt):
    def __add__(self, other):
        return (Vec(self.x + other.x, self.y + other.y))

    def __str__(self):
        return ("Vektor({}, {})".format(self.x, self.y))


p1 = Punkt(2, 3)
print(p1)
p1.translate(-3, 4.5)
print(p1)

v1 = Vec(7, 8)
v2 = Vec(-11, 2)
v3 = v1 + v2
print(v3)

v1.translate(3, 3)
print(v1)
