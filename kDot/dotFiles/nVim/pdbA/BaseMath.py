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
import random

# These are constant attributes, not functions
math.pi
math.e

# round a float up or down
math.ceil(3.3)
math.floor(3.3)

# natural logarithm
math.log(5)
# logarithm with base 10
math.log(5, 10)
# this function is slightly more accurate
pp = math.log10(5)
print(pp)

# square root
math.sqrt(10)

# trigonometric functions
math.sin(math.pi / 2)
math.cos(0)

# convert between radians and degrees
math.degrees(math.pi / 2)
math.radians(90)

# a random float from 0 to 1 (excluding 1)
random.random()

pets = ["cat", "dog", "fish"]
# a random element from a sequence
random.choice(pets)
# shuffle a list (in place)
random.shuffle(pets)

# a random integer from 1 to 10 (inclusive)
pp = random.randint(1, 10)
print(pp)

# set a predictable seed
random.seed(3)
random.random()
random.random()
pp = random.random()
print(pp)
