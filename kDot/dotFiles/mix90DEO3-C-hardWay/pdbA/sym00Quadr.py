#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

file:///media/red/A5A1-FBC4/2019PyLink/Pdf-SciPy/py-SUPER-Sympy/Symbolic%20Python%20___%20Maths%20with%20Python%201.0%20documentation.html

"""
import sympy
sympy.init_printing()
print('---------------------------------------------------------STARt---')

y, z0 = sympy.symbols(('y', 'z_0'))

a, b, c, x = sympy.symbols(('a', 'b', 'c', 'x'))

# a = x + y
# b = y * z0
# print("a={}. b={}.".format(a, b))

quadratic_equation = sympy.Eq(a * x**2 + b * x + c, 0)
sympy.pprint(sympy.solve(quadratic_equation))

sympy.pprint(sympy.solve(quadratic_equation, x))
roots = sympy.solve(quadratic_equation, x)
xplus, xminus = sympy.symbols(('x_{+}', 'x_{-}'))
xplus = roots[0]
xminus = roots[1]
print('---------------------------------------------------------ROOTs---')
sympy.pprint(xplus)
sympy.pprint(xminus)

xplus_solution = xplus.subs([(a, 1), (b, 2), (c, 3)])
sympy.pprint(xplus_solution)
sympy.pprint(xplus_solution.simplify())

# xminus_solution = xminus.subs([(b, a), (c, a + z0)])
# sympy.pprint(xminus_solution.simplify())
xminus_solution = xminus.subs([(a, 1), (b, 2), (c, 3)])
sympy.pprint(xminus_solution)

# sympy.pprint()
# sympy.pprint(sympy.dsolve(ode, y(t)))
print('---------------------------------------------------------INTEGRATe---')

integrand = sympy.log(x)**2

sympy.pprint(sympy.integrate(integrand, x))
print('---------------------------------------------------------INT1---')
sympy.pprint(sympy.integrate(integrand, (x, 1, 10)))
print('---------------------------------------------------------INT2---')
sympy.pprint(sympy.integrate(sympy.exp(-x), (x, 0, sympy.oo)))
print('---------------------------------------------------------INT3---')
sympy.pprint(
    sympy.integrate(sympy.exp(-(x + y)) * sympy.cos(x) * sympy.sin(y), x, y))
print('---------------------------------------------------------INT4---')

sympy.pprint(
    sympy.integrate(
        sympy.exp(-(x + y)) * sympy.cos(x) * sympy.sin(y), (x, 0, sympy.pi),
        (y, 0, sympy.pi)))

print('---------------------------------------------------------INT5---')
sympy.pprint(sympy.Integral(integrand, x))
print('---------------------------------------------------------INT6---')
sympy.pprint(sympy.Integral(integrand, (x, 1, 10)))
print('---------------------------------------------------------INT7---')
y = sympy.Function('y')
t = sympy.Symbol('t')
ode = sympy.Eq(y(t).diff(t), sympy.exp(-t) - y(t))
# sympy.pprint()
# sympy.pprint()
sympy.pprint(ode)
sympy.pprint(sympy.dsolve(ode, y(t)))
print('---------------------------------------------------------INT8---')

general_solution = sympy.dsolve(ode, y(t))
sympy.pprint(general_solution)
print('---------------------------------------------------------INT9---')
value = general_solution.subs([(t, 0), (y(0), 1)])
sympy.pprint(value)
print('---------------------------------------------------------INT10--')
# sympy.pprint()
ode_solution = general_solution.subs([(value.rhs, value.lhs)])
sympy.pprint(ode_solution)
print('---------------------------------------------------------INT11--')
print('---------------------------------------------------------INT11--')
