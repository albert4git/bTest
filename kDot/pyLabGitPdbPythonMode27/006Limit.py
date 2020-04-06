import sympy
from sympy import *
x = Symbol('x')
y = Symbol('y')
sympy.pprint(expand((x + y)**3))
print '-------------------------------------------------------'
sympy.pprint(expand(cos(x + y)))
print '-------------------------------------------------------'
sympy.pprint(expand(cos(x + y), trig=True))
print '-------------------------------------------------------'
sympy.pprint(simplify((x + x * y) / x))
print '-------------------------------------------------------'
sympy.pprint(limit(1 / x, x, oo))
print '-------------------------------------------------------'
sympy.pprint(limit(sin(x), x, oo))
print '-------------------------------------------------------'
sympy.pprint(limit(sin(x) / x, x, 0))
print '-------------------------------------------------------'
sympy.pprint(diff(sin(2 * x), x))
print '-------------------------------------------------------'
sympy.pprint(diff(sin(2 * x), x, 3))
