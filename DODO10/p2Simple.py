import numpy as np
import matplotlib.pyplot as plt


plt.plot()
plt.scatter(x, y, s, m)
plt.sci(4)
plt.semilogy()
plt.scatter()
plt.scatter(1, 2, 3)
plt.scatter(3, 3, 3)
plt.axes(1, 3)


class some_class(object):
    """
    This is the docstring of this class containing information
    about its contents : it does nothing !
    """
    def __init__(self):
        pass


def some_function():
    """
    This function does nothing
    """
    pass


print(some_class.__doc__)
print(some_function.__doc__)


def twice(obj):
    def wrapper(x):
        return obj(obj(x))

    return wrapper


@twice
def function(x):
    return x**2


function(4)
