#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""

import re

# match and search are quite similar
print(re.match("c.*t", "cravat"))  # this will match
print(re.match("c.*t", "I have a cravat"))  # this won't
print(re.search("c.*t", "I have a cravat"))  # this will

# We can use a static string as a replacement...
print(re.sub("lamb", "squirrel", "Mary had a little lamb."))
# Or we can capture groups, and substitute their contents back in.
print(re.sub("(.*) (BITES) (.*)", r"\3 \2 \1", "DOG BITES MAN"))
# count is a keyword parameter which we can use to limit replacements
print(re.sub("a", "b", "aaaaaaaaaa"))
print(re.sub("a", "b", "aaaaaaaaaa", count=1))

# Here's a closer look at a match object.
my_match = re.match("(.*) (BITES) (.*)", "DOG BITES MAN")
print(my_match.groups())
print(my_match.group(1))

# We can name groups.
my_match = re.match("(?P<subject>.*) (?P<verb>BITES) (?P<object>.*)",
                    "DOG BITES MAN")
print(my_match.group("subject"))
print(my_match.groupdict())
# We can still access named groups by their positions.
print(my_match.group(1))

# Sometimes we want to find all the matches in a string.
print(re.findall("[^ ]+@[^ ]+",
                 "Bob <bob@example.com>, Jane <jane.doe@example.com>"))

# Sometimes we want to split a string.
print(re.split(", *", "one,two,  three, four"))

# We can compile a regular expression to an object
my_regex = re.compile("(.*) (BITES) (.*)")
# now we can use it in a very similar way to the module
print(my_regex.sub(r"\3 \2 \1", "DOG BITES MAN"))

# GREEDY?
# this is going to match everything between the first and last '"'
# but that's not what we want!
print(re.findall('".*"', '"one" "two" "three" "four"'))

# This is a common trick
print(re.findall('"[^"]*"', '"one" "two" "three" "four"'))

# We can also use ? after * or other expressions to make them *not greedy*
print(re.findall('".*?"', '"one" "two" "three" "four"'))


def swap(m):
    subject = m.group("object").title()
    verb = m.group("verb")
    object = m.group("subject").lower()
    return "%s %s %s!" % (subject, verb, object)


print(re.sub("(?P<subject>.*) (?P<verb>.*) (?P<object>.*)!", swap,
             "Dog bites man!"))

# re.IGNORECASE –
# re.MULTILINE –
# re.DOTALL –

# this won't match
print(re.match("cat", "Cat"))
# this will
print(re.match("cat", "Cat", re.IGNORECASE))

text = """numbers = 'one,
two,
three'
numbers = 'four,
five,
six'
not_numbers = 'cat,
dog'"""

print(re.findall("^numbers = '.*?'", text))  # this won't find anything
# we need both DOTALL and MULTILINE
print(re.findall("^numbers = '.*?'", text, re.DOTALL | re.MULTILINE))
