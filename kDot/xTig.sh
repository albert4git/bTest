#! /bin/sh
#
# xTig.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#
First, put

alias tig='tig -n 1000'

# ~/.bashrc to reduce tig’s startup time (especially on large repositories). There’s rarely a need to go back more than 1000 commits from your current HEAD position in an interactive, GUI-driven manner. And if you really need to see everything, do

$ \tig

on the terminal to bypass the shell alias.

Second, put the following in your ~/.tigrc file:

set main-view = date author id:width=10 commit-title:yes,graph,refs

. This makes the default view show git commit hashes (where width is the number of hex digits to show), so that you don’t have to press ENTER on a particular commit to see its hash.

tig is configured in your ~/.gitconfig file. I have the following section there:

[tig]
  show-date = relative
  show-rev-graph = yes
