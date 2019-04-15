#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import doctest


def fib(n):
    """
    Die Fibonacci-Zahl für die n-te
    Generation wird iterativ berechnet

    >>> fib(0)
    0
    >>> fib(1)
    1
    >>> fib(10)
    55
    >>> fib(15)
    610
    >>>

    """

    a, b = 0, 1
    for i in range(n):
        a, b = b, a + b
    return a


if __name__ == "__main__":
    doctest.testmod()

