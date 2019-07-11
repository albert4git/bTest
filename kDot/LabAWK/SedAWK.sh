#! /bin/sh
#
# SedAWK.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#
file:///media/red/A5A1-FBC4/2019PyLink/Pdf-MixPlusNR01/teach-yourself-shell-programming/ch16/251-254.html

file:///media/red/A5A1-FBC4/2019PyLink/Pdf-MixPlusNR01/teach-yourself-shell-programming/ewtoc.html

cat ./fruchte.txt
sed '/0\.[0-9][0-9]$/p' ./fruchte.txt

sed -n '/0\.[0-9][0-9]$/p' ./fruchte.txt

Blank lines 	/^$/
An entire line 	/^.*$/
One or more spaces 	/ */
HTML (or XML) Tags 	/<[^>][^>]*>/
Valid URLs 	/[a-zA-Z][a-zA-Z]*:\/\/[a-zA-Z0-9][a-zA-Z0-9\.]*.*/
Formatted dollar amounts 	/\$[0-9]*\.[0-9][0-9]/


/^Chapter [1-9]*[0-9]$/

matches lines such as

Chapter 1
Chapter 20

but it does not match lines such as

Chapter 00 Introduction
Chapter 101

Because the ^ and $ metacharacters anchor the expression to the beginning and end of a line, you match empty lines as follows:

/^$/


sed '/^[Mm]ango/d' fruit_prices.txt

Here you request all lines that start with the words mango or Mango to be deleted. The output is as follows:

Fruit           Price/lbs
Banana          0.89
Paech           0.79
Kiwi            1.50
Pineapple       1.29
Apple           0.99


To fix the spelling of Paech, you can use the following sed command:

$ sed 's/Paech/Peach/' fruit_prices.txt





Reusing an Expressions Value

Now say that you want to change the list to reflect that the prices
are in dollars by appending the $ character in front of each of the
prices. You know that by using the following expression, you can match
all the lines that end with a price:

/ *[0-9][0-9]*\.[0-9][0-9]$/

The problem, though, is replacing the existing price with a price that is
preceded by the $ character. Apparently, you would need to write a separate s
command for each fruit in the file.

Fortunately, the s command provides us with the & operator, which enables us to
reuse the string that matched pattern1 in pattern2. In this case you need to
reuse the price that was matched:

$ sed 's/ *[0-9][0-9]*\.[0-9][0-9]$/\$&/' fruit_prices.txt
Fruit           Price/lbs
Banana          $0.89
Paech           $0.79
Kiwi            $1.50
Pineapple       $1.29
Apple           $0.99
