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

with open("numbers.csv") as f:
    r = csv.reader(f)
    for row in r:
        print(row)

with open('pets.csv', 'w') as f:
    w = csv.writer(f)
    w.writerow(['Fluffy', 'cat'])
    w.writerow(['Max', 'dog'])

with open("pets.csv") as f:
    r = csv.reader(f)
    for row in r:
        print(row)
