#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8

def bread(func):
    def wrapper():
        print "</-------\>"
        func()
        print "<\_______/>"
    return wrapper

def ingredients(func):
    def wrapper():
        print '%%tomato%%'
        func()
        print '%%salad%%'
    return wrapper

def sandwich(food='--ham--'):
    print food

# sandwich()
# sandwich = bread(ingredients(sandwich))
# sandwich()

@bread
@ingredients
def sandwich(food='-=#ham#=-'):
    print food

sandwich()
