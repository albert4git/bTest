#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""

import math
import logging

###############################################################################
#logging.basicConfig(level=logging.DEBUG)
#logging.basicConfig(level=logging.INFO)
#logger = logging.getLogger(__name__)
###############################################################################

###############################################################################
logger = logging.getLogger(__name__)
# logger.setLevel(logging.INFO)
logger.setLevel(logging.DEBUG)
###################################
handler = logging.FileHandler('check1_primes.log')
handler.setLevel(logging.INFO)
frm = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
handler.setFormatter(frm)
logger.addHandler(handler)
###############################################################################
logger.warn('WARN>>primes.py')


def is_prime1(number):

    print(number)
    """Return True if *number* is prime."""
    for element in range(number):
        print(element)
        if number % element == 0:
            return False

    return True


def is_prime(n):
    if n > 0:

        if n % 2 == 0:
            return False

        sqrt_n = int(math.floor(math.sqrt(n)))
        for i in range(3, sqrt_n + 1, 2):
            if n % i == 0:
                return False
        return True

    else:
        print(" n is NULL \n")
        # exit()


def print_next_prime(number):
    """Print the closest prime number larger than *number*."""
    logger.info('START>> next_prime')
    index = number
    while True:
        index -= 1
        if index > 0:
            if is_prime(index):
                logger.debug('DBG>>index>> %s', index)
                #print("index:", index)
                print(index)
        else:
            print("break1 \n")
            break

    logger.info('STOP>> next_prime')
    print("The END \n")
