#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import csv

with open("numbers.csv") as f_in:
    with open("numbers_new.csv", "w") as f_out:
        r = csv.reader(f_in)
        w = csv.writer(f_out)
        for row in r:
            w.writerow([row[0], row[2], row[1], sum(float(c) for c in row)])
