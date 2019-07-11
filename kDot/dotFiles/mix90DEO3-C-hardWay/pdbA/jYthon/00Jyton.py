#! /usr/bin/env jython
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

java -jar jython_installer-2.7.0.jar
from java.util import Date
java -jar jython-standalone-2.7.0.jar main.py
"""

import java
import time

from java.util import Date

d = Date()
print(d)
