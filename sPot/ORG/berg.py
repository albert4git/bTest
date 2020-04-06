#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2020 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.

"""

"""

##
import numpy as np
print 'Hello'                  # (1)
np.zeros(3)
##
if True:
print 'Yay !'                # (2)
print 'Foo'                  # (3)
##

import random

random.seed(1)

print("Hello World! Here's a random number: %f" % random.random())
print("Hello World! Here's a SLIME ")
##


# "------------------------------------------------------------"
# mysql -uroot -pmypass

# show databases;
# use adb;
# show tables;
# select * from atest;
# "------------------------------------------------------------"


##
import sympy
from sympy import *
x = Symbol('x')
y = Symbol('y')
print('-----------------------------------------------1--')
print('--------------------------------------------------')
sympy.pprint(simplify((x + x * y) / x))
expr = x**3 + 4
print('-----------------------------------------------2--')
sympy.pprint(expr)
tex = latex(expr)
print('-----------------------------------------------3--')
sympy.pprint(tex)
d = Derivative(expr, x)
print('-----------------------------------------------4--')
sympy.pprint(d)
print('-----------------------------------------------5--')
##

##
import sympy
from sympy import *
x = Symbol('x')
y = Symbol('y')
sympy.pprint(simplify((x + x * y) / x))

print('-1---------------------------------------------------')

expr = x**3 + 4

sympy.pprint(expr)

print('-2---------------------------------------------------')

tex = latex(expr)

sympy.pprint(tex)
print('-3---------------------------------------------------')
d = Derivative(expr, x)
sympy.pprint(d)
##
