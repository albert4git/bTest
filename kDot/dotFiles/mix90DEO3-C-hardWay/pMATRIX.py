#==============================================================================
print('------------------------------------0---')
print(4.0 / 2.0)
print(1.0 / 3.1)

print(4 / 2)
print(1 / 3)

print(4 // 2)
print(1 // 3)

print(3.**2)
print(3**2)
print(2**0.5)

#==============================================================================
import numpy as np
print('------------------------------------1---')
print(np.sqrt(2))
print(np.exp(1))
print(np.log(10))
print(np.log10(10))  # base10

#==============================================================================
import numpy as np

print('------------------------------------2---')


def f(x):
    return x**3 - np.log(x)


print(f(3))
print(f(5.1))

#==============================================================================
import numpy as np

print('------------------------------------3---')


def f(x):
    "return the inverse square of x"
    x = np.array(x)
    return 1.0 / x**2


print(f(3))
print(f([3, 2]))

#==============================================================================
import numpy as np

print('------------------------------------4---')


def func(x, y):
    "return product of x and y"
    return x * y


print(func(2, 3))
print(func(np.array([2, 3]), np.array([3, 4])))

#==============================================================================
from scipy.integrate import quad
print(quad(lambda x: x**3, 0, 2))

#==============================================================================


def wrapper(x):
    a = 4

    def func(x, a):
        return a * x

    return func(x, a)


print(wrapper(4))


#==============================================================================
def func(x, a):
    return a * x


def wrapper(x):
    a = 4
    return func(x, a)


print(wrapper(4))


#==============================================================================
def func(a, n=2):
    "compute the nth power of a"
    return a**n


# three different ways to call the function
print(func(2))
print(func(2, 3))
print(func(2, n=4))


#==============================================================================
def func(a=1, n=2):
    "compute the nth power of a"
    return a**n


# three different ways to call the function
print(func())
print(func(2, 4))
print(func(n=4, a=2))


#==============================================================================
def func(*args):
    sum = 0
    for arg in args:
        sum += arg
        print(sum)
    return sum


print(func(1, 2, 3, 4))

#==============================================================================
import functools, operator


def func(*args):
    return functools.reduce(operator.add, args)


print(func(1, 2, 3, 4))

#==============================================================================

#==============================================================================
# It is possible to have arbitrary keyword arguments
# This is a common pattern when you call another function within your function that takes keyword arguments.
# We use **kwargs to indicate that arbitrary keyword arguments can be given to the function. Inside
# the function, kwargs is variable containing a dictionary of the keywords and values passed in.


def func(**kwargs):
    for kw in kwargs:
        print('{0} = {1}'.format(kw, kwargs[kw]))


func(t1=6, color='blue')

#==============================================================================
import matplotlib.pyplot as plt


def myplot(x, y, fname=None, **kwargs):
    "make plot of x,y. save to fname if not None. Provide kwargs to plot."
    plt.plot(x, y, **kwargs)
    plt.xlabel('X')
    plt.ylabel('Y')
    plt.title('My plot')
    if fname:
        plt.savefig(fname)
    else:
        plt.show()


x = [1, 3, 4, 5]
y = [3, 6, 9, 12]

myplot(x, y, 'myfig.png', color='orange', marker='s')

# you can use a dictionary as kwargs
d = {'color': 'magenta', 'marker': 'd'}

myplot(x, y, 'myfig2.png', **d)

#==============================================================================
f = lambda x, y: x + y
print(f(2, 3))

#==============================================================================
from scipy.optimize import fsolve
import numpy as np

sol, = fsolve(lambda x: 2.5 - np.sqrt(x), 8)
print(sol)

#==============================================================================
from scipy.optimize import fsolve
import numpy as np


def func(x, a):
    return a * np.sqrt(x) - 4.0


sol, = fsolve(lambda x: func(x, 3.2), 3)
print(sol)
#==============================================================================
import numpy as np

a = np.array([1, 2, 3])
b = np.array([4, 5, 6])

print(np.column_stack([a, b]))

# this means stack the arrays vertically, e.g. on top of each other
print(np.vstack([a, b]).T)
#==============================================================================
import numpy as np

a = np.array([1, 2, 3])
b = np.array([4, 5, 6])

print(np.row_stack([a, b]))

# this means stack the arrays vertically, e.g. on top of each other
print(np.vstack([a, b]))
#==============================================================================
import numpy as np

A = np.array([[1, 2, 3, 5], [4, 5, 6, 9]])

# split into two parts
p1, p2 = np.vsplit(A, 2)
print(p1)
print(p2)
print(p2.shape)
#==============================================================================
import numpy as np

A = np.array([[1, 2, 3, 5], [4, 5, 6, 9]])

# get row 1
print(A[1])
print(A[1, :])  # row 1, all columns

print(A[:, 2])  # get third column
print(A[:, 2].shape)
#==============================================================================
import numpy as np
print(np.linspace(0, np.pi, 10))
#==============================================================================

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, np.pi, 10)
plt.plot(x, np.cos(x))
plt.xlabel('x')
plt.ylabel('cos(x)')
plt.show()

#======LIST=====================================================================
c = ['benzene', 6.9056, 1211.0, 220.79, [-16, 104]]
print(c[0])
print(c[-1])

a, b = c[0:2]
print(a, b)

name, A, B, C, Trange = c
print(Trange)
#==============================================================================
#Lists are "mutable", which means you can change their values.

a = [3, 4, 5, [7, 8], 'cat']
print(a[0], a[-1])
a[-1] = 'dog'
print(a)

#==============================================================================

#==============================================================================

#==============================================================================
