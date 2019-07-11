#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""
from HelloService import HelloService

"""
import HelloService


class HelloServicePython(HelloService):
    def __init__(self):
        self.value = "Hello from python"

    def getHello(self):
        return self.value
