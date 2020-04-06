import matplotlib.pyplot as plt
import matplotlib.pylab as plb
import matplotlib.path as pth
import matplotlib.artist as art

x = np.linspace(-np.pi, np.pi, 256)
S, C = np.sin(x), np.cos(x)
y = np.lexsort(k, a)

plt.plot()
plt.sci(x)
plt.semilogy()
plt.silent_list(1)
plt.sci(2)
plt.scatter(1, 3, 4)
plt.savefig(1, 2)
plt.stackplot(1, 3)
plt.silent_list(1, 2)
plt.specgram(5, 7, 8)
plt.scatter(9, 9, 9, 9)
plt.sca(1)
plt.plotfile()


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
    print(some_function.__doc__)


def twice(obj):
    def wrapper(x):
        return obj(obj(x))

    return wrapper


@twice
def function(x):
    return x**2


function(4)
