#! /bin/sh
#
# run.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#
#
# gcc -o selectDodo10 dodoSelectAll.c -l sqlite3


gcc -o dodo10CIS dodo10CreateInsertSel.c -l sqlite3
gcc -o openDodo10 openDodo10.c -l sqlite3
gcc -o select2Dodo10 dodo2Select.c -l sqlite3

./dodo10CIS
./selectDodo10
