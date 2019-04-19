#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
from sage.all import Integer, golden_ratio, var, fibonacci, binomial, sgn, n


def AssertVType(obj, vtype, excpt=ValueError):
    if not isinstance(obj, vtype):
        raise excpt('Object should be of type ' + vtype)
        return False
    ##

    return True


##


def Assert(cond, excpt, emsg=""):
    if not cond:
        raise excpt(emsg)
        return False
    ##

    return True


##


def IsInteger(iobj):
    return isinstance(iobj, int) or iobj.is_integer()


##


class PhiPoly(object):
    def __init__(self, a=Integer(0), b=Integer(0)):
        self._a = a
        self._b = b

    ##

    @property
    def a(self):
        return self._a

    ##

    @a.setter
    def a(self, a):
        self._a = a

    ##

    @property
    def b(self):
        return self._b

    ##

    @b.setter
    def b(self, b):
        self._b = b

    ##

    def __str__(self):
        str_sign_func = lambda i, pos, neg, zero: \
             pos if sgn(i) == 1 else neg if sgn(i) == -1 else zero
        rstr = "%s * phi %s %s" % (self.a, str_sign_func(self.b, "+", "-", ""), \
                                   str_sign_func(self.b, self.b, abs(self.b), ""))
        return rstr

    ##

    def __float__(self):
        return n(self.a * golden_ratio + self.b)

    def __list__(self):
        return [self.a, self.b]

    ##

    def __tuple__(self):
        return (self.a, self.b)

    ##

    def __repr__(self):
        return str([self.a, self.b])

    ##

    def __radd__(self, rhs):
        return self.__add__(rhs)

    ##

    def __add__(self, rhs):
        rop = PhiPoly(a=self.a, b=self.b)
        if IsInteger(rhs):
            rop.b += rhs
        else:
            rop.a += rhs.a
            rop.b += rhs.b
        return rop

    ##

    def __pow__(self, p):
        Assert(IsInteger(p), ValueError, "Exponent must be an integer")
        coeffs = [ [binomial(p, r) * (self.a ** r) * (self.b ** (p-r)), r] \
                   for r in range(0, p + 1)]
        return PhiPoly.fromcoeffs(coeffs)

    ##

    def __xor__(self, p):
        return self.__pow__(p)

    ##

    def is_integer(self):
        return self.a == 0

    ##

    @classmethod
    def fromexpr(ppcls, expr, phi=golden_ratio):
        x = var('x')
        coeffs = expr.subs(phi == x).coefficients()
        return ppcls.fromcoeffs(coeffs)

    ##

    @classmethod
    def fromcoeffs(ppcls, coeffs):
        from_pow_func = lambda (coeff, pexp): \
             ppcls(a = coeff * fibonacci(pexp), b = coeff * fibonacci(pexp - 1))
        pow2phipolylst = map(from_pow_func, coeffs)
        return sum(pow2phipolylst)

    ##


## PhiPoly
