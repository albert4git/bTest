#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import subprocess as sp
st1 = sp.Popen(['cat', 'cities.txt'], stdout=sp.PIPE)
st2 = sp.Popen(['sort'], stdin=st1.stdout, stdout=sp.PIPE)

out, err = st2.communicate()
print(out)
