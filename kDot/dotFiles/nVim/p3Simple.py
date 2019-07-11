class call_counter:
    def __init__(self, func):
        self.count = 0
        self.func = func

    def __call__(self, *args, **kwargs):
        self.count += 1
        print(' Funktionsaufruf - Nummer : ', self.count)
        return self.func(*args, **kwargs)


@call_counter
def f(a, b):
    print(a + b, a * b)


f(2, 3)
f(1, 4)
f(1, 2)


# ==============================================================================
def fak(n):
    """
    Rekursive D e f i n i t i o n der Fakultaet
    """
    if n == 0:
        y = 1
    else:
        y = n * fak(n - 1)
        print(y)
    return y


print(fak(5))

# ==============================================================================


def f_1(x):
    x = x**2
    return x


f_2 = lambda x: x**2

x = 2
print(f_1(x))
print(f_2(x))

# ==============================================================================
