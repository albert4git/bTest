import math

Z = 15
i = math.floor(Z / 2)

while i > 1:
    if Z % i == 0:
        print i
    i -= 1


def fib(n):  # write Fibonacci series up to n
    a, b = 0, 1
    while b < n:
        print b
        a, b = b, a + b


# Now call the function we just defined:
fib(200)
