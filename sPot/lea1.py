#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2020 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""

import math

Z = 111
i = math.floor(Z / 2)

while i > 1:
    if Z % i == 0:
        print i
    i -= 1
