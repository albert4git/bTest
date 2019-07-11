#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import threading


def worker(num):
    """thread worker function"""
    print('Worker: %s' % num)
    return


threads = []
for i in range(5):
    t = threading.Thread(target=worker, args=(i, ))
    threads.append(t)
    t.start()
