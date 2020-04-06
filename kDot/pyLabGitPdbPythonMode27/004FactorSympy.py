import sympy
from sympy import *
x = Symbol('x')
y = Symbol('y')
f = symbols('f', cls=Function)
print solve(x**4 - 1, x)
print solve([x + 5 * y - 2, -3 * x + 6 * y - 15], [x, y])

f = x**4 - 3 * x**2 + 1
print f
print '-------------------------------------------------------'
sympy.pprint(f)
print '-------------------------------------------------------'
print factor(f)
print '-------------------------------------------------------'
sympy.pprint(factor(f))
print '-------------------------------------------------------'
print factor(f, modulus=5)
print '-------------------------------------------------------'
print satisfiable(x & y)
