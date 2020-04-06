#--readthedocs--XXX2--Solve-----------------------------------
import sympy
from sympy import *
a, b, c, x = sympy.symbols(('a', 'b', 'c', 'x'))
g = symbols('g', cls=Function)
z = Symbol('z')
y = Symbol('y')
n = Symbol('n')
q = Symbol('q')

eq1 = Symbol('eq1')
eq2 = Symbol('eq2')

print '-------------------------------------------------------'
eq1 = sympy.Eq(x + 2 * y, 0)
sympy.pprint(eq1)
sympy.pprint(eq2)
eq2 = sympy.Eq(x * y, z)

q = sympy.solve([eq1, eq2], [x, y])
sympy.pprint(q)
print '-------------------------------------------------------'
