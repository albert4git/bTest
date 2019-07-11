#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
from sys import exit
answer = input('Bitte Zahl eingeben!')

try:
    a = int(answer)
except ValueError:
    print('Das war keine ganze Zahl!')
    exit()
    b = a**3
    print('Die Antwort ist ', b)
