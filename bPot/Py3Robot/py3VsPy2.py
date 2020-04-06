#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2020 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
######################################################################
# 1. Dependencies

There are some dependencies that we need to install before install python development version

sudo apt-get install zlib1g-dev build-essential libffi-dev

# 2. Install pyenv Ubuntu 19

First of all, let’s install pyenv on Ubuntu (https://github.com/pyenv/pyenv)

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

Define environment variable

$ echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
$ echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
# 3. Source Profile

Now lets source the profile

source ~/.profile


################3.8###################
pyenv install --list | grep 3.8
pyenv install 3.8-dev

3.8-dev
3.9-dev
#################Docker##################

Hopefully, youre using something like Docker to build these dependencies
into a container image. If you’re using a Debian image you need to do
something like this:

FROM ubuntu:latestRUN apt-get update && \
    apt-get install -y \
      build-essential \
      python2.7 \
      python2.7-dev \
      python-pip && \
    pip install --upgrade pip &&\
    pip install numpy

#################List???##############################################################

import timeit

number = 100000
def forLoop_square():
    my_list = []
    for i in range(number):
        my_list.append(i)
    return my_list
timeit.timeit(forLoop_square, number = 1000)


def listComp_square():
    my_list = [i for i in range(number)]
    return my_list

timeit.timeit(listComp_square, number = 1000)

###########################State########################################################
import statistics
data = [9, 3, 2, 1, 1, 2, 7, 9]
# statistics.fmean(data)
statistics.geometric_mean(data)
statistics.multimode(data)
statistics.quantiles(data, n=4)


###########################Date########################################################
pip3 install python-dateutil
from dateutil.parser import parse

logline = 'INFO 2020-01-01T00:00:01 Happy new year, human.'
timestamp = parse(log_line, fuzzy=True)
print(timestamp)
# 2020-01-01 00:00:01

###########################colorama########################################################

from colorama import Fore, Back, Style

print(Fore.RED + 'some red text')
print(Back.GREEN + 'and with a green background')
print(Style.DIM + 'and in dim text')
print(Style.RESET_ALL)
print('back to normal now')
###########################SET########################################################

mylist = [1, 1, 2, 3, 4, 5, 5, 5, 6, 6]
print (set(mylist))
# {1, 2, 3, 4, 5, 6}

# And since a string can be treated like a
# list of letters, you can also get the
# unique letters from a string this way:
print (set("aaabbbcccdddeeefff"))
# {'a', 'b', 'c', 'd', 'e', 'f'}
###########################IMG########################################################

pip3 install Pillow
from PIL import Image

im = Image.open("kittens.jpg")
im.show()
print(im.format, im.size, im.mode)
# JPEG (1920, 1357) RGB

###########################REVERSE########################################################
revstring = "abcdefg"[::-1]
print(revstring)
# 'gfedcba'

revarray = [1, 2, 3, 4, 5][::-1]
print(revarray)
# [5, 4, 3, 2, 1]
###########################SLISE########################################################
# We can easily create a new list from
# the first two elements of a list:
first_two = [1, 2, 3, 4, 5][0:2]
print(first_two)
# [1, 2]

# And if we use a step value of 2,
# we can skip over every second number
# like this:
steps = [1, 2, 3, 4, 5][0:5:2]
print(steps)
# [1, 3, 5]

# This works on strings too. In Python,
# you can treat a string like a list of
# letters:
mystring = "abcdefdn nimt"[::2]
print(mystring)
# 'aced it'

###########################JOIN########################################################
mylist = ['The', 'quick', 'brown', 'fox']
mystring = " ".join(mylist)
print(mystring)
# 'The quick brown fox'

###########################SPLIT########################################################
mystring = "10 awesome python tricks"
print(mystring.title())

mystring = "The quick brown fox"
mylist = mystring.split(' ')
print(mylist)
# ['The', 'quick', 'brown', 'fox']
###################################################################################
dict1 = { 'a': 1, 'b': 2 }
dict2 = { 'b': 3, 'c': 4 }
merged = { **dict1, **dict2 }
print (merged)
# {'a': 1, 'b': 3, 'c': 4}
###########################DATACLASS########################################################
from dataclasses import dataclass

@dataclass
class Card:
    rank: str
    suit: str

card = Card("Q", "hearts")

print(card == card)
# True

print(card.rank)
# 'Q'

print(card)
Card(rank='Q', suit='hearts')
###################################################################################
# 4. List Comprehensions

mylist = [i for i in range(10)]
print(mylist)
# [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

squares = [x**2 for x in range(10)]
print(squares)
# [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]

def some_function(a):
    return (a + 5) / 2

my_formula = [some_function(i) for i in range(10)]
print(my_formula)
# [2.5, 3.0, 3.5, 4.0, 4.5, 5.0, 5.5, 6.0, 6.5, 7.0]

filtered = [i for i in range(20) if i%2==0]
print(filtered)
# [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]

########################-F-STRING-#########################################################
# inline variables, similar to LaTeX
name = "Fred"
print(f"He said his name is {name}.")
# 'He said his name is Fred.'
# If you feel you must use lambdas, they may be used inside of parentheses:
print(f'{(lambda x: x*3)(3)}')
# '9'
###########################
items = list(range(0, 5)) # create list of 5 elements
print(items)
# [0, 1, 2, 3, 4]

print(f'number of items: {len(items)}')
# number of items: 5


###################################################################################
# Matrix multiplication with @
# Let's implement one of the simplest ML models — a linear regression with l2
# regularization (a.k.a. ridge regression):

# l2-regularized linear regression: || AX - y ||^2 + alpha * ||x||^2 -> min

# Python 2
X = np.linalg.inv(np.dot(A.T, A) + alpha * np.eye(A.shape[1])).dot(A.T.dot(y))
# Python 3
X = np.linalg.inv(A.T @ A + alpha * np.eye(A.shape[1])) @ (A.T @ y)

# The code with @ becomes more readable and more translatable between deep
# learning frameworks: same code X @ W + b[None, :] for a single layer of
# perceptron works in numpy, cupy, pytorch, tensorflow (and other frameworks that
###################################################################################
import glob

# Python 2
found_images = (
    glob.glob('/path/*.jpg')
  + glob.glob('/path/*/*.jpg')
  + glob.glob('/path/*/*/*.jpg')
  + glob.glob('/path/*/*/*/*.jpg')
  + glob.glob('/path/*/*/*/*/*.jpg'))

import glob
# Python 3
# found_images = glob.glob('~/Desktop/**/*.png', recursive=True)
found_images = glob.glob('/home/red/Desktop/**/*.png', recursive=True)
print("IMG: ", found_images)

A better option is to use pathlib in python3 (minus one import!):

# Python 3
found_images = pathlib.Path('~/Desktop/').glob('**/*.jpg')
print("IMG: ", found_images)


#############################???###################################################
# Python 3.7+, not all IDEs support this at the moment
print("IMG1 ")
breakpoint()
print("IMG2 ")

#############################???###################################################
# Python 3
math.inf # Infinite float
math.nan # not a number

max_quality = -math.inf  # no more magic initial values!

for model in trained_models:
    max_quality = max(max_quality, compute_quality(model, data))
#############################???###################################################
# Data classes
# Python 3.7 introduces data classes, a good replacement for
# namedtuple in most cases.

@dataclass
class Person:
    name: str
    age: int

@dataclass
class Coder(Person):
    preferred_language: str = 'Python 3'

# dataclass decorator takes the job of implementing routine methods for you
# (initialization, representation, comparison, and hashing when applicable).
# Let's name some features:

#######################???#########################################################
# printing tab-aligned tables without str.join:

# Python 3
print(*array, sep='\t')
print(batch, epoch, loss, accuracy, time, sep='\t')

# Python 2 (too error-prone during fast modifications, please avoid):
print '{:3} {:3} / {:3}  accuracy: {:0.4f}±{:0.4f} time: {:3.2f}'.format(
    batch, epoch, total_epochs, numpy.mean(accuracies), numpy.std(accuracies),
    time / len(data_batch)
)

# Python 3.6+
print(f'{batch:3} {epoch:3} / {total_epochs:3}  accuracy: {numpy.mean(accuracies):0.4f}±{numpy.std(accuracies):0.4f} time: {time / len(data_batch):3.2f}')

s = '您好'
print(len(s))
print(s[:2])


##########################???######################################################
# For instance, measurement units are a common pain in scientific areas, astropy
# package provides a simple decorator to control units of input quantities and
# convert output to required units

# Python 3
from astropy import units as u
@u.quantity_input()
def frequency(speed: u.meter / u.s, wavelength: u.nm) -> u.terahertz:
    return speed / wavelength

frequency(speed=300_000 * u.km / u.s, wavelength=555 * u.nm)
# output: 540.5405405405404 THz, frequency of green visible light

###########################################################################
import sys
print(sys.version)

User20987 = "Chris Castiglione"
print(("Hi {0}, hope yo having a great day today").format(User20987))


# print('\ntiming range()')
# %timeit test_range(n)
###########################################################################


print('Hello, World!')
print("some text,", end="")
print(' print more text on the same line')
###########################################################################

mylist = [i for i in range(10)]
print(mylist)
# [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
###########################################################################

squares = [x**2 for x in range(10)]
print(squares)
# [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
###########################################################################
def some_function(a):
    return (a + 5) / 2

my_formula = [some_function(i) for i in range(10)]
print(my_formula)
# [2.5, 3.0, 3.5, 4.0, 4.5, 5.0, 5.5, 6.0, 6.5, 7.0]

###########################################################################
filtered = [i for i in range(20) if i%2==0]
print(filtered)
# [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]

###########################################################################
# import sys

mylist = range(0, 10000)
print(sys.getsizeof(mylist))
# 48
# import sys

myreallist = [x for x in range(0, 10000)]
print(sys.getsizeof(myreallist))
# 87632
###########################################################################
def get_user():
    name ="mox"
    birthdate = 18
    # fetch user from database
    # ....
    return name, birthdate

nam, birth = get_user()

print(nam, birth)

mystring = "10 awesome python tricks"
print(mystring.title())
'10 Awesome Python Tricks'
###########################################################################
dict1 = { 'a': 1, 'b': 2 }
dict2 = { 'b': 3, 'c': 4 }
merged = { **dict1, **dict2 }
print (merged)
# {'a': 1, 'b': 3, 'c': 4}
###########################################################################
mylist = ['The', 'quick', 'brown', 'fox']
mystring = " ".join(mylist)
print(mystring)
# 'The quick brown fox'
###########################################################################
# We can easily create a new list from
# the first two elements of a list:
first_two = [1, 2, 3, 4, 5][0:2]
print(first_two)
# [1, 2]

# And if we use a step value of 2,
# we can skip over every second number
# like this:
steps = [1, 2, 3, 4, 5][0:5:2]
print(steps)
# [1, 3, 5]

# This works on strings too. In Python,
# you can treat a string like a list of
# letters:
mystring = "abcdefdn nimt"[::2]
print(mystring)
# 'aced it'
###########################################################################
revstring = "abcdefg"[::-1]
print(revstring)
# 'gfedcba'

revarray = [1, 2, 3, 4, 5][::-1]
print(revarray)
# [5, 4, 3, 2, 1]


#####################UNIQUE######################################################
mylist = [1, 1, 2, 3, 4, 5, 5, 5, 6, 6]
print (set(mylist))
# {1, 2, 3, 4, 5, 6}

# And since a string can be treated like a
# list of letters, you can also get the
# unique letters from a string this way:
print (set("aaabbbcccdddeeefff"))
# {'a', 'b', 'c', 'd', 'e', 'f'}

####Find the most frequently occurring value

test = [1, 2, 3, 4, 2, 2, 3, 1, 4, 4, 4]
print(max(set(test), key = test.count))


###########################################################################
from collections import Counter

mylist = [1, 1, 2, 3, 4, 5, 5, 5, 6, 6]
c = Counter(mylist)
print(c)
# Counter({1: 2, 2: 1, 3: 1, 4: 1, 5: 3, 6: 2})

# And it works on strings too:
print(Counter("aaaaabbbbbccccc"))
# Counter({'a': 5, 'b': 5, 'c': 5})

########################-IF-#################################################
x = 10

# Instead of:
if x > 5 and x < 15:
    print("Yes")
# yes

# You can also write:
if 5 < x < 15:
    print("Yes")
# Yes

########################-TRUES-#################################################
# Be careful when using "==" to check against True or False

if (var == True) :
    # this will execute if var is True or 1, 1.0, 1L

if (var != True) :
    # this will execute if var is neither True nor 1

if (var == False) :
    # this will execute if var is False or 0 (or 0.0, 0L, 0j)

if (var == None) :
    # only execute if var is None

if var :
    # execute if var is a non-empty string/list/dictionary/tuple, non-0, etc

if not var :
    # execute if var is "", {}, [], (), 0, None, etc.

if var is True :
    # only execute if var is boolean True, not 1

if var is False :
    # only execute if var is boolean False, not 0

if var is None :
    # same as var == None

###########################################################################
# Pythonistas usually say "It's easier to ask for forgiveness than permission".
# Don't :

if os.path.isfile(file_path) :
    file = open(file_path)
else :
    # do something

# Do :

try :
    file =  open(file_path)
except OSError as e:
    # do something

# Or even better with python 2.6+ / 3:

with open(file_path) as file :

#########################2Thread##################################################
from threading import Thread
import time

def countdown(n):
    while n > 0:
        n -= 1

COUNT = 80000000

t1 = Thread(target=countdown, args=(COUNT/2,))
t2 = Thread(target=countdown, args=(COUNT/2,))

start = time.time()
t1.start(); t2.start()
t1.join(); t2.join()
end = time.time()

print(end-start)
#########################1Thread##################################################
from threading import Thread
import time

def countdown(n):
    while n > 0:
        n -= 1

COUNT = 80000000

t1 = Thread(target=countdown, args=(COUNT,))

start = time.time()
t1.start();
end = time.time()

print(end-start)
###########################################################################
# By convention, members with a single leading underscore are considered
# “protected,” and members with double leading underscores are considered
# “private”:

class Foo:
    def qux(self):
        print ("qix")
    def _qib(self):
        print ("qax")
    def __qak(self):
        print ("qux")
f = Foo()
f.qux()
f._qib()
f._Foo__qak()


###########################################################################

###########################################################################
# from dataclasses import dataclass

# @dataclass
# class Card:
#     rank: str
#     suit: str

# card = Card("Q", "hearts")

# print(card == card)
# # True

# print(card.rank)
# # 'Q'

# print(card)
# Card(rank='Q', suit='hearts')

###########################################################################
# from dataclasses import dataclass

# @dataclass
# class Card:
#     rank: str
#     suit: str

# card = Card("Q", "hearts")

# print(card == card)
# # True

# print(card.rank)
# # 'Q'

# print(card)
# Card(rank='Q', suit='hearts')

###########################################################################


