#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""

from numpy import exp
from scipy.integrate import odeint
import numpy


def dydt(y, t):
    """
    Defining the ODE dy/dt = e^{-t} - y.

    Parameters
    ----------

    y : real
        The value of y at time t (the current numerical approximation)
    t : real
        The current time t

    Returns
    -------

    dydt : real
        The RHS function defining the ODE.
    """

    return exp(-t) - y


t_scipy = numpy.linspace(0.0, 1.0)
print('---------------------------------------------------------INT11--')
print(t_scipy)

print('---------------------------------------------------------INT11--')
y0 = [1.0]
print(y0)
print('---------------------------------------------------------INT11--')

y_scipy = odeint(dydt, y0, t_scipy)
print(y_scipy)
