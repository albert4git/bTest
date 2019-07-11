#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
# import pytorch library
import torch
import numpy as np

# numpy array
array = [[1, 2, 3], [4, 5, 6]]
first_array = np.array(array)  # 2x3 array
print("Array Type: {}".format(type(first_array)))  # type
print("Array Shape: {}".format(np.shape(first_array)))  # shape
print(first_array)

# pytorch array
tensor = torch.Tensor(array)
print("Array Type: {}".format(tensor.type))  # type
print("Array Shape: {}".format(tensor.shape))  # shape
print(tensor)
