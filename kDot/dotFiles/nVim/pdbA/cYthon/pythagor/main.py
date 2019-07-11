#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import time
import tri
# import pythagor
import pyximport
import timeit
pyximport.install()


def main():
    start = time.time()
    result = tri.count(1000)
    duration = time.time() - start
    print(result, duration)

    print(timeit.timeit(
        'count(1000)', setup='from tri import count', number=100))

    print(timeit.timeit(
        'count(1000)', setup='from pythagor import count', number=1))


if __name__ == '__main__':
    main()
