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
import pythagor


def main():
    start = time.time()
    result = pythagor.count(1000)
    duration = time.time() - start
    print(result, duration)


if __name__ == '__main__':
    main()
