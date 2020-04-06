#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2020 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.

"""

"""

import glob
# Python 3
# found_images = glob.glob('~/Desktop/**/*.png', recursive=True)
found_images = glob.glob('/home/red/Desktop/**/*.png', recursive=True)
print("IMG: ", found_images)
