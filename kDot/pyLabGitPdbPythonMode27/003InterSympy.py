import sympy
from sympy import *
x = Symbol('x')
y = Symbol('y')
print(sin(2 * x))
pprint(sin(2 * x))

print diff(sin(2 * x), x, 2)
print diff(sin(2 * x), x, 3)
print integrate(6 * x**5, x)
print integrate(sin(x), x)
print integrate(log(x), x)
print integrate(2 * x + sinh(x), x)
print integrate(exp(-x**2) * erf(x), x)

#-------------------------------------------------------------
#It is possible to compute definite integral:
from sympy import *
x = Symbol('x')
y = Symbol('y')
print integrate(x**3, (x, -1, 1))
print integrate(sin(x), (x, 0, pi / 2))
print integrate(cos(x), (x, -pi / 2, pi / 2))

#-------------------------------------------------------------
#Also improper integrals are supported as well:
from sympy import *
x = Symbol('x')
y = Symbol('y')
f = symbols('f', cls=Function)
print integrate(exp(-x), (x, 0, oo))
print integrate(exp(-x**2), (x, -oo, oo))
