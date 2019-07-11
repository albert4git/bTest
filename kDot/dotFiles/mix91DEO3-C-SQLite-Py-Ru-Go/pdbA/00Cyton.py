#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""

import sympy
import numpy
sympy.init_printing()
print('---------------------------------------------------------STARt---')


def python_sum_symbolic(n):
    return (float(sum(sqrt(1 - (k / n) ^ 2) for k in xrange(1, n + 1))) / n)


# sympy.pprint()
sympy.pprint(4 * python_sum_symbolic(1000))
timeit('python_sum_symbolic(1000)')
