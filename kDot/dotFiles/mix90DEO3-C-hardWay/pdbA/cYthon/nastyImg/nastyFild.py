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
from PIL import Image


def random_spin_field(N, M):
    return np.random.choice([-1, 1], size=(N, M))


random_spin_field(10, 10)


def display_spin_field(field):
    return Image.fromarray(np.uint8((field + 1) * 0.5 * 255))  # 0 ... 255


display_spin_field(random_spin_field(200, 200))
