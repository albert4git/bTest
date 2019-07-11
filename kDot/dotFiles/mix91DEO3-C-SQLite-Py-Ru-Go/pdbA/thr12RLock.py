#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

In a situation where separate code from the same thread needs to “re-acquire
the lock, use an
RLock instead.

"""
import logging
import threading
lock = threading.Lock()

print('First try :', lock.acquire())
print('Second try:', lock.acquire(0))

lock = threading.RLock()

print('First try :', lock.acquire())
print('Second try:', lock.acquire(0))
"""
Locks implement the context manager API and are compatible with the with statement. Using with
removes the need to explicitly acquire and release the lock.
"""

logging.basicConfig(
    level=logging.DEBUG,
    format='(%(threadName)-10s) %(message)s',
)


def worker_with(lock):
    with lock:
        logging.debug('Lock acquired via with')


def worker_no_with(lock):
    lock.acquire()
    try:
        logging.debug('Lock acquired directly')
    finally:
        lock.release()


lock = threading.Lock()
w = threading.Thread(target=worker_with, args=(lock, ))
nw = threading.Thread(target=worker_no_with, args=(lock, ))

w.start()
nw.start()
