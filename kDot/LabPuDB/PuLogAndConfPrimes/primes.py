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
import logging.config
import pdb

###############################################################################
# logging.config.fileConfig('logging.ini')
# logger = logging.getLogger(__name__)
###############################################################################
logging.config.fileConfig('logging.ini')
logging.config.fileConfig('logging.config')

#mylogger = logging.getLogger('root')
# mylogger = logging.getLogger('__name__')

# msg = 'PRIMES.py'
# mylogger.debug(msg)
# mylogger.info(msg)

###############################################################################


def print_next_prime(number):
    """Print the closest prime number larger than *number*."""
    mylogger = logging.getLogger('__name__')
    msg = 'PRIMES.py -IN- next_prime'
    mylogger.info(msg)

    mylogger.info('START>> next_prime')
    mylogger.info('LIVE>> next_prime')
    index = number
    while True:
        index -= 1
        #pdb.set_trace()
        if index > 0:
            if is_prime(index):
                mylogger.debug('DBG>>index>> %s', index)
                print(index)
        else:
            print("break1 \n")
            break

    mylogger.info('LIVE>> next_prime')
    mylogger.info('STOP>> next_prime')
    print("The END \n")


def is_prime(n):
    mylogger = logging.getLogger('__name__')

    msg = 'PRIMES.py -=IN=- is_prime'
    mylogger.info(msg)
    mylogger.debug('DBG>>n>> %s', n)

    if n > 0:

        if n % 2 == 0:
            return False

        sqrt_n = int(math.floor(math.sqrt(n)))
        for i in range(3, sqrt_n + 1, 2):
            #pdb.set_trace()
            mylogger.debug('%s iteration, sqrt_n=%s', i, sqrt_n)
            if n % i == 0:
                return False
        return True

    else:
        print(" n is NULL \n")
        # exit()
