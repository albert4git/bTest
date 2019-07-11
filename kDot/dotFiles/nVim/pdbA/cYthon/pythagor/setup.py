#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""
python setup.py build_ext --inplace
"""
from distutils.core import setup
from Cython.Build import cythonize

setup(ext_modules=cythonize("pythagor.pyx"))
setup(ext_modules=cythonize("tri.pyx"))
