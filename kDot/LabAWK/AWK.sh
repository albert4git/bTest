#! /bin/sh
#
# AWK.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#

ls -l | awk '$1 !~ /total/ { printf "%-32s %s\n",$9,$5 ; }'

vim -E -s dummy.out << EOF
:%s/old/new/g
:%s/old2/new2/g
:%s/old3/new3/g
:update
:quit
EOF

find /home/red/ -name '*alpha*' -print
find / -type d -print
find / -mtime +90 -print
find / -size +2000 -print
find / -name allppha -exec chmod a+r {} \;

If you have thousands of files to process, xargs (covered in the next section)
is more efficient than -exec. For example,

find / -name ccoorre -print | xargs rm -f

This command also deletes all core files much more quickly and with less
overhead than the -exec option, which calls rm once for each file.

# :::ls in 3 columns 
ls | xargs -n 2 echo :::
ls | grep '^abc' | xargs -n 2 echo ::

cat filelist | xargs rm

#You can specify a logical “or” condition using -o:
find / \( -size +50 -o -mtime -3 \) -print

#You can use the ! sign to select files that do not match the given option:
find /dev ! \( -type b -o -type c -o type d \) -print


list of signals is to use the -l option of the kill command. For example on a
Solaris system the output is:

$ kill -l
 1) SIGHUP       2) SIGINT       3) SIGQUIT      4) SIGILL
 5) SIGTRAP      6) SIGABRT      7) SIGEMT       8) SIGFPE
 9) SIGKILL     10) SIGBUS      11) SIGSEGV     12) SIGSYS
13) SIGPIPE     14) SIGALRM     15) SIGTERM     16) SIGUSR1
17) SIGUSR2     18) SIGCHLD     19) SIGPWR      20) SIGWINCH
21) SIGURG      22) SIGIO       23) SIGSTOP     24) SIGTSTP
25) SIGCONT     26) SIGTTIN     27) SIGTTOU     28) SIGVTALRM
29) SIGPROF     30) SIGXCPU     31) SIGXFSZ     32) SIGWAITING
33) SIGLWP      34) SIGFREEZE   35) SIGTHAW     36) SIGCANCEL
37) SIGLOST



QUIT and INT

If the default kill command cannot terminate a process, you can try to send the
        process either a QUIT or an INT (interrupt) signal as follows:

$ kill -s SIGQUIT 1001
$ kill -s SIGINT 1001
$ kill -9 1001

The current directory contained too many filenames STARting with abc
ls | grep '^abc' | xargs -n

# DISK FREE
df -kh /



To determine where this error occurs, it is best to run the entire script in shell tracing mode:

$ /bin/sh -x ./buggy3.sh

The output is similar to the following:

+ YesNo Make backup
+ echo Make backup (y/n)? \c
+ /bin/echo Make backup (y/n)? \c
Make backup (y/n)? + read RESPONSE


•  The script is run with a particular command line option (commonly -d or -x). 
•  The script is run with an environment variable set to true (commonly DEBUG=true or TRACE=true). 

The output includes shell tracing if the same script executes in either of the following methods:

$ DEBUG=true /bin/sh ./buggy3.sh
$ DEBUG=true ./buggy3.sh


Miscellaneous Command Summaries

Here is some helpful information about several commands often used in shell programming.

echo
    display arguments to standard output 

\b 	Backspace
\c 	Suppress trailing newline
\f 	Formfeed
\n 	Newline
\r 	Carriage return
\t 	Tab
\\ 	Backslash
\0nn 	Character whose ASCII value is octal nn

grep
    display lines that contain the given pattern 

-i 	ignore upper versus lower case
-l 	list only filenames that contain a match, not the matching lines
-n 	include the file line number with each matching line displayed
-v 	reverse the test, which means ignore lines that contain the pattern

printf
    display formatted text output, for example: 

printf "text %[-]m.nx" arguments

- 	Left justify (optional)
m 	Minimum field length
n 	Maximum field length for string; number of characters to the right of decimal for floating point.
x 	Type of argument
s 	string
c 	character value
d 	decimal integer value
x 	hexadecimal value
o 	octal value
e 	exponential floating point value
f 	fixed floating point value
g 	general floating point value

sort
   display lines in sorted order 

-b 	ignore leading blanks
-d 	ignore leading punctuation
-f 	fold upper- and lowercase together
-n 	sort leading numbers by magnitude
-r 	sort in reverse order
+n 	ignore the first n fields when sorting
Regular Expression Wildcards

grep, fgrep, egrep, sed, vi, perl, and awk allow regular expression wildcards in search patterns.
Limited Regular Expression Wildcards

All regular expression patterns can include these wildcards:
^pattern 	only matches if pattern is at start of line
pattern$ 	only matches if pattern is at end of line
. 	matches exactly 1 of any character
[list] 	matches exactly 1 of any character in list
[^list] 	matches exactly 1 of any character not in list
* 	matches 0 or more repetitions of previous element (char or expression)
.* 	matches 0 or more of any characters
Extended Regular Expression Wildcards

These are additional regular expression wildcards that are only supported in some commands:
\{n\} 	matches n repetitions of previous element
\{n,\} 	matches n or more repetitions of previous element
\{n,m\} 	matches at least n but not more than m reps of previous element
? 	matches 0 or 1 occurrences of previous element
+ 	matches 1 or more occurrences of previous element 
