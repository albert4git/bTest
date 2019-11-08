import numpy as np
import matplotlib.pyplot as plt
import matplotlib.path as pth

x = np.linspace(-np.pi, np.pi, 256)
S, C = np.sin(x), np.cos(x)

plt.plot(x, S)
plt.show()
plt.six()
plt.suptitle(t, k)
plt.switch_backend()
plt.scatter(1, 2)
plt.plot(x, y)
plt.scatter(2)


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
