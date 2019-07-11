# mandel3cy.pyx
# cython: profile=True

import cython
cimport numpy as np # for the special numpy stuff

@cython.profile(False)
cdef inline int mandel(double real, double imag, int max_iterations=20):
    '''determines if a point is in the Mandelbrot set based on deciding if,
       after a maximum allowed number of iterations, the absolute value of
       the resulting number is greater or equal to 2.'''
    cdef double z_real = 0., z_imag = 0.
    cdef int i

    for i in range(0, max_iterations):
        z_real, z_imag = ( z_real*z_real - z_imag*z_imag + real,
                           2*z_real*z_imag + imag )
        if (z_real*z_real + z_imag*z_imag) >= 4:
            return i
    return -1

@cython.boundscheck(False)
def create_fractal( double min_x,
                    double max_x,
                    double min_y,
                    int nb_iterations,
                    np.ndarray[np.uint8_t, ndim=2, mode="c"] colours not None,
                    np.ndarray[np.uint8_t, ndim=3, mode="c"] image not None):

    cdef int width, height
    cdef int x, y, start_y, end_y
    cdef int nb_colours, colour
    cdef double real, imag, pixel_size



    nb_colours = len(colours)

    width = image.shape[0]
    height = image.shape[1]

    pixel_size = (max_x - min_x) / width

    for x in range(width):
        real = min_x + x*pixel_size
        for y in range(height):
            imag = min_y + y*pixel_size
            colour = mandel(real, imag, nb_iterations)
            image[x, y, 0] = colours[ colour%nb_colours, 0 ]
            image[x, y, 1] = colours[ colour%nb_colours, 1 ]
            image[x, y, 2] = colours[ colour%nb_colours, 2 ]
