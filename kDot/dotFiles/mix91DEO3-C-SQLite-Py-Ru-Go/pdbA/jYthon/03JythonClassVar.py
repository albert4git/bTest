#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""
So what do we do if we want a static variable? The following example modifies the above example
slightly and uses a static variable: We simply prefix the variable with the class name instead of
with self.

"""


class Hello:
    name = ""

    def __init__(self, name="John Doe"):
        Hello.name = name

    def greeting(self):
        print "Hello, %s" % Hello.name


jane = Hello("Jane Doe")
joe = Hello("Joe")
default = Hello()

jane.greeting()
joe.greeting()
default.greeting()
