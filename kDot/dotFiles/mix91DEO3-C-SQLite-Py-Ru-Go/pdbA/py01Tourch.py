#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.jit import ScriptModule, script_method, trace


class MyScriptModule(ScriptModule):
    def __init__(self):
        super(MyScriptModule, self).__init__()
        # trace produces a ScriptModule's conv1 and conv2
        self.conv1 = trace(nn.Conv2d(1, 20, 5), torch.rand(1, 1, 16, 16))
        self.conv2 = trace(nn.Conv2d(20, 20, 5), torch.rand(1, 20, 16, 16))

    @script_method
    def forward(self, input):
        input = F.relu(self.conv1(input))
        input = F.relu(self.conv2(input))
        return input
