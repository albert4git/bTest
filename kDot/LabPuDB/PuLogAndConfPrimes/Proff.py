#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
#from simul import benchmark
import cProfile
from primes import print_next_prime

pr = cProfile.Profile()
pr.enable()
print_next_prime(20)
pr.disable()
pr.print_stats()
