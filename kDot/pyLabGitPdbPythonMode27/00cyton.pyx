Cython
------
A simple example how to use it in Debian. Create a file t.pyx:

$ cat t.pyx
def msum(long N):
    cdef long s = 0, k
    for k in range(N):
        s += k + 1
    return s
$ cython --convert-range t.pyx
$ gcc -fPIC -O3 -I/usr/include/python2.5/ -c -o t.o t.c
$ gcc -shared t.o -o t.so
$ python
Python 2.5.2 (r252:60911, May 28 2008, 08:35:32) 
[GCC 4.2.4 (Debian 4.2.4-1)] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import t
>>> dir(t)
['__builtins__', '__doc__', '__file__', '__name__', 'msum']
>>> t.msum(5)
15
