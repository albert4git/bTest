#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""
file:///home/red/Documents/CYTHON/Fast%20Python%20loops%20with%20Cython%20%E2%80%93%20Neal%20Hughes.html
cython fastloop.pyx -a
"""
import timeit
import numpy as np
from fastloop import rbf_network
D = 5
N = 1000
X = np.array([np.random.rand(N) for d in range(D)]).T
beta = np.random.rand(N)
theta = 10

# timeit rbf_network(X, beta, theta)

rbf_network(X, beta, theta)
