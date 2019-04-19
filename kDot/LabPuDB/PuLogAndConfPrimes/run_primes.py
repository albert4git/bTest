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
from primes import print_next_prime
import logging
###############################################################################
import logging.config
###############################################################################
# from primes import is_prime
# Configure the logger
# logging.shutdown()
###############################################################################
logging.config.fileConfig('logging.ini')
logging.config.fileConfig('logging.config')
# logger = logging.getLogger(__name__)
mylogger = logging.getLogger('root')

msg = 'RUN_PRIMES.py'
mylogger.debug(msg)
mylogger.info(msg)
mylogger.warn(msg)
mylogger.error(msg)
mylogger.critical(msg)

# capture = True
# mylogger.captureWarnings(capture)
# dumy = start / 0
# print(dumy)


def main():

    mylogger.info('In>>Main')
    start = time.time()
    #############################################
    mylogger.info('START>> %s', start)
    print_next_prime(90)
    duration = time.time() - start
    mylogger.info('DURATION>> %s', duration)
    #############################################
    print(duration)
    #############################################

    # try:
    #     open('/path/to/does/no/exist', 'rb')
    # except (SystemExit, KeyboardInterrupt):
    #     raise
    # except Exception, e:
    #     mylogger.error('Failed to open file', exc_info=True)

    # # user = db.read_user(user_id)
    # user = None
    # user_id = 107
    # if user is None:
    #     mylogger.error('Cannot find user with user_id=%s', user_id)
    #     return user
    # return user

    print(duration)
    logging.shutdown()


if __name__ == '__main__':
    main()
