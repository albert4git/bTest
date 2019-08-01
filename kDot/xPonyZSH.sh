#! /bin/sh
#
# xPonyZSH.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#



% setopt extendedglob
% rm ../debianpackage(.)   # remove files only
% ls -d *(/)               # list directories only
% ls /etc/*(@)             # list symlinks only
% ls -l *.(png|jpg|gif)    # list pictures only
% ls *(*)                  # list executables only
% ls /etc/**/zsh           # which directories contain 'zsh'?
% ls **/*(-@)              # list dangling symlinks ('**' recurses down directory trees)
% ls foo*~*bar*            # match everything that starts with foo but doesn't contain bar

# remove leading zeros
  $ var=00004402
  $ echo ${var##0#}
# or
  $ var=00004402
  $ echo ${var/(#m)<->/$((MATCH))}

# sorting file's names in ascending order according to the  last two numerical fields of the files
# names.  And then cat these files  into one based on the ascending order depicted here.
  $ find . -type f -regex ".*[.][0-9]+[.][0-9]+$" -print0 |sort -Vz | xargs -r0 cat > myfile
  # or - with zsh -
  $ cat ./*.<->.<->(n)

# random numbers
  $ echo $[${RANDOM}%1000]     # random between 0-999
  $ echo $[${RANDOM}%11+10]    # random between 10-20
  $ echo ${(l:3::0:)${RANDOM}} # N digits long (3 digits)

# simplify and if then else
  $ if [[ "$LOGNAME" != davidr ]] ; then
         cd /o/inetpub/wwwdev/www.some.co.uk/epsystem/epadmin
    else
        cd /c/inetpub/wwwdev/www.some.co.uk/epsystem/epadmin
    fi
  $ cd ${${${LOGNAME:#davidr}:+/o}:-/c}/inetpub/wwwdev/www.some.co.uk/epsystem/epadmin
  or
  $ cd /$([[ "$LOGNAME" != davidr ]] && echo o || echo c)/inetpub/wwdev/blabla

# Show newest directory
  $ ls -ld *(/om[1])

# reverse a word
  $ echo "${(j::)${(@Oa)${(s::):-hello}}}"

# random array element
  $ FILES=( .../files/* )
  $ foobar feh $FILES[$RANDOM%$#FILES+1]

# cat first line in all files in this dir
  $ for file (*(ND-.)) IFS= read -re < $file

# test if a parameter is numeric
  $ if [[ $1 == <-> ]] ; then
	 echo numeric
     else
         echo non-numeric
     fi

# Show me all the .c files for which there doesn't exist a .o file.
  $ c=(*.c) o=(*.o(N)) eval 'ls ${${c:#(${~${(j:|:)${o:r}}}).c}:?done}'

# All files in /var/ that are not owned by root
  $ ls -ld /var/*(^u:root)

# All files for which the owner hat read and execute permissions
  $ echo *(f:u+rx:)

# The same, but also others dont have execute permissions
  $ echo *(f:u+rx,o-x:)

# brace expansion - example
  $ X=(A B C)
  $ Y=(+ -)
  $ print -r -- $^X.$^Y
  A.+ A.- B.+ B.- C.+ C.-

# Fetch the newest file containing the string 'fgractg*.log' in the filename and contains the string
# 'ORA-' in it
  $ file=(fgractg*.log(Nm0om[1])) 
  $ (($#file)) && grep -l ORA- $file
  # without Zsh
  $ files=$( find . -name . -o -prune -name 'fgractg*>log' -mtime 0 -print )
  > if [ -n "$files" ]; then 
  >    IFS=' 
  > '
  > set -f 
  > file=$(ls -td $files | head -1) 
  > grep -l ORA- "$file" 
  > fi

# keep specified number of child processes running until entire task finished
  $ zsh -c 'sleep 1 & sleep 3 & sleep 2& print -rl -- $jobtexts'

# Remove zero length and .bak files in a directory
  $ rm -i *(.L0) *.bak(.)

# print out files that dont have extensions
  $ printf '%s\n' ^?*.*
  $ printf '%s\n' ^?*.[^.]*(D)
  $ ls -d -- ^?*.*(D) 

# Finding files which does not contain a specific string
  $ print -rl file* | comm -2 -3 - <(grep -l string file*)'
  $ for f (file*(N)) grep -q string $f || print -r $f'

# Show/Check whether a option is set or not. It works both with $options as 
# with $builtins
  $ echo $options[correct]
  off
  $ $options[zle]
  on

# Count the number of directories on the stack
  $ print $((${${(z)${(f)"$(dirs -v)"}[-1]}[1]} + 1)) # or
  $ dirs -v | awk '{n=$1}END{print n+1}'

# Matching all files which do not have a dot in filename
  $ ls *~*.*(.)

# Show only the ip-address from ``ifconfig device''
  $ print ${${$(LC_ALL=C /sbin/ifconfig eth0)[7]}:gs/addr://} # ifconfig from net-tools (Linux)
  $ print ${$(/sbin/ifconfig tun0)[6]} # ifconfig from 4.2BSD {Free,Net,Open}BSD

# Ping all the IP addresses in a couple of class C's or all hosts into /etc/hosts
  $ for i in {1..254}; do ping -c 1 192.168.13.$i; done
  or
  $ I=1; while ( [[ $I -le 255 ]] ) ; do ping -1 2 150.150.150.$I; let I++; done
  or
  $ for i in $(sed 's/#.*//' > /etc/hosts | awk '{print $2}')
  : do
  :    echo "Trying $i ... "
  :    ping -c 1 $i ;
  :    echo '============================='
  : done

# load all available modules at startup
  $ typeset -U m
  $ m=()
  $ for md ($module_path) m=($m $md/**/*(*e:'REPLY=${REPLY#$md/}'::r))
  $ zmodload -i $m

# Rename all files within a directory such that their names get a numeral prefix in the default sort order.
  $ i=1; for j in *; do mv $j $i.$j; ((i++)); done
  $ i=1; for f in *; do mv $f $(echo $i| awk '{ printf("%03d", $0)}').$f; ((i++)); done
  $ integer i=0; for f in *; do mv $f $[i+=1].$f; done

# Find (and print) all symbolic links without a target within the current dirtree.
  $ $ file **/*(D@) | fgrep broken
  $ for i in **/*(D@); [[ -f $i || -d $i ]] || echo $i
  $ echo **/*(@-^./=%p)
  $ print -l **/*(-@)

# List all plain files that do not have extensions listed in `fignore'
  $ ls **/*~*(${~${(j/|/)fignore}})(.)
  # see above, but now omit executables
  $ ls **/*~*(${~${(j/|/)fignore}})(.^*)

# Print out files that dont have extensions (require setopt extendedglob dotglob)
  $ printf '%s\n' ^?*.*

# List files in reverse order sorted by name
  $ print -rl -- *(On)
  or
  $ print -rl -- *(^on)

# Synonymic to ``ps ax | awk '{print $1}'''
  $ print -l /proc/*/cwd(:h:t:s/self//)

# Get the PID of a process (without ``ps'', ``sed'', ``pgrep'', .. (under Linux)
  $ pid2 () {
  >   local i
  >   for i in /proc/<->/stat
  > do
  >   [[ "$(< $i)" = *\((${(j:|:)~@})\)* ]] && echo $i:h:t
  > done
  > }

# for X in 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y'; do ...
  $ for (( i = 36#n; i <= 36#y; i++ )); do
  >   print ${$(([##36]i)):l}
  > done
# or in combination with ``dc''
  $ print {$((##n))..$((##y))}P\ 10P | dc
# or with ``eval''
  $ eval print '${$(([##36]'{$((36#n))..$((36#y))}')):l}'

# foreach in one line of shell
  $ for f (*) print -r -- $f

# copy a directory recursively without data/files
  $ dirs=(**/*(/))
  $ cd -- $dest_root
  $ mkdir -p -- $dirs
# or without zsh
  $ find . -type d -exec env d="$dest_root" sh -c ' exec mkdir -p -- "$d/$1"' '{}' '{}' \;

# If `foo=23'', then print with 10 digit with leading '0'.
  $ foo=23
  $ print ${(r:10::0:)foo}

# find the name of all the files in their home directory that have more than 20 characters in their file names
  print -rl $HOME/${(l:20::?:)~:-}*

# Save arrays
  $ print -r -- ${(qq)m} > $nameoffile      # save it
  $ eval "m=($(cat -- $nameoffile)"            # or use
  $ m=("${(@Q)${(z)"$(cat -- $nameoffile)"}}") # to restore it

# get a "ls -l" on all the files in the tree that are younger than a specified age (e.g
# "ls -l" all the files in the tree that where modified in the last 2 days)
  $ ls -tld **/*(m-2)
# This will give you a listing 1 file perl line (not à la ls -R).
# Think of an easy way to have a "ls -R" style output with
# only files newer than 2 day old.
  $ for d (. ./**/*(/)) {
  >   print -r -- $'\n'${d}:
  >   cd $d && {
  >       l=(*(Nm-2))
  >       (($#l)) && ls -ltd -- $l
  >       cd ~-
  >   }
  > }
# If you also want directories to be included even if their mtime
# is more than 2 days old:
  $ for d (. ./**/*(/)) {
  >   print -r -- $'\n'${d}:
  >   cd $d && {
  >      l=(*(N/,m-2))
  >      (($#l)) && ls -ltd -- $l
  >      cd ~-
  >   }
  > }
# And if you want only the directories with mtime < 2 days to be listed:
  $ for d (. ./**/*(N/m-2)) {
  >   print -r -- $'\n'${d}:
  >   cd $d && {
  >      l=(*(Nm-2))
  >      (($#l)) && ls -ltd -- $l
  >      cd ~-
  >   }
  > }

# print 42 ``-''
  $ echo ${(l:42::-:)}
# or use ``$COLUMS''
  $ echo ${(l:$COLUMNS::-:)}
# and now with colors (require autoload colors ;colors)
  $ echo "$bg[red]$fg[black]${(l:42::-:)}"

# Redirect STDERR to a command like xless without redirecting  STDOUT as well.
  $ foo 2>>(xless)
# but this executes the command asynchronously. To do it synchronously:
  $ { { foo 1>&3 } 2>&1 | xless } 3>&1

# Rename all MP3-Files from name with spaces.mp3 to Name With Spaces.mp3
  $ for i in *.mp3; do
  >     mv $i ${${(C)i}:s/Mp3/mp3/}
  > done

# Match file names containing only digits and ending with .xml (requiresetopt kshglob)
  $ ls -l [0-9]##.xml
  $ ls -l <0->.xml

# Remove all "non txt" files
  $ rm ./^*.txt

# Move 200 files from a directory into another
  $ mv -- *([1,200]) /another/Dir

# Convert images (foo.gif => foo.png):
  $ for i in **/*.gif; convert $i $i:r.png

# convert a collection of mp3 files to wave or cdr (e.g. file.wav -> file.mp3)
  $ for i (./*.mp3){mpg321 --w - $i > ${i:r}.wav}

# Download with LaTeX2HTML  created Files (for example the ZSH-Guide):
  $ for f in http://zsh.sunsite.dk/Guide/zshguide{,{01..08}}.html; do
  >     lynx -source $f >${f:t}
  > done

# Move all files in dir1 and dir2 that have line counts greater than 10 to another directory say "/more10"
  $ mv dir[12]/**/*.cr(-.e{'((`wc -l < $REPLY` > 10))'}) /more10

# Make with dpkg a master-list of everyfile that it has installed
  $ diff <(find / | sort) <(cat /var/lib/dpkg/info/*.list | sort)

# Replace this fucking Escape-Sequences:
  $ autoload colors ; colors
  $ print "$bg[cyan]$fg[blue]You are a idiot" >> /dev/pts/3

# Get ASCII value of a character
  $ char=N ; print $((#char))

# Filename "Erweiterung"
# Note: The (N) says to use the nullglob option for this particular glob pattern.
  $ for i in *.o(N); do
  >     rm $i
  > done

# Rename files; i. e. FOO to foo and bar to BAR
  $ for i in *(.); mv $i ${i:l} # `FOO' to `foo'
  $ for i in *(.); mv $i ${i:u} # `bar to `BAR'

# Show all suid-files in $PATH
  $ ls -latg ${(s.:.)PATH} | grep '^...s'
# or more complex ;)
  $ print -l ${^path}/*(Ns,S)
# or show only executables with a user given pattern
  $ print -l ${^path}/*vim*(*N)

# gzip files when containing a certain string
  $ gzip ${(ps:\0:)"$(grep -lZ foobar ./*.txt(.))"}

# A small  one-liner, that reads from stdin and prints to stdout the first unique line
# i. e. does not print lines that have been printed before (this is similar to the unique 
# command, but unique can only handle adjacent lines).
  $ IFS=$'\n\n'; print -rl -- ${(Oau)${(Oa)$(cat file;echo .)[1,-2]}}

# Lists every executable in PATH
  $ print -l ${^path}/*(-*N)

# Match all .c files in all subdirectories, _except_ any SCCS subdirectories?
  $ ls **/*.c~(*/)#SCCS/*

# List all `README' - files case-insensitive with max. one typo
  $ ls **/*(#ia2)readme

# case insensitive checking for variables
  $ if [[ $OSTYPE == (#i)LINUX*(#I) ]]; then
  >    echo "Penguin on board."
  > else
  >    echo "Not a Linux."
  > fi

#==========================================================================
# find all directories, list their contents and output the first item in the above list. 
  $ print -rl /home/me/**/*(D/e{'reply=($REPLY/*(N[-1]:t))'})

# List all files older than 15mins
  $ ls -ldrt -- *(mm+15)
# Just regular files
  $ ls -ldrt -- *(.mm+15)

# List the unbroken sysmlinks under a directory.
  $ ls -ld /my/path/**/*(D@-^@)

# the age of the pointed to file for symlinks
  $ ls -Lldrt -- *(-mm+15)

# Use find(1) to find all directories except the ".svn" ones, then use grep on all *.c/*.h/*.S
# files in each directory.
  $ setopt extendedglob
  $ grep pattern (^.svn/)#*.[xhS](.)  # skips dot files and dot directories
# or - without Zsh
  $ find . -type d ! -name .svn | sed 's/./\\&/g;s|.*|grep whatever &/*.[xhS]|' | sh

# Quote from Usenet
# > I need to write a script that searches through a folder on my Linux
# > home server and copies only files where the width is greater than the
# > height, but it also needs to flatten the directory structure and
# > rename files as it copies.  So the first picture found may be several
# > directories deep in the source but this should be copied to the root
# > of the SD card and named say 00000001.JPG and the next file found
# > where width > height should be copied and renamed 00000002.JPG.
width_greater_than_height() {
  local w h
  identify -format '%w %h' ${1-$REPLY} |
    read w h && ((w > h))
}
typeset -Z8 i=0
setopt extendedglob
for f (**/*.(#i)jp(e|)g(D.+width_greater_than_height)) {
  ((i++))
  cp -- $f /path/to/dest/$i.JPG
}

# Search for `README' in all Subdirectories
  $ ls -l **/README

# find directories that contain both "index.php" and "index.html", or in general, directories
# that contain more than one file matching "index.*"
  $ ls **/*(D/e:'[[ -e $REPLY/index.php && -e $REPLY/index.html ]]':)
  # or
  $ ls **/*(D/e:'l=($REPLY/index.*(N)); (( $#l >= 2 ))':)

# Find command to search for directory name instead of basename
  $ print -rl /**/*~^*/path(|/*)
  # or - without Zsh
  $ find / | grep -e /path/ -e '/path$'

# Print he path of the directories holding the ten biggest C regular files in the current 
# directory and subdirectories. 
  $ print -rl -- **/*.c(D.OL[1,10]:h) | sort -u 

# Find files with size == 0 and send a mail
  $ files=(**/*(ND.L0m+0m-2)) 
  > (( $#files > 0 )) && print -rl -- $files | mailx -s "empty files" foo@bar.tdl

# recursive chmod
  $ chmod 700 **/(.) # Only files
  $ chmod 700 **/(/) # Only directories

# print out all of the files in that directory in 2 columns
  $ print -rC2 -- ${1:[...]}/*(D:t)
#            ^- number ob columns
# or - if you feel concerned about special characters - use
  $ list=(${1:[...]}/*(ND:t))
  $ (($#list)) && print -rC2 -- ${(V)list}

# Search all files in /home/*/*-mail/ with a setting ``chmod -s'' flag (recursive, include 
# dotfiles) remove the setgid/setuid flag and print a message
  $ chmod -s /home/*/*-mail(DNs,S) /home/*/*-mail/**/*(DNs,S))
# or with a small script
  $ for file (/home/*/*-mail(DNs,S) /home/*/*-mail/**/*(DNs,S)) {
  >    print -r -- $file
  >    chmod -s $file && print -r fixed $file
  > }
# or use ``zargs'' (require autoload zargs) prevent the arg list too long error
  $ zargs /home/*/*-mail(DNs,S) /home/*/*-mail/**/*(DNs,S)) -- chmod -s

# List files beginning at `foo23' upwards (foo23, foo24, foo25, ..)
  $ ls -l foo<23->

# get all files that begin with the date strings from June 4 through June 9 of 2004
  $ ls -l 200406{04..10}*(N)
# or if they are of the form 200406XX (require ``setopt extended_glob''
  $ ls -l 200306<4-10>.*

# remove spaces from filenames
  $ for a in ./**/*\ *(Dod); do mv $a ${a:h}/${a:t:gs/ /_}; done

# Show only all *.c and *.h - Files
  $ ls -l *.(c|h)

# Show only all *.c - files and ignore `foo.c'
  $ ls *.c~foo.c

# show data to *really* binary format
  $ zsh -ec 'while {} {printf %.8x $n;repeat 8 \
  > {read -ku0 a printf \ %.8d $(([##2]#a))};print;((n+=8))}' < binary

# Show only world-readable files
  $ ls -l *(R)

# List files in the current directory are not writable by the owner
  $ print -l ~/*(ND.^w)

# find and delete the files which are older than a given parameter (seconds/minutes/hours)
  $ rm -f /Dir/**/*(.mh+3)   # deletes all regular file in /Dir that are older than 3 hours
  $ rm -f /Dir/**/*(@mm+3)   # deletes all symlinks in /Dir that are older than 3 minutes
  $ rm -f /Dir/**/*(ms+30^/) # deletes all non dirs in /Dir that are older than 30 seconds
  $ rm ./**/*(.Dmh+1,.DL0)   # deletes all folders, sub-folders and files older than one hour
  $ rm -f **/*(mh+6)         # deletes all files more than 6 hours old 
  $ rm ./*(Om[1,-11])        # removes all files but the ten newer ones (delete all but last 10 files in a directory)
 Note: If you get a arg list too long, you use the builtin rm. For example:
  $ zmodload zsh/files ; rm -f **/*(mh+6)
  or use the zargs function:
  $ autoload zargs ; zargs **/*(mh+6) -- rm -f

# A User's Guide to the Z-Shell /5.9: Filename Generation and Pattern Matching
# find all files in all subdirectories, searching recursively, which have a given 
# name, case insensitive, are at least 50 KB large, no more than a week old and 
# owned by the root user, and allowing up to a single error in the spelling of 
# the name. In fact, the required expression looks like this:
  $ ls **/(#ia1)name(LK+50mw-1u0)

# Change the UID from 102 to 666
  $ chown 666 **/*(u102)

# List all files which have not been updated since last 10 hours
  $ print -rl -- *(Dmh+10^/)

# delete only the oldest file in a directory
  $ rm ./*filename*(Om[1])

# Sort the output from `ls -l' by file size
  $ ls -fld *(OL)

# find most recent file in a directory
  $ setopt dotglob ; print directory/**/*(om[1])

# Show only empty files which nor `group' or `world writable'
  $ ls *(L0f.go-w.)

# find - and list - the ten newest files in directories and subdirs (recursive)
  $ print -rl -- **/*(Dom[1,10])

# Print only 5 lines by "ls" command (like ``ls -laS | head -n 5'')
  $ ls -fl *(DOL[1,5])

# display the 5-10 last modified files
  $ print -rl -- /path/to/dir/**/*(D.om[5,10])

# find all files without a valid owner
  $ chmod someuser /**/*(D^u:${(j.:u:.)${(f)"$(</etc/passwd)"}%%:*}:)

# find all the empty directories in a tree
  $ for f in ***/*(/l2); do foo=($f/*(N)); [[ -z $foo ]] && print $f; done
# Note:Since Zsh 4.2.1(?) the glob qualifier F indicates a non-empty directory.
  Hence *(F) indicates all subdirectories with entries, *(/^F) means all subdirectories with no
  entries.
  $ ls -ld *(/^F)

# remove empty directories afterwards
  $ rmdir ./**/*(/od) 2> /dev/null

# Show only files are owned from group `users'
  $ ls -l *(G[users])
#==========================================================================

#==========================================================================
Note: ``-n'' means no execution (just print what would happen)

# rename file contents with its directory name as a prefix
  $ zmv '(*)/(*.txt)' '${1}_$2'

# rename a section of a filename, i. e. example.1.{txt,conf,db} or 12345.1.{wav,ogg,mp3} and
# change the 1 to a 2 in the filename while preserving the rest of it. 
  $ zmv -n '(*.)(<->)(.[^.]#)' '$1$(($2+1))$3' # would rename x.0001.y to x.2.y.
  $ zmv -n '(*.0#)(<->)(.[^.]#)' '$1$(($2+1))$3'

# Rename files to lower case
  $ zmv '*' '${(L)f}'

# serially all files (foo.foo > 1.foo, fnord.foo > 2.foo, ..)
  $ autoload zmv
  $ ls *
  1.c  asd.foo  bla.foo  fnord.foo  foo.fnord  foo.foo
  $ c=1 zmv '*.foo' '$((c++)).foo'
  $ ls *
  1.c  1.foo  2.foo  3.foo  4.foo  foo.fnord

# Rename "file.with.many.dots.txt" by substituting dots (exept for the last 
# one!) with a space
  $ touch {1..20}-file.with.many.dots.txt
  $ zmv '(*.*)(.*)' '${1//./ }$2'

# Remove the first 4 chars from a filename
  $ zmv -n '*' '$f[5,-1]' # NOTE: The "5" is NOT a mistake in writing!

# Rename names of all files under the current Dir to lower case, but keep Dir names as-is. 
  $ zmv -Qv '(**/)(*)(.D)' '$1${(L)2}' 

# replace all 4th character, which is "1",  with "2" and so on
  $ autoload -U zmv
  $ zmv '(???)1(???[1-4].txt)' '${1}2${2}'

# Remove the first 15 characters from a string
  $ touch 111111111111111{a-z}
  $ autoload zmv
  $ zmv '*' '$f[16,-1]'

# Replace spaces (any number of them) with a single dash in file names
  $ autload zmv
  $ zmv -n '(**/)(* *)' '$1${2//( #-## #| ##)/-}' 
  # or - with Bash
  $ find . -depth -name '* *' -exec bash -c ' 
  > shopt -s extglob 
  > file=$1
  > dir=${file%/*} 
  > name=${file##*/}
  > newname=${name//*([ -]) *([ -])/-}
  > mv -i -- "$file" "$Dir/$newname"' {} {} \; 

# Clean up file names and remove special characters
  $ autoload zmv 
  $ zmv -n '(**/)(*)' '$1${2//[^A-Za-z0-9._]/_}' 

# Add *.py to a bunch of python scripts in a directory (some of them end in *.py and give them
# all a proper extension
  $ autoload zmv 
  $ zmv -n '(**/)(con*)(#qe,file $REPLY | grep "python script",)' '$1$2.py'

# lowercase all extensions (i. e. *.JPG) incl. subfolders
  $ autoload zmv 
  $ zmv '(**/)(*).(#i)jpg' '$1$2.jpg'
  # Or - without Zsh
  $ find Dir -name '*.[jJ][pP][gG]' -print | while read f
  > do
  >      case $f in
  >       *.jpg) ;
  >       *) mv "$f" "${f%.*}.jpg" ;
  >       esac
  > done

# remove leading zeros from file extension
  $ autoload zmv 
  $ ls
  filename.001  filename.003  filename.005  filename.007  filename.009
  filename.002  filename.004  filename.006  filename.008  filename.010
  $ zmv '(filename.)0##(?*)' '$1$2'
  $ ls
  filename.1  filename.10  filename.2  filename.3  filename.4  filename.5  filename.6 ...

# renumber files. 
  $ autoload zmv 
  $ ls *
  foo_10.jpg  foo_2.jpg  foo_3.jpg  foo_4.jpg  foo_5.jpg  foo_6.jpg  foo_7.jpg  foo_8.jpg  foo_9.jpg
  $ zmv -fQ 'foo_(<0->).jpg(.nOn)' 'foo_$(($1 + 1)).jpg'
  $ ls *
  foo_10.jpg  foo_11.jpg  foo_3.jpg  foo_4.jpg  foo_5.jpg  foo_6.jpg  foo_7.jpg  foo_8.jpg foo_9.jpg

# adding leading zeros to a filename (1.jpg -> 001.jpg, ..  
  $ autoload zmv 
  $ zmv '(<1->).jpg' '${(l:3::0:)1}.jpg'

# See above, but now only files with a filename >= 30 chars
  $ autoload zmv 
  $ c=1 zmv "${(l:30-4::?:)}*.foo" '$((c++)).foo'

# Replace spaces in filenames with a underline
  $ autoload zmv 
  $ zmv '* *' '$f:gs/ /_'

# Change the suffix from *.sh to *.pl
  $ autoload zmv 
  $ zmv -W '*.sh' '*.pl'

# Add a "".txt" extension to all the files within ${HOME}
  # ``-.'' is to only rename regular files or symlinks to regular files,
  # ``D'' is to also rename hidden files (dotfiles))
  $ autoload zmv 
  $ zmv -Q '/home/**/*(D-.)' '$f.txt'
  # Or to only rename files that don't have an extension:
  $ zmv -Q '/home/**/^?*.*(D-.)' '$f.txt'

# Recursively change filenames with characters ? [ ] / = + < > ; : " , - *
  $ autoload zmv 
  $ chars='[][?=+<>;",*-]'
  $ zmv '(**/)(*)' '$1${2//$~chars/%}'

# Removing single quote from filenames (recursively)
  $ autoload zmv 
  $ zmv -Q "(**/)(*'*)(D)" "\$1\${2//'/}"

# When a new file arrives (named file.txt) rename all files in order to get (e. g.
# file119.txt becomes file120.txt, file118.txt becomes file119.txt and so on ending 
# with file.txt becoming file1.txt
  $ autoload zmv 
  $ zmv -fQ 'file([0-9]##).txt(On)' 'file$(($1 + 1)).txt'

# lowercase/uppercase all files/directories
  $ autoload zmv 
  $ zmv '(*)' '${(L)1}' # lowercase
  $ zmv '(*)' '${(U)1}' # uppercase

# Remove the suffix *.c from all C-Files
  $ autoload zmv 
  $ zmv '(*).c' '$1'

# Uppercase only the first letter of all *.mp3 - files
  $ autoload zmv 
  $ zmv '([a-z])(*).mp3' '${(C)1}$2.mp3'

# Copy the target `README' in same directory as each `Makefile'
  $ autoload zmv 
  $ zmv -C '(**/)Makefile' '${1}README'

# Removing single quote from filenames (recursively)
  $ autoload zmv 
  $ zmv -Q "(**/)(*'*)(D)" "\$1\${2//'/}"

# Rename pic1.jpg, pic2.jpg, .. to pic0001.jpg, pic0002.jpg, ..
  $ autoload zmv 
  $ zmv 'pic(*).jpg' 'pic${(l:4::0:)1}.jpg'
  $ zmv '(**/)pic(*).jpg' '$1/pic${(l:4::0:)2}.jpg' # recursively

#==========================================================================
# Append `exit 1' at the end of all *.sh - files
  $ echo "exit 1" >> *.sh

# adding files to foobar.tar.gz
  $ eval set =(gunzip < foobar.tar.gz) '
     tar rf $1 additional.txt &&gzip < $1 > foobar.tar.gz'

# Redirect output to a file AND display on screen
  $ foobar >&1 > file1 > file2 > ..

# pipe single output to multiple inputs
  $ zcat foobar.Z >> (gzip -9 > file1.gz) \
		  >> (bzip2 -9 > file1.bz2) \
		  >> (acb --best > file1.acb)

# Append /etc/services at the end of file `foo' and `bar'
  $ cat /etc/services >> foo >> bar

# Pipe STDERR
  $ echo An error >&2 2>&1 | sed -e 's/A/I/'

# send standard output of one process to standard input of several processes in the pipeline
  $ setopt multios
  $ process1 > >(process1) > >(process2)

# initializing a variable and simultaneously keeping terminal output 
  $ setopt multios
  $ { a=$(command >&1 >& 3 3 > &- 2>&1);} 3>&1 

# redirect stderr two times
  $ setopt multios ; program 2> file2 > file1 2>&1

# Duplicating stdout and stderr to a logfile
  $ exec 3>&1 > logfile 2>&2 2>&1 >&3 3>&-

# redirect stderr (only) to a file and to orig. stderr:
  $ command 2>&2 2>stderr
# redirect stderr and stdout to separate files and both to orig. stdout:
  $ command 2>&1 1>&1 2>stderr 1>stdout
# redirect stderr and stdout to separate files and stdout to orig. stdout AND stderr to orig. stderr:
  $ command 2>&2 1>&1 2>stderr 1>stdout

# More fun with STDERR ;)
  $ ./my-script.sh 2> >(grep -v moron >error.log) | process-output > output.log
  $  echo "Thats STDOUT" >>(sed 's/stdout/another example/' > foobar)

#==========================================================================
# Remove a trailing pathname component, leaving the head. This works like `dirname'.
  $ echo =ls(:h)
  /bin

# Eliminate the duplicated elements of an array and keep the remain emements order appeared in
# the original array. 
  $ a=( a a f 1 3 b b 3 5 4 4 ) 
  $ a=("${(u@)a") 

# Remove all leading pathname components, leaving the tail. This works like `basename'.
  $ echo =ls(:t)
  ls

# Remove the suffix from each file (*.sh in this example)
   $f:e is $f file extension
   :h --> head (dirname)
   :t --> tail (basename)
   :r --> rest (extension removed) 
  $ for f (*.sh) mv $f $f:r

# Remove a filename extension of the form `.xxx', leaving the root name.
  $ echo $PWD
  /usr/src/linux
  $ echo $PWD:t
  linux

# Remove all but the extension.
  $ foo=23.42
  $ echo $foo
  23.42
  $ echo $foo:e
  42

# Print the new command but do not execute it. Only works with history expansion.
  $ echo =ls(:h)
  /bin
  $ !echo:p
  $ echo =ls(:h)

# Quote the substituted words, escaping further substitutions.
  $ bar="23'42"
  $ echo $bar
  23'42
  $ echo $bar:q
  23\'42

# Convert the words to all lowercase.
  $ bar=FOOBAR
  $ echo $bar
  FOOBAR
  $ echo $bar:l
  foobar

# Convert the words to all uppercase.
  $ bar=foobar
  $ echo $bar
  foobar
  $ echo $bar:u
  FOOBAR

# convert 1st char of a word to uppercase
  $ foo="one two three four"
  $ print -r -- "${(C)var}"
  One Two Three Four

#==========================================================================
