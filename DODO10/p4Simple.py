"===============================================================================================================
 
import matplotlib.pyplot as plt
import matplotlib.pylab as plb
import mathp


x = np.linspace(-np.pi, np.pi, 256)
S, C = np.sin(x), np.cos(x)
y = np.lexsort(k, a)

plt.plot(x, S)
plt.show()
plt.scatter("")
plt.plot()
plt.scatter(x, y, s, m)
plt.sci(x)
plt.semilogy()
plt.Subplot(0)
plt.__name__
plt.semilogx()
plt.sca()
plt.sci(im)
plt.scatter(1,2)
plt.scatter(x,x,x)
plt.ScalarFormatter("x,y,z")
plt.scatter(x,y,z)
plt.scatter(x,y,s)
plt.sci(2)
plt.plot(1,3,4)
plt.plotfile

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
