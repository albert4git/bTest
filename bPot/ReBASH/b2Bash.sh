#! /bin/sh
#
# b2Bash.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#



#===???=============================================================
t="abc123"
[[ "$t" == abc* ]]         # true (globbing)
[[ "$t" == "abc*" ]]       # false (literal matching)
[[ "$t" =~ [abc]+[123]+ ]] # true (regular expression)
[[ "$t" =~ "abc*" ]]       # false (literal matching)
#===???=============================================================
"$t" == abc*          # true (globbing)
"$t" == "abc*"        # false (literal matching)
"$t" =~ [abc]+[123]+  # true (regular expression)
"$t" =~ "abc*"        # false (literal matching)

#===???=============================================================
f="path1/path2/file.ext"  
len="${#f}" # = 20 (string length) 
echo len
echo $f
slice1="${f:6}" # = "path2/file.ext"
echo $slice1

# slicing: ${<var>:<start>} or ${<var>:<start>:<length>}
slice1="${f:6}" # = "path2/file.ext"
slice2="${f:6:5}" # = "path2"
slice3="${f: -8}" # = "file.ext"(Note: space before "-")
pos=6
len=5
slice4="${f:${pos}:${len}}" # = "path2"
#==?==============================================================
data="name,sex,rollno,location"
#To read each of the item in a variable, we can use IFS.
oldIFS=$IFS
IFS=, now,
for item in $data;
do
        echo Item: $item
done

echo Item: $item
IFS=$oldIFS
#==?==============================================================

for ((ii=0; $ii<10; $ii++))
{
        echo $ii
}

#==?==============================================================
x=0;
until [ $x -eq 9 ]; 
do let x++;
echo $x;
done
#==?==============================================================
str1="Not empty "
str2=""
if [[ -n $str1 ]] && [[ -z $str2 ]];
then
echo str1 is non-empty and str2 is empty string.
fi
#================================================================
find . -print
find . -regex ".*\(\.py\|\.sh\)$"
find . ! -name "*.txt" -print

find ~/ ! -name "*.phar" -print
composer.phar

find . -type d -print
find . -type f -print
find . -type l -print
#Print all the files that were accessed within the last 7 days as follows:
find . -type f -atime -7 -print

#Print all the files that are having access time exactly 7 days old as follows:
find . -type f -atime 7 -print
#Print all the files that are having access time older than 7 days as follows:
find . -type f -atime +1 -print
#In order to print all the files that are having access time older than seven minutes, use the following command:
find . -type f -amin +7 -print
#files that are having a modification time greater than that of the modification time of a given file.txt file as follows:
find . -type f -newer bASH19.sh -print
find . -type f -newer file.txt -print

# Files having size greater than 2 kilobytes
find . -type f -size +2k
# Files having size less than 2 kilobytes
find . -type f -size -2k
# Files having size 2 kilobytes
find . -type f -size 2k
b – 512 byte blocks
c – bytes
w – two byte words
k – Kilobyte
M – Megabyte
G – Gigabyte
#================================================================
find . -type f -name "*.swp" -delete
#================================================================
# Print files having permission 644
find . -type f -perm 644 -print
#================================================================
find . -type f -user red -print
#================================================================
# find . -type f –user root –exec chown slynux {} \;
In this command, {} is a special string used with the –exec option. For each file match, {}
will be replaced with the file name in place for –exec . For example, if the find command
finds two files test1.txt and test2.txt with owner slynux, the find command will perform:
#================================================================

Another usage example is to concatenate all the C program files in a given directory and write
it to a single file all_c_files.txt . We can use find to match all the C files recursively and
use the cat command with the -exec flag as follows:

find . -type f -name *.c -exec cat {} \;>all_c_files.txt


find . -type f -amin +10 -name *.c -exec cp {} OLD \;
find . -type f -name *.c -exec cp {} OLD \;
ls -al OLD/

find . -type f -size 2k
find .  -name "*.vim"  -type f -size 2k
mkdir OLD
ls -al OLD/
find . -type f -size 2k -name *.vim -exec cp {} OLD \;
ls -al OLD/

#===SUPER=============================================================
rm OLD
mkdir OLD
ls -al OLD/
find .  -name "*.vim"  -type f -size 2k -exec cp {} OLD \;
ls -al OLD/
#================================================================
-exec with multiple commands
We cannot use multiple commands along with the –exec parameter. It
accepts only a single command, but we can use a trick. Write multiple
commands in a shell script (for example, commands.sh) and use it
with –exec as follows:
–exec ./commands.sh {} \;
#================================================================

find . -type f -name "*.txt" -exec printf "Text file: %s\n" {} \;

#================================================================
The above command prints the name (path) of all the files that are not from the .git directories.
find ~/git/bTest/ \( -name ".git" -prune \) -o \( -type f -print \)

#===3Columns3Columns3Columns========================================================
cat FILE1 | xargs -n 3

echo "splitXsplitXsplitXsplit" | xargs -d X
echo "splitXsplitXsplitXsplit" | xargs -d X -n 2

#===Find-and-Remove===============================================
###find . -type f -name "*.txt" -print0 | xargs -0 rm -f
This removes all .txt files. xargs -0 interprets that the delimiting character is \0 .

#===CountLinesC-Files===============================================
find ~/git/bTest/DODO10/ -type f -name "*.c" -print0 | xargs -0 wc -l

echo "HELLO WHO IS THIS" | tr 'A-Z' 'a-z'


#===Encrypt-and-Decrypt===============================================
echo 12345 | tr '0-9' '9876543210'
echo 87654 | tr '9876543210' '0-9'

echo "tr came, tr saw, tr conquered." | tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz' 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'
echo ge pnzr, ge fnj, ge pbadhrerq. | tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz' 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'

echo "Hello 123 world 456" | tr -d '0-9'
echo hello 1 char 2 next 4 | tr -d -c '0-9 \n'
