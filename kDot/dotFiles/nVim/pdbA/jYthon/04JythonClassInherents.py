#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""


class Hello:
    def __init__(self):
        self.hello = "Hello"


class Goodbye:
    def __init__(self):
        self.goodbye = "Goodbye"


class Greeter(Hello, Goodbye):
    def __init__(self):
        Hello.__init__(self)
        Goodbye.__init__(self)

    def printer(self):
        print self.hello
        print self.goodbye


class MyInterface:
    def __init__(self):
        if not hasattr(self, "myMethod"):
            raise AttributeError("MyClass must implement myMethod")


class MyClass(MyInterface):
    def __init__(self):
        MyInterface.__init__(self)


x = Greeter()
x.printer()
