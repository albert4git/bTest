#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""


class SchoolMember:
    '''Represents any school member.'''

    def __init__(self, name, age):
        self.name = name
        self.age = age
        print('(Initialized SchoolMember: {})'.format(self.name))

    def tellMem(self):
        '''Tell my details.'''
        end = " "
        print('TellMem: Name:"{}" Age:"{}"'.format(self.name, self.age), end)

    def tell(self):
        '''Tell my details.'''
        end = " "
        print('Name:"{}" Age:"{}"'.format(self.name, self.age), end)


class Teacher(SchoolMember):
    '''Represents a teacher.'''

    def __init__(self, name, age, salary):
        SchoolMember.__init__(self, name, age)
        self.salary = salary
        print('(Initialized Teacher: {})'.format(self.name))

    def tell(self):
        SchoolMember.tell(self)
        print('Salary: "{:d}"'.format(self.salary))


class Student(SchoolMember):
    '''Represents a student.'''

    def __init__(self, name, age, marks):
        SchoolMember.__init__(self, name, age)
        self.marks = marks
        print('(Initialized Student: {})'.format(self.name))

    def tell(self):
        SchoolMember.tell(self)
        print('Marks: "{:d}"'.format(self.marks))


t = Teacher('Mrs. Shrividya', 40, 30000)
s = Student('Swaroop', 25, 75)
print("\n---==Robots0==---")
s.tell()
s.tellMem()
print("\n---==Robots1==---")
t.tell()
t.tellMem()
print("\n---==Robots2==---")

# prints a blank line
print()

members = [t, s]
for member in members:
    # Works for both Teachers and Students

    member.tell()
