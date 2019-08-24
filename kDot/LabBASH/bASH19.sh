#! /bin/sh
#
# bASH19.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#######################################################
 # Built-In Variables
# For reference
# $0   name of the script
# $n   positional parameters to script/function
# $$   PID of the script
# $!    PID of the last command executed (and run in the background)
# $?   exit status of the last command  (${PIPESTATUS} for pipelined commands)
# $#   number of parameters to script/function
# $@  all parameters to script/function (sees arguments as separate word)
# $*    all parameters to script/function (sees arguments as single word)
# Note
# $*   is rarely the right choice.
# $@ handles empty parameter list and white-space within parameters correctly
# $@ should usually be quoted like so "$@"
#######################################################



echo {"one ","two ","red ","blue "}fish
echo {{1,2,3}1,2,3}
#cp /etc/httpd/conf/httpd.conf{,.bak}

cp ~/git/bTest/aa.txt{,.bak}


diff ~/git/bTest/aa.txt ~/git/bTest/bb.txt

find /home/red/git/bTest/ -name README > outputFindFoo.txt 2>&1

find /home/red/git/aTest/ -name README > outputFindFoo.txt 

history | awk 'BEGIN {FS="[ \t]+|\\|"} {print $3}' | sort | uniq -c | sort -nr | head


whereis php
which php

file outputFindFoo.txt
file bASH19.sh
##########################################################################################

egrep '(Lorem|dolor)' example.txt
egrep -ri '(Lorem|dolor)' .
grep -E '(Lorem|dolor)' example.txt
nl -s". " example.txt 

sort example.txt | uniq
sort example.txt | uniq -c

uname -a



##########################################################################################
echo "Hey what's the File/Directory name (using the absolute path)?"
FILE="/home/red/git/bTest/"

if [ -e "$FILE" ]; then
        if [ -f "$FILE" ]; then
                echo "$FILE is a regular file."
        fi
        if [ -d "$FILE" ]; then
                echo "$FILE is a directory."
        fi
        if [ -r "$FILE" ]; then
                echo "$FILE is readable."
        fi
        if [ -w "$FILE" ]; then
                echo "$FILE is writable."
        fi
        if [ -x "$FILE" ]; then
                echo "$FILE is executable/searchable."
        fi
else
        echo "$FILE does not exist"
        exit 1
fi
exit
##########################################################################################
n=4
echo "$n"

i=1
while [ $i -ne 10 ]; do
        i=$(expr $i + 1)
        table=$(expr $i \* $n)
        echo $table
done
##########################################################################################
echo "Hello $USER"
echo "Hey i am" $USER "and will be telling you about the current processes"
echo "Running processes List"
ps
##########################################################################################
NETSTAT=/bin/netstat
LSPCI=/usr/bin/lspci
OUTPUT="network.$(date +'%d-%m-%y').info.txt"

write_header() {
        echo "-------------------------------" >>$OUTPUT
        echo "$@" >>$OUTPUT
        echo "-------------------------------" >>$OUTPUT
}

write_header "Linux Distro"


echo "* Hostname: $(hostname)" >$OUTPUT
echo "* Run date and time: $(date)" >>$OUTPUT

${LSPCI} -v >>$OUTPUT
write_header "Linux Distro"
echo "Linux kernel: $(uname -mrs)" >>$OUTPUT
$NETSTAT -s >>$OUTPUT

##########################################################################################
du -sh "/home/red/git/bTest"
du -sh "/home/red/git/aTest"
exa -T
NP="/home/red/git/bTest/"
du -sh $NP
#############################################
OUTPUT="network.$(date +'%d-%m-%y').info.txt"
echo $OUTPUT

##########################################################################################
mkdir target
javac -cp "lib/sqlite-jdbc-3.20.0.jar" -d target src/SQLiteJDBCExample.java
java -cp "lib/sqlite-jdbc-3.20.0.jar:target" SQLiteJDBCExample <arg>

