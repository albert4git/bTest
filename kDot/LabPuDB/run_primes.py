#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""
"""

import time
from primes import is_prime
from primes import print_next_prime
import logging

###############################################################################
logger = logging.getLogger(__name__)
#logger.setLevel(logging.DEBUG)
logger.setLevel(logging.INFO)
###################################
handler = logging.FileHandler('check1_primes.log')
handler.setLevel(logging.INFO)
frm = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
handler.setFormatter(frm)
logger.addHandler(handler)
###############################################################################
logger.warn('WARN>>run_primes.py')
logger.info('Hello Pre>>Main')


def main():

    logger.info('In>>Main')
    start = time.time()
    result = is_prime(7)
    duration = time.time() - start
    print(result, duration)

    start = time.time()

    logger.info('START-TIME>> %s', start)
    print_next_prime(4000)
    duration = time.time() - start
    logger.info('DURATION>> %s', duration)
    print(result, duration)


if __name__ == '__main__':
    main()
