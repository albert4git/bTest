#! /bin/sh
#
# 4Run.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#

#//FLAG-G
#//FLAG-G
#//FLAG-G

git log --oneline 
git log --oneline 

git log -5

git log ./4Temp.vim

git diff --stat HEAD~5

git diff HEAD~2
