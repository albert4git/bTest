#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""
file:///home/red/Documents/LA-NUMPY/A%20Gentle%20Introduction%20to%20Tensors%20for%20Machine%20Learning%20with%20NumPy.html
"""

from numpy import array
from numpy import tensordot

A = array([
    [[1, 2, 3], [4, 5, 6], [7, 8, 9]],
    [[11, 12, 13], [14, 15, 16], [17, 18, 19]],
    [[21, 22, 23], [24, 25, 26], [27, 28, 29]],
])
B = array([
    [[1, 2, 3], [4, 5, 6], [7, 8, 9]],
    [[11, 12, 13], [14, 15, 16], [17, 18, 19]],
    [[21, 22, 23], [24, 25, 26], [27, 28, 29]],
])
C = A + B
print(C)

C = A - B
print(C)

C = A * B
print(C)

C = A / B
print(C)

A = array([1, 2])
B = array([3, 4])
C = tensordot(A, B, axes=0)
print(C)
