#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""

from distutils.core import setup
from Cython.Build import cythonize

setup(ext_modules=cythonize("fib.pyx"), )
