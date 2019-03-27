#! /bin/sh
#
# run.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#
#
# gcc -o selectDodo10 dodoSelectAll.c -l sqlite3

gcc -o do2Sel c2DodoSel.cpp -l sqlite3

gcc -o doCIS cDodoCIS.c -l sqlite3
gcc -o doCheck cDodoCheck.c -l sqlite3
gcc -o doSel cDodoSel.c -l sqlite3
#---------------------------------------------
gcc -o doSel cDodoSelAll.c -l sqlite3

./doCheck
./doCIS
./doSel

#---------------------------------------------
gcc -o ddSwitch cSwitch.c 
./ddSwitch


#---------------------------------------------
gcc -o ddStrgCp cStrgCp.c
./ddStrgCp


#---------------------------------------------
gcc -o ddTri cTri.c
./ddTri







