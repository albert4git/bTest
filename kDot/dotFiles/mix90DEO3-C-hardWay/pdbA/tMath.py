#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import math
from math import sin, pi

ll = [[1, 2], [3, 4], [5, 6]]
print(ll)

l1 = [0, 9]
l1 += [2, 3, 4, 3, 4]
print(l1)
l1.sort()
print(l1)
l1.reverse()
l1.sort()
print(l1[3:5])

x = math.sin(3 / 20 * math.pi)
y = math.sqrt(7)
z = 3
print(x, y)

if x > 3 and 2 < z < 5:
    y = -1
elif x < 10:
    y = x + 2
    z = 5
else:
    y = 25
    z = 3
print(x, y, z)

while x > 0:
    y = x / 3
    x = x / 2 - y

print(x, y)

eps = 1
while 1 + eps != 1:
    eps = eps / 2

print(eps)

for i in ["Vater", "Mutter", "Tochter"]:
    print(i)

for i in range(4):
    print(i**2)


def sum1(L):
    s = 0
    for i in range(len(L)):
        s += L[i]
        return s


def sum2(L):
    s = 0
    for x in L:
        s += x
        return s


def Riemann_integrate(f, a, b, NInter=1000):
    delta = (b - a) / NInter
    s = 0
    for i in range(NInter):
        s += delta * f(a + delta / 2 + i * delta)
        return s


Riemann_integrate(sin, 0, pi)

my_pi = 3.14


def improve_my_pi():
    global my_pi
    my_pi = 3.14159


print(my_pi)
improve_my_pi()
print(my_pi)

x = 33
y = 44.3
print(" x= {} y= {}".format(x, y))
