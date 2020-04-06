#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import numpy as np
x = np.linspace(0, 2 * np.pi, 10)
y = np.sin(x)
import subprocess
gnuplot = subprocess.Popen(["/usr/bin/gnuplot"], stdin=subprocess.PIPE)
gnuplot.stdin.write("set term dumb 79 25\n")
gnuplot.stdin.write("plot '-' using 1:2 title 'Line1' with linespoints \n")
for i, j in zip(x, y):
    gnuplot.stdin.write("%f %f\n" % (i, j))
gnuplot.stdin.write("e\n")
gnuplot.stdin.flush()
