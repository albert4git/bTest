#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import termplotlib as tpl
import numpy as np

x = np.linspace(0, 2 * np.pi, 100)
y = [np.sin(m) + m for m in x]
fig = tpl.figure()
fig.plot(x, y, width=60, height=20)
fig.show()
