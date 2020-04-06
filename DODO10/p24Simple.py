import matplotlib.pylab as plb
import matplotlib.path as pth
import matplotlib.artist as art

plt.semilogx(1, 2)
plt.figaspect(3)
plt.scatter(1, 3, 5)
plt.savefig(1, 2)
for i in (1, 10):
    echo('hallo')


class someclass(object):
    """
    this is the docstring of this class containing information
    about its contents : it does nothing !
    """
    def __init__(self):
        pass


def some_function():
    """
    this function does nothing
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


gg

function(4)
