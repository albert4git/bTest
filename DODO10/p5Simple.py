import matplotlib.pyplot as plt
import matplotlib.pylab as plb
import matplotlib.path as pth
import matplotlib.compat as cmp

x = np.linspace(-np.pi, np.pi, 256)
S, C = np.sin(x), np.cos(x)
y = np.lexsort(k, a)

plt.sin()
plt.plot()
plt.scatter(x, y, s, m)
plt.sci(x)
plt.semilogy()
plt.sca()
plt.sci(im)
plt.semilogx(x, y)
plt.silent_list(1)
plt.sci(2)
plt.sca(1)
plt.scatter(1 , 2)
plt.savefig(1, 2)
plt.savefig
plt.stackplot(1, 3)
plt.s



#=================================================================================
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
