import sympy
from sympy import *

x = Symbol('x')
y = Symbol('y')
sympy.pprint(simplify((x + x * y) / x))
print('-1---------------------------------------------------')
expr = x**3 + 4
sympy.pprint(expr)
print('-2---------------------------------------------------')
tex = latex(expr)
sympy.pprint(tex)
print('-3---------------------------------------------------')
d = Derivative(expr, x)
sympy.pprint(d)
print('-4---------------------------------------------------')
r = d.doit()  # builds the derivative result (3*x**2)
sympy.pprint(r)
print('-5---------------------------------------------------')
n1 = d.doit_numerically(5)  # 75.0000000000000
sympy.pprint(n1)
print('-6---------------------------------------------------')
n2 = r.subs(x, 5)  # 75
sympy.pprint(n2)

print('-6---------------------------------------------------')

import sympy as sy

h, z, e = sy.S('h z e'.split())

equations = [
    sy.Eq(z + h + e, 18),
    sy.Eq(h - 6, 2 * z),
    sy.Eq(e - 6, 3 * z),
]

print(sy.solve(equations))
