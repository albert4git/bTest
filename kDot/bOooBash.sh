#! /bin/sh
#
# bOooBash.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#


#!/bin/bash
#let script exit if a command fails
set -o errexit 

#let script exit if an unsed variable is used
set -o nounset

echo "Names without double quotes" 


names="Tecmint FOSSMint Linusay"
for name in $names; do
        echo "$name"
done

echo "Names with double quotes" 

for name in "$names"; do
        echo "$name"
done


exit 0

#================================================================
echo "4 * 0.56" | bc
no=54;
result=`echo "$no * 1.5" | bc`
echo $result
#=========tee > stdin ===========================================
ls | tee FILE1 FILE2
#================================================================
cat FILE1
#================================================================
echo who is this | tee -
#================================================================
array_var[0]="test1"
array_var[1]="test2"
array_var[2]="test3"
array_var[3]="test4"
array_var[4]="test5"
array_var[5]="test6"

echo ${#array_var[*]}
echo who is this | tee -
echo ${array_var[@]}
#================================================================
#================================================================
date
date +%s
date --date "Jan 20 2001" +%A
date --date "Jan 20 1999" +%A
date --date "May 07 1979" +%A
#================================================================

fArgs()
{
echo $1; #Accessing arg1 and arg2
echo $2; #Accessing arg1 and arg2
echo "$@"; # Printing all arguments as list at once
echo "$*"; # Similar to $@, but arguments taken as single entity
return 0; # Return value
}


fArgs "aa", "bb"

#================================================================
#===SUBSHEL=()=======================================================
pwd;
(cd /bin; ls);
pwd;
#=======================
out=$(ls)
out=$(cat FILE1)
echo $out


