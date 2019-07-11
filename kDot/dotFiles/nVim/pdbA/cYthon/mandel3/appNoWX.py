#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import time
import numpy as np

import mandelcy  # this is the cython module that does the real work.


def make_palette():
    '''sample coloring scheme for the fractal - feel free to experiment

        No need for this to be in Cython
    '''
    colours = []

    for i in range(0, 25):
        colours.append((i * 10, i * 8, 50 + i * 8), )
    for i in range(25, 5, -1):
        colours.append((50 + i * 8, 150 + i * 2, i * 10), )
    for i in range(10, 2, -1):
        colours.append((0, i * 15, 48), )
    return np.array(colours, dtype=np.uint8)


min_x = -1.5
max_x = 0
min_y = -1.5
nb_iterations = 500

bytearray = np.zeros((500, 500, 3), dtype=np.uint8) + 125
colours = make_palette()
start = time.clock()
mandelcy.create_fractal(min_x, max_x, min_y, nb_iterations, colours, bytearray)
print "it took %f seconds to run" % (time.clock() - start)

from scipy.misc import toimage
toimage(bytearray).save("mandelbrot.png")
