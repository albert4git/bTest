def msum(long N):
    cdef long s = 0, k
    for k in range(N):
        s += k + 1
    return s
