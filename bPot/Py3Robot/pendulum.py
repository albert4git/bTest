def firstn(g, n):
    for i in range(n):
        yield next(g)

def abc():
    for ch in "abcde":
        yield ch

def pendulum(g):
    while True:
        reverse = []
        for el in g():
            reverse.insert(0,el)
            yield el
        for el in reverse:
            yield el

if __name__ == "__main__":
    for i in pendulum(abc):
        print(i, end=" ")

