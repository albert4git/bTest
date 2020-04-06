import sympy
from sympy import *
a, b, c, x = sympy.symbols(('a', 'b', 'c', 'x'))
z = Symbol('z')
quadratic_equation = sympy.Eq(a * x**2 + b * x + c, 0)
sympy.pprint(quadratic_equation)



print '-------------------------------------------------------'
sympy.pprint(sympy.solve(quadratic_equation))
print '-------------------------------------------------------'
sympy.pprint(sympy.solve(quadratic_equation, x))
print '-------------------------------------------------------'
roots = sympy.solve(quadratic_equation, x)
xplus, xminus = sympy.symbols(('x_{+}', 'x_{-}'))
xplus = roots[0]
xminus = roots[1]
sympy.pprint(xplus)
sympy.pprint(xminus)
print '-------------------------------------------------------'
xplus_solution = xplus.subs([(a, 1), (b, 2), (c, 3)])
sympy.pprint(xplus_solution)
print '-------------------------------------------------------'
xminus_solution = xminus.subs([(b, a), (c, a + z)])
sympy.pprint(xminus_solution)
print '-------------------------------------------------------'
