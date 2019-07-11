#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
#!/usr/bin/env python
"""
setup.py  to build mandelbot code with cython
"""
from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext
import numpy  # to get includes

setup(
    cmdclass={'build_ext': build_ext},
    ext_modules=[Extension(
        "mandelcy",
        ["mandelcy.pyx"],
    )],
    include_dirs=[
        numpy.get_include(),
    ],
)
