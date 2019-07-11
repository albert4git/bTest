#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""
from intertool import  takewile
"""
import numpy
import math
import scipy

# ========================================================
a_var = 'globUS value'

print(a_var, 'global-val-envelope0')


def outer():
    a_var = 'encloSEd value'
    print(a_var, 'outer-enclosed-val-envelope1')

    def inner():
        a_var = 'locUS value'
        print(a_var, 'lcal-val-envelope2')

    inner()


outer()

print(a_var, 'global-val-envelope0')
'''
output:
local value
'''
# ========================================================
a_var = 'global variable'


def a_func():
    print(a_var, '[ a_var inside a_func() ]')


a_func()
print(a_var, '[ a_var outside a_func() ]')
'''
answer:
global value [ a_var inside a_func() ]
global value [ a_var outside a_func() ]
'''

# ========================================================
# print(globals()) # prints global namespace
# print(locals()) # prints local namespace

glob = 1


def foo():
    loc = 5
    print('loc in foo():', 'loc' in locals())


foo()
print('loc in global:', 'loc' in globals())
print('glob in global:', 'foo' in globals())
'''
loc in foo(): True
loc in global: False
glob in global: True
'''
# ========================================================
i = 1


def foo2():
    i = 5
    print(i, 'in foo()')


print(i, 'global')
foo2()
print(i, 'global')
foo2()

# ========================================================
print(math.pi, 'from the math module')
print(numpy.pi, 'from the numpy package')
print(scipy.pi, 'from the scipy package')

# ========================================================
