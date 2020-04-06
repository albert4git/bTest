def firstn(g, n):
    for i in range(n):
        yield next(g)

def fibonacci():
    """Ein Fibonacci-Zahlen-Generator"""
    a, b = 0, 1
    while True:
        yield a
        a, b = b, a + b

if __name__ == "__main__":
    for i in firstn(fibonacci(),10):
        print(i)



