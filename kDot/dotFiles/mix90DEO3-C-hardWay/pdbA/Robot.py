#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""


class Robot:
    """Represents a robot, with a name."""

    # A class variable, counting the number of robots
    population = 0

    def __init__(self, name):
        """Initializes the data."""
        self.name = name
        print("(Initializing {})".format(self.name))

        # When this person is created, the robot
        # adds to the population
        Robot.population += 1

    def die(self):
        """I am dying."""
        print("{} is being destroyed!".format(self.name))

        Robot.population -= 1

        if Robot.population == 0:
            print("{} was the last one.".format(self.name))
        else:
            print("There are still {:d} robots working.".format(
                Robot.population))

    def say_hi(self):
        """Greeting by the robot.

        Yeah, they can do that."""
        print('Hello, my name is', self.name)
        print("Greetings, my masters call me {}.".format(self.name))

    @classmethod
    def how_many(cls):
        """Prints the current population."""
        print("We have {:d} robots.".format(cls.population))


# ===================SehrSimpleClass=====================================


class Person:
    pass  # An empty block


p = Person()
print(p)
print('---==DIR1==---')
print(dir(p))

# ========================SimpleClass=====================================


class PersonH:
    def say_hi(self):
        print('Hello, how are you?')


p = PersonH()
p.say_hi()

b = PersonH()
b.say_hi()

PersonH().say_hi()

# they must have an extra first name that has to be added to the beginning of the parameter list, but
# you do not give a value for this parameter when you call the method, Python will provide it.


class PersonI:
    def __init__(self, name):
        self.name = name

    def say_hi(self):
        print('Hello, my name is', self.name)


p = PersonI('Init-Swaroop')
p.say_hi()
print('---==DIR1==---')
print(dir(p))

# The previous 2 lines can also be written as
# Person('Swaroop').say_hi()
# ========================SimpleClass=====================================

# Robot().say_hi()
print("\n---==Robots==---")

droid1 = Robot("R2-D2")
droid1.say_hi()
Robot.how_many()

droid2 = Robot("C-3PO")
droid2.say_hi()
Robot.how_many()
print("\n---==Robots can do some work here==---")
print("\n---==Robots have finished their work. So let's destroy them==---")
droid1.die()
droid2.die()

Robot.how_many()
