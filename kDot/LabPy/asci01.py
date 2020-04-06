#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
HEIGHT = 10
WIDTH = 40
MARKER = '*'
FILL_CHARACTER = ' '

coords = [(ch[0], ch[3]) for ch in band1.values()]
coords.sort(key=lambda ch: ch[1])

xmin = min(c[0] for c in coords)
xmax = max(c[0] for c in coords)
kx = (WIDTH - 1) / (xmax - xmin)

ymin = min(c[1] for c in coords)
ymax = max(c[1] for c in coords)
ky = (HEIGHT - 1) / (ymax - ymin)

acoords = {}
for c in coords:
    x = round((c[0] - xmin) * kx)
    y = round((c[1] - ymin) * ky)
    if x not in acoords:
        acoords[x] = y
    else:
        acoords[x] = max(acoords[x], y)

for y in range(HEIGHT, -1, -1):
    chars = []
    for x in range(WIDTH):
        if acoords.get(x, 0) >= y:
            chars.append(MARKER)
        else:
            chars.append(FILL_CHARACTER)
    print(''.join(chars))
