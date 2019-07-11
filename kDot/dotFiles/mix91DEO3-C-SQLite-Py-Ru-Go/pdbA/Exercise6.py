#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import sys
import argparse
import csv
import re

parser = argparse.ArgumentParser()
parser.add_argument("input", help="the input CSV file")
parser.add_argument(
    "order",
    help="the desired column order; comma-separated; starting from zero")
parser.add_argument("-o", "--output", help="the destination CSV file")

opts = parser.parse_args()

output_file = opts.output
if not output_file:
    output_file = re.sub("\.csv", "_reordered.csv", opts.input, re.IGNORECASE)

try:
    new_row_indices = [int(i) for i in opts.order.split(',')]
except ValueError:
    sys.exit("Unable to parse column list.")

with open(opts.input) as f_in:
    with open(output_file, "w") as f_out:
        r = csv.reader(f_in)
        w = csv.writer(f_out)
        for row in r:
            new_row = []
            for i in new_row_indices:
                try:
                    new_row.append(row[i])
                except IndexError:
                    sys.exit("Invalid column: %d" % i)
            w.writerow(new_row)
