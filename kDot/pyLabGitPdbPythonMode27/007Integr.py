import sympy
from sympy import *
x = Symbol('x')
y = Symbol('y')
f = symbols('f', cls=Function)
print '-------------------------------------------------------'
sympy.pprint(integrate(6 * x**5, x))
print '-------------------------------------------------------'
sympy.pprint(integrate(log(x), x))
print '-------------------------------------------------------'
sympy.pprint(integrate(exp(-x**2) * erf(x), x))
print '-------------------------------------------------------'
sympy.pprint(integrate(sin(x), (x, 0, pi / 2)))
print '-------------------------------------------------------'
sympy.pprint(integrate(exp(-x**2), (x, -oo, oo)))
print '-------------------------------------------------------'
sympy.pprint(solve([x + 5 * y - 2, -3 * x + 6 * y - 15], [x, y]))
