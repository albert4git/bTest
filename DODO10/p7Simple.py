import numpy as np
import matplotlib.pyplot as plt
import matplotlib.axes as ax

plt.plot()
plt.scatter(x, y, s, m)
plt.sci(x)
plt.semilogy()
plt.scatter(1, 3, 4)
plt.scatter(1, 2, 3)
plt.plot(1, 2)
plt.scatter(1, 3)
plt.axes(1, 6)
plt.scatter()
plt.scatter(x, y, z)


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
