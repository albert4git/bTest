#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""
java -jar jython-standalone-2.7.0.jar main.py

"""

from java.applet import Applet
import sys


class HelloWorld(Applet):
    def paint(self, g):
        g.drawString("Hello from Jython %s!" % sys.version, 20, 30)


if __name__ == '__main__':
    import pawt
pawt.test(HelloWorld())
