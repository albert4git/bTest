def firstn(g, n):
    for i in range(n):
        yield next(g)

def numbers():
    i = 1
    while True:
        yield i
        i += 1

def pair_sum(g):
    it = g()
    previous = next(it)
    while True:
        try:
            x = next(it)
            yield x + previous
            previous = x
        except StopIteration:
            it = g()      

if __name__ == "__main__":
    for i in firstn(pair_sum(numbers),10):
        print(i)



