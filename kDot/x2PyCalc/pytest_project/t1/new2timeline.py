#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
import pytest


class TimeLine:
    def __init__(self, instances):
        self.instances = instances


@pytest.fixture
def instances():
    return [0, 0, 0]


@pytest.fixture
def timeline(instances):
    return TimeLine(instances)


@pytest.mark.parametrize('instances', [[1, 2, 3], [2, 4, 5], [6, 8, 10]])
def test_timeline(timeline):
    for instance in timeline.instances:
        assert instance % 2 == 0
