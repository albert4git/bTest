import sympy
from sympy import *
from pylab import *
from numpy import *


x = Symbol('x')
y = Symbol('y')
A = Matrix([[1, x], [y, 1]])
print '-----------------------------------------------'
sympy.pprint(A)
print '-----------------------------------------------'
sympy.pprint(A**2)
print '-----------------------------------------------'
sympy.pprint(A.T)  # Transpose of A.
print '-----------------------------------------------'
sympy.pprint(A * x)  # Matrix multiplication of A and x.
print '-----------------------------------------------'
M = Matrix([[1, 0], [0, 1]])
sympy.pprint(M)
print '-----------------------------------------------'
Z = zeros((4, 4))
sympy.pprint(Z)
