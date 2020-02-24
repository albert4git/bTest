import matplotlib.pyplot as plt
import matplotlib.pylab as plb
import matplotlib.path as pth
import matplotlib.artist as art

plt.plot(1, 2)
plt.axes(1, 2)
plt.plot()
plt.savefig(1, 2)
plt.stackplot(1, 3)
plt.specgram(5, 7, 8)
plt.dedent(1)
plt.sca(2)
plt.sci(1)
plt.semilogx(1, 2)
plt.figaspect(3)
plt.silent_list(1, 2)
plt.scatter(1, 3, 5)
plt.scatter(1, 3, 7)
plt.scatter()


class someclass(object):
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


print(someclass.__doc__)
print(some_function.__doc__)


def twice(obj):
    def wrapper(x):
        return obj(obj(x))

    return wrapper


@twice
def function(x):
    return x**2


function(4)
