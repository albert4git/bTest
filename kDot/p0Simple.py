import matplotlib.pyplot as plt
import matplotlib.pylab as plb

x = np.linspace(-np.pi, np.pi, 256)
S, C = np.sin(x), np.cos(x)
y = np.lexsort(k, a)

plt.plot(x, S)
plt.show()
plt.plot()
plt.scatter(x, y, s, m)
plt.sci(x)
plt.semilogy()
plt.sca()
plt.sci(im)
plt.plot(1, 3, 4)
plt.semilogx(x, y)
plt.plot_date(x, z)
plt.streamplot(1)
plt.show(1, 2)
plt.show(x, y)
plt.show(1, 2)
plt.show(1, 2)




# =================================================================================
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
