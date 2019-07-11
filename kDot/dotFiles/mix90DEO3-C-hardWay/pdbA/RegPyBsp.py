#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""

"""
# this regular expression contains no special symbols
# it won't match anything except 'cat'
"cat"

# a . stands for any single character (except the newline, by default)
# this will match 'cat', 'cbt', 'c3t', 'c!t' ...
"c.t"

# a * repeats the previous character 0 or more times
# it can be used after a normal character, or a special symbol like .
# this will match 'ct', 'cat', 'caat', 'caaaaaaaaat' ...
"ca*t"
# this will match 'sc', 'sac', 'sic', 'supercalifragilistic' ...
"s.*c"

# + is like *, but the character must occur at least once
# there must be at least one 'a'
"ca+t"

# more generally, we can use curly brackets {} to specify any number of repeats
# or a minimum and maximum
# this will match any five-letter word which starts with 'c' and ends with 't'
"c.{3}t"
# this will match any five-, six-, or seven-letter word ...
"c.{3,5}t"

# One of the uses for ? is matching the previous character zero or one times
# this will match 'http' or 'https'
"https?"

# square brackets [] define a set of allowed values for a character
# they can contain normal characters, or ranges
# if ^ is the first character in the brackets, it *negates* the contents
# the character between 'c' and 't' must be a vowel
"c[aeiou]t"
# this matches any character that *isn't* a vowel, three times
"[^aeiou]{3}"
# This matches an uppercase UCT student number
"[B-DF-HJ-NP-TV-Z]{3}[A-Z]{3}[0-9]{3}"

# we use \ to escape any special regular expression character
# this would match 'c*t'
r"c\*t"
# note that we have used a raw string, so that we can write a literal backslash

# there are also some shorthand symbols for certain allowed subsets of characters:
# \d matches any digit
# \s matches any whitespace character, like space, tab or newline
# \w matches alphanumeric characters -- letters, digits or the underscore
# \D, \S and \W are the opposites of \d, \s and \w

# we can use round brackets () to *capture* portions of the pattern
# this is useful if we want to search and replace
# we can retrieve the contents of the capture in the replace step
# this will capture whatever would be matched by .*
"c(.*)t"

# ^ and $ denote the beginning or end of a string
# this will match a string which starts with 'c' and ends in 't'
"^c.*t$"

# | means "or" -- it lets us choose between multiple options.
"cat|dog"
