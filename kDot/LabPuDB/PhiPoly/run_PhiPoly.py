#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""

from PhiPoly import *
if __name__ == "__main__":
    mpowupper = 12
    constant_term = 2
    ppoly_pows_list = []
    for m in range(1, mpowupper + 1):
        phipoly_expr = (golden_ratio + constant_term)**m
        phipoly = PhiPoly.fromexpr(phipoly_expr)
        ppoly_pows_list += [(m, phipoly)]
        print "[m = %2d]: (phi + %s) ** %2d == %s" % \
              (m, constant_term, m, phipoly)
    ##

    print ppoly_pows_list
##
