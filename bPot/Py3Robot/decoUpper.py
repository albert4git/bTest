#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2020 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.

def print_message(message):
    "Enclosong Function"
    def message_sender():
        "Nested Function"
        print(message)

    message_sender()

print_message("Some random message")

###################################################

def uppercase_decorator(function):
    def wrapper():
        func = function()
        make_uppercase = func.upper()
        return make_uppercase

    return wrapper

###################################################
def say1hi():
    return 'hello there'

decorate = uppercase_decorator(say1hi)
decorate()

print(say1hi())
###################################################

@uppercase_decorator
def say_hi():
    return 'hello there'

print("--=Preparing to call say HI")
print(say_hi())
print("--=Post to call say HI")
###################################################

def split_string(function):
    def wrapper():
        func = function()
        splitted_string = func.split()
        return splitted_string

    return wrapper

@split_string
@uppercase_decorator
def say_hi():
    return 'hello there'


print(say_hi())
