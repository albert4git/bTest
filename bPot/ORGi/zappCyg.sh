#! /bin/sh
#
# zappCyg.sh
# Copyright (C) 2020 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#


----------------------------------------------------------------------------
This tips page is just to give you an idea of the scope and versatility of
Cygwin/Linux. Also how you can get the best of both worlds Windows & Linux
and specifically how they can interact with Cygwin.
------------------------------------------------------------------------------
" new items marked *N* , corrected items marked *C*
" searching
----------------------------------------
# Installation *N*
Install directly from
http://cygwin.com/setup.exe
# Tip if you have broadband and lots of harddrive select "full install"
# Update (say weekly before you go to lunch) Cygwin from
http://cygwin.com/setup.exe
# Tip before updating close down all Cygwin Windows/Activities
uname -a                       # get version info of cygwin & whether 32 or 64 bit *N*
----------------------------------------
# getting help
man zsh
info zsh
pinfo zsh
http://cygwin.com/packages/  where all the packages are listed
/usr/share/doc/Cygwin/ cygwin specific documentation
# finding cygwin utilities that are in packages is rather awkward [N]
# use either method below then download the package via setup
cygcheck -p strings.exe  # which package contains strings
http://cygwin.com/cgi-bin2/package-grep.cgi?grep=strings.exe
------------------------------------------------------------------------------
# Use mount to make windows paths appear like unix paths
# allow tab to expand C:/ based paths
mount -f -u -b "c:" "/c"
mount -f -s -b "c:/Program Files/SQLyog311" "/sqlyog3"
------------------------------------------------------------------------------
$ mount (the standard ones) (Mount has changed in latest cygwin 1.7.x)
C:\cygwin\bin on /usr/bin type system (binmode)
C:\cygwin\lib on /usr/lib type system (binmode)
C:\cygwin on / type system (binmode)
c: on /cygdrive/c type user (binmode,noumount)
------------------------------------------------------------------------------
http://www.gnu.org/manual/bash/index.html
------------------------------------------------------------------------------
# main start file
c:\cygwin\cygwin.bat
or create shortcut to *N*
C:\cygwin\bin\mintty.exe /bin/bash --login -i *N*
C:\cygwin\bin\mintty.exe /bin/zsh --login -i *N*
C:\cygwin64\bin\mintty.exe -i /Cygwin-Terminal.ico /bin/zsh --login -i *N*
echo -ne '\e]10;#000000\a'  # Black foreground
echo -ne '\e]11;#C0C0C0\a'  # Light gray background
echo -ne '\e]12;#00FF00\a'  # Green cursor
------------------------------------------------------------------------------
# Is your cygwin crashing? you may need rebaseall
Occasionally it is necessary to rebase the cygwin dll's
Shut down all cygwin activities & SERVICES (Windows Control Panel Services)  then from the command prompt or the run menu (run as administrator on Vista)
c:\cygwin\bin\ash.exe
/bin/rebaseall
If rebaseall reports a problem you MUST fix it
# documentation vi /usr/share/doc/Cygwin/rebase*.readme

# easiest way with all cygwin consoles & services shutdown
\cygwin\bin\dash -c '/usr/bin/rebaseall'    -- *N*
------------------------------------------------------------------------------
# simple way to eliminate the  *N*
"Your group is currently "mkpasswd".  This indicates that the /etc/passwd (and possibly /etc/group) files should be rebuilt" message
mkpasswd -l -c > /etc/passwd
mkgroup -l -d > /etc/group
------------------------------------------------------------------------------
set editing-mode vi
set -o vi
!!
!$ (last argument)
!$:h (last argument, strip one level)
!?echo
vi !* (all parameters)
vi !$ (last parameters)
!42
history
^fred^joe
!42:p
also use control-R
------------------------------------------------------------------------------
news.gmane.org newsgroup for cygwin
------------------------------------------------------------------------------
# check health of your installation
cygcheck -c
cygcheck -srv
cygcheck -c perl
cygcheck -f /bin/diff.exe #get version
cygcheck /bin/curl.exe     # check dll dependency (any missing)
# insecure directories warning
#run compaudit
compaudit
#It told me that my latest zsh install was insecure (directories were writable)
# The following solved the problem
chmod -R 755 /usr/share/zsh/
chown -R yourusername /usr/share/zsh (on Vista (run as admin))
chown -R david /usr/share/zsh (ie for me on Vista (run as admin))
------------------------------------------------------------------------------
# Run Cygwin for a Dos Window (command prompt) or mintty?
# I prefer a Dos window but most use mintty (a cygwin utility)
# if you are using a DOS-Window for Cygwin (as I do) you will want
# to check "Quick-Edit Mode" in the the Properties-Options this allows
# you to use the mouse to copy/paste (IMPORTANT) *N*
------------------------------------------------------------------------------
# Copy/Paste
# if you are using a DOS-Window for Cygwin (as I do) you will want
# to check "Quick-Edit Mode" in the the Properties-Options this allows
# you to use the mouse to copy/paste (IMPORTANT) *N*
echo fred | putclip   # copy/paste
getclip   # copy/paste
# the unix way
cat /dev/clipboard
echo hello > /dev/clipboard
getclip | putclip     # clean Windows paste buffer of any formatting Fonts etc
------------------------------------------------------------------------------
# Set up your DOS box for copy and paste
Check the boxes in the settings tab of the shortcut:
"QuickEdit Mode" [ and "InsertMode" ] (or in the settings at the
top-left-window pull-down-menu).
------------------------------------------------------------------------------
# Another way of making windows look for unix like or just easier to type
ln -s real_file linked_file
ln -s /usr/bin/perl perl
ln -s /cygdrive/c/usr/local/bin/perl perl
ln -s c:/aaa/ aaa
------------------------------------------------------------------------------
# CYGWIN=nodosfilewarning set this as a Windows System Variable (My Computer Advanced Properties) *N*
#access cygwin utilities from DOS (cmd.exe) *N*
add c:\cygwin64\bin to PATH Variable -- Computer->Properties->Advanced->Environment Variables *N*
------------------------------------------------------------------------------
updatedb             # database of files on your server used by locate *N*
locate php.ini       # find any php.ini files *N*
------------------------------------------------------------------------------
LC_ALL=C grep -i 'text' *.*      # get around the text file being identified as a binary   *N*
------------------------------------------------------------------------------
# grep (everyone should master grep)
egrep "fredy*joe" *   star used as optional "y"
egrep "fred.*joe" *   dot star used as Any number of chars
egrep "\<fred.*joe" *   beginning of word
------------------------------------------------------------------------------
#grep all files x* in all sub-directories (.)  containing "cellpadding"
grep -il -R  --include=x* cellpadding  .
egrep -il -R  --include=*.pl "searchstring"  .
------------------------------------------------------------------------------
# sgrep has the advantage of being non-line based
sgrep -i '("<h1>" .. "</h1>")' index.php
sgrep -i '("fred" .. "joe")' essay.txt
It gets really useful when you stream it
sgrep -i '("fred" .. "joe")' essay.txt | egrep -i 'keyword'
------------------------------------------------------------------------------
# download a single page or whole website
# -nd (no directory) ie same any files in local directory
wget -r http://www.somesite.co.uk/photos.html
wget -r -nd http://www.somesite.co.uk/photos.html (create no local directories)
wget -r -nd -nv -P c:/tmp/ http://www.website.co.uk/env.cfm
wget -r -l1 --no-parent http://www.server.com/dir/   Only download subdirectory     *N*
wget -i urllist.txt
wget -r -S --passive-ftp -A.html ftp://www.website.co.uk/html/ # passwd login in ~/.wgetrc
wget -r -A.html,.cfm -Rsite.cfm,addbasket.cfm,request_brochure.cfm -a log.txt --tries=2 http://www.website.co.uk/

time curl --connect-timeout 20 -o c:/tmp/env.cfm --url http://www.website.co.uk/env.cfm
# get all *.cfm,*.html pages in website root w/o getting site.cfm which recurses
wget -r -nd --level=0 -A.html,.cfm -Rsite.cfm,addbasket.cfm,request_brochure.cfm -a log.txt --tries=2 http://www.website.com/
wget -r -nd --level=0 -A.html,.cfm -Rsite.cfm,addbasket.cfm,request_brochure.cfm -a log.txt --tries=2 http://www.website.co.uk/
curl -o results.html --url http://www.website.com/read.asp?ID=3262,7330,7348
------------------------------------------------------------------------------
# ftp client
ncftpput -u loginid -p password www.website.co.uk /public_html xx
------------------------------------------------------------------------------
# very powerful find command
find . -name \*.[ch][ft]m\* -a \( -mtime -1 \) -exec gvim {} \;
same as
find . -name \*.[ch][ft]m\* -mtime -1 -exec vim {} \;
better
gvim $(find -name \*.[ch][ft]m\* -mtime -1)

find . -type f \( -name \*.html -o -name \*.cfm \) -mtime -1 | xargs gvim

find . -follow -type f \( -name \*.html -o -name \*.cfm \) -mtime -1 -print0 | xargs -0 gvim -f

find ~ -name 'proj1*' print | xargs cat
find . -name '*.*' -size 0 -exec ls -l {} \; # list zero sized files in a tree
find ./*.txt -type f | xargs perl -pi -e 's/old1/new1/g;s/old2/new2/g'
find . -name "*.cfm" -print | xargs grep -i host
find . -name "*.cfm" -print0 | xargs -0 grep -i host
time find . -name '*' -exec echo {} + >/dev/null  (find w/o xargs)
find . -type f -name '*.sql' -mtime +7 -exec \rm {} \; #delete *.sql files older than 7 days
$ find . -type f \( -name '*.sql' -o -name '*.zip' \) -mtime +7 -print -exec \rm
 {} +
find . -type f -name '*.sql' -mtime +7 -print -exec \rm {} +  # use this one
find . -type f -exec grep -e "goat" {} \; -exec mv {} done \; #mv all files containing string
find . -type f -exec \grep -i "$1" {} /tmp/nul \; 2>nul | tee c:/tmp/tee.txt
------------------------------------------------------------------------------
#Apache CYGWIN
/usr/sbin/apachectl start|restart|stop
/etc/apache/httpd.conf
------------------------------------------------------------------------------
# Get domain name information (brilliant)
nslookup website.com
nslookup website.com ns1.nameserver.net
whois website.com
------------------------------------------------------------------------------
# cygwin ping specify bytes -l 1472 bytes
$ ping -f -l 1472 www.website.co.uk
------------------------------------------------------------------------------
# script in a line
for file in $(find . -type f -name '*.CPP'); do mv ${file} ${file/.CPP/.cxx}; done
------------------------------------------------------------------------------
# wrap for windows programs
notepad () {
     notepad.exe "`cygpath -w $1`"
}
cygpath -D #Desktop
explorer "$(cygpath -w "${1:-.}")"
cygpath -d . c:/Program\ Files/Internet\ Explorer # get short name
alias rar='/cygdrive/c/program\ files/WinRar/rar.exe' *N*
------------------------------------------------------------------------------
#installing cron (vixie)
$install cron from setup.exe then
$ cygrunsrv --stop cron
$ cygrunsrv --remove cron
$ cygrunsrv --install cron --path /usr/sbin/cron --args -n    *C*
$ cygrunsrv --start cron
/var/log/cron.log
------------------------------------------------------------------------------
>crontab -e
#min(0-59) hr(0-23) dayofmonth(1-31)  monthofyear(1-12)  dayofweek(0-6) note 0=sun
* * * * * /usr/bin/date | /usr/sbin/ssmtp zzapper@ntlworld.com
05 16 * * 1  /path/to/script 2>&1 | /path/to/Cmail -s "/path/to/script" kevin
52 17 * * * /usr/local/bin/mail -s "Update WorkSheet" email@ntlworld.com
19 10 * * * /usr/local/bin/zipkinglocal
20 * * * * /usr/local/bin/myinfosql >> /dev/null 2>&1 | email -s "CRONBACKUP myinfosql"  cron@website.co.uk < /tmp/myinfosql.txt
------------------------------------------------------------------------------
email -n "name" -f david@website.co.uk -r smtp.server.com -s "fred"  david@website.co.uk < /aaa/x
------------------------------------------------------------------------------
gvim.exe $(history -1 | sed "s/.* //g")
------------------------------------------------------------------------------
# secure shell ssh
ssh -l raynerd www.website.co.uk  (prompted for password)
# scp user@host:path/file
# scp -r user@host:path
scp raynerd@www.website.co.uk:/www/hosts/website.co.uk/www/html/epsystem/epsites/master/dev_images/9_map.gif .
# better sftp (as you walk around)
# sftp fetchs a file
sftp raynerd@www.website.co.uk:/www/hosts/website.co.uk/www/html/epsystem/epsites/master/dev_images/9_map.gif
# sftp goes to a directory: use get to download, put to upload files
sftp raynerd@www.website.co.uk:/www/hosts/website.co.uk/www/html/epsystem/epsites/

use cd,ls etc to navigate remotelty
use lls,lcd to navigate my pc
use get (to ftp back to local)

------------------------------------------------------------------------------
# file name generation fng
ls d*          # list only files d*
ls [^a-ce-z]*  # list only files d*
ls [^d]*       # list all but d
ls ???         # list all files with exactly 3 letters
ls ???*        # list all files with at least 3 letters
ls -l =perl    # = completes path to perl (zsh only)
------------------------------------------------------------------------------
# how to open a Windows Application from shell
cygstart report.doc   (calls word)
antiword report.doc   (edits report.doc as a text file in vim)
cygstart . (Open explorer)
cygstart /   (Open explorer)
cygstart http://www.cygwin.com
cygstart --print README.txt
cygstart --maximize ~/projects/whatever/design.doc
cygstart -x . (Open explorer)
alias Z='cygstart .'
------------------------------------------------------------------------------
# Windows version or Cygwin Version
I still use some windows versions of programs rather than the native Cygwin versions, this is down to choice and sometimes because a GUI is more useful than a CLI
I prefer to use the windows version of vim ie gvim
I use Windows mysql and windows apache 2.x
Remember you usually have the choice
------------------------------------------------------------------------------
#sed cut
gvim.exe $(history -1 | sed -e "s/.* //g")
more wide.txt | cut -c25-   #cuts 1st 25 chars from display
more wide.txt | | fmt -40   #wraps at 40 characters
sed -n '2,35p' inputfile > outputfile # filter lines outside 2,35
# filter between two strings (regexp's if quoted)
sed -n "s/^\(.*$1\)\(.*\)\($2.*\)/\2/p"
grep --color -Po 'src.*?mediarel.*?alt' *.cfm
:%!sed 's/str1/str2/2'      # substitute only 2nd occurrence of str1
sed '2d' poem  #        deletes second line of 'poem'
sed '2,4 s/tree/timber/' poem replaces the FIRST occurance of the word 'tree' with the word 'timber' in lines 2 through 4 of 'poem'
sed '7,/Linus/p' poem   prints every line from the seventh to the first with the word 'Linus'
sed 's/[Hh]emo/[Hh]aemo/g' poem in ALL lines of 'poem', change EVERY occurance of 'hemo' or 'Hemo' to 'haemo' or 'Haemo' (g = global)
sed -n '$p' poem        prints the last line of 'poem'
sed -n '/c[ao]n/p' poem prints only lines with 'can' or 'con' in them
sed -n '/c[^ao]n/p' poem prints only lines with words containing 'c?n' either a or o; omits 'can I go for a walk?' but includes 'can I go to Cincinatti for a walk?'
sed -n '/c[ao]n/!p' poem prints only lines WITHOUT 'can' or 'con' in them

The second part of an 'ed command' tells sed what changes to
apply. Note that some of these change commands will not accept
a range of lines (e.g., 2,6) for their action.
sed 'a\
> append THIS!' poem    puts the phrase 'append THIS!' on its own line after EVERY line in the file 'poem'
sed '/opt/ i\
                > insert THIS!' poem    puts the phrase 'insert THIS!' on its own line before every line containing the word 'opt'
sed '/You/ c\
                > Yo Mama' insults changes all lines with the word 'You' into the phrase shown
sed '/boots/ s/military/army/g' insults changes the word 'army' to 'military' whenever 'boots' is in a line of the file 'insults'
sed -n '3p' poem        prints the third line of 'poem'
sed '/nausea/q' ill     prints the file 'ill' up to the first occurance of 'nausea'
sed '$ r finish' poem   appends the contents of the file 'finish' to the file 'poem'
sed '/[aeio]/ !w uvowel.ls' poem copies every line from 'poem' lacking the letters [aeio] and puts them in a file called 'uvowel.ls'
sed '=' poem            prints the line numbers for each line of 'poem'
sed '/tart/=' poem      prints the line numbers of each line with the word 'tart' in 'poem'
sed '/don\'t/!p' poem   prints all lines without the word 'don't' from 'poem'
sed -i '$r lines.file' *.txt   # add text in lines.file to all files *.txt
------------------------------------------------------------------------------
alias n12='zsh -c "pn;vi note012.txt"' # doesnt change local directory
------------------------------------------------------------------------------
echo "scale=10; 4*a(1)" | bc -l
echo 2+4 | bc -l
template:bc: bc 4+3 7 a=last a*4 28 l(10) e(10) sqrt(4)
------------------------------------------------------------------------------
# perl & shell
#!/bin/bash
perlscript='for $i (1..4) { $j="goat$i"; print " billy$j"; }'
fred=$(perl -e "$perlscript")
echo $fred
------------------------------------------------------------------------------
# job control *N*
Control-z put a running job into background
bg  run in background
fg  bring to foreground
wait %2  # wait till background job completes eg
wait %2 ; php secondjob.php
------------------------------------------------------------------------------
UNC Universal Naming Convention. "C:\temp\test.doc" would be represented by "\\?\C:\temp\test.doc"
DEL \\.\c:\somedir\nul or delinvfile.exe (google for this utility)
ls -l **/nu*l  (use star as otherwise nul always found)
------------------------------------------------------------------------------
sort -b poem         #  sort 'poem', ignoring blanks
sort -d poem         #  sort 'poem' using ONLY letters, numbers and blanks
sort -f poem         #  sort 'poem' ignoring letter case
sort -n inventory    #  sort 'inventory' by number value
sort -o surpoem poem #  sort 'poem' and put result into a newfile called 'surpoem'
sort -r poem         #  sort 'poem' in reverse order
sort -t: -f -o invsort +1 -3 inventory
sort 'inventory' using only the second and third words on each
line. Words are delimited by a full colon (not spaces). Ignore
the case of the letters and dump the result to a file called 'invsort'

sort -t; -n +2 -3 +7 number.list
sort 'number.list' using only the third and eighth values on
the lines. Values are delimited by semi-colons

sort -t- -d +2.3r -4 +6f listing > processed.list
sort 'listing' using only the third character of the third
word, sorted in REVERSE, the fourth word, sorted normally,
and the seventh word, sorted independent of letter case. The
field delimiter is a dash '-' and the output is redirected to 'processed.list'
------------------------------------------------------------------------------
#testing if an executable exists
if whence -p vim > /dev/null 2>&1; then echo "ok"; else echo "nok"; fi
if [ -x =vim ] ; then echo "ok" ; else echo "nok"; fi
if [ -x =vim ] 2>/dev/null ; then echo "ok" ; else echo "nok"; fi
------------------------------------------------------------------------------
shutdown -r +20   # reboot in 20 minutes
------------------------------------------------------------------------------
# fun utilities
fortune
wtf imho
ddate
factor 32
------------------------------------------------------------------------------
/usr/sbin/httpd -f /etc/apache/httpd.conf  #start apache
------------------------------------------------------------------------------
gcc 1.c -o 1.exe
main(){printf("hello\n");}
------------------------------------------------------------------------------
rsync -rvnc /var/www/html/scripts/   user1@192.129.156.156:/var/www/release/scripts/
rsync -rvnc /tmp/release/config/ /var/www/release/config/
rsync -aunv *.mp3 /cygdrive/g/
------------------------------------------------------------------------------
ls | xargs -n 3 echo
ls olddir | xargs -i -t mv olddir/ newdir/
------------------------------------------------------------------------------
ll permissions links? owner group size date filename
ls -l frankgaron.tex
-rwxrwxrwx  1 davidr None 4406 Jul 26 20:36 frankgaron.tex
ls -g frankgaron.tex
-rwxrwxrwx  1 None 4406 Jul 26 20:36 frankgaron.tex
ls -o frankgaron.tex
-rwxrwxrwx  1 davidr 4406 Jul 26 20:36 frankgaron.tex
------------------------------------------------------------------------------
# disk used du
du -ch .   # totals & subdirectories totals
du -sh .   # just total in human readable
du -sh bh15Sep05 --exclude '*.txt'
du -h VeryLargeFile.iso  # filesize in Human Format
split -b1000m disk.iso  disk   # split an ISO into Gigabyte chunks
#!bin/zsh
for f (*.sql) { echo $f && sleep 3 && php /var/www/html/scripts/fixscripts/multi_import2.php $f}
# split a text file by string e.g. 'insert ignore into'
csplit -n4 -f catlin ../res.sql '/INSERT IGNORE INTO/' '{*}'
------------------------------------------------------------------------------
cp file1 old
vim file1
diff -u old file1 >changes
patch file2 changes
cp -p file1 ./sub/file2        # -p preserve permissions (need this on Vista/Win7)
cp --preserve=timestamps main.php /cygdrive/y/backup # keep update time *N*
------------------------------------------------------------------------------
# zsh search
grep 'host' **/(*.cfm~(ctpigeonbot|env).cfm)
grep -i 'host' **/(*.cfm~(ctpigeonbot|env).cfm)~*((#s)|/)junk*/*(.)
------------------------------------------------------------------------------
wn well -over     # wordnet Thesaurus/Synonym/dictionary tool
# also wnb (Wordnet Gui for Windows)
wnb
------------------------------------------------------------------------------
# zipping up
zipsplit -n 4500000000 all.zip  # split for 4.7MB DVD
zip all.zip -@ < list.txt
zip all.zip m{33..38}.txt
zip -r all.zip www.successtheory.com
zip -r x www.website.co.uk -x \*/dev_images/\*
zip --password your_password all.zip   *.csv     # *N*
find . -name "*.[ch]" -print | zip source -@
find . -name '*.php' -exec zip all.zip {} \;
unzip -l ebooks1.zip G blaine
unzip -l "*.zip" V
unzip ebooks1.zip "*blaine*"
unzip "ebook*.zip" "*Hypno*"
------------------------------------------------------------------------------
# edit the the last few lines of a file
tail -n100 note025.txt | gvim.exe -
------------------------------------------------------------------------------
# chere Start a command prompt from Windows Explorer *N*
# chere changing from bash to zsh (regedt following replacing bash by zsh)
(Computer)\HKEY_CLASSES_ROOT\Directory\shell\cygwin_bash\command
------------------------------------------------------------------------------
curl -u userid:password -d status=" updating twitter with from curl " http://twitter.com/statuses/update.xml
------------------------------------------------------------------------------
# imageMagick command line interface tools
# requires cygwin imageMagick
# identify is an ls for images gives dimensions etc
identify abbeyparkarch.gif
convert -sample 80x40 abbeyparkarch.gif s_abbeyparkarch.gif

#automatically respects ratio, so only the y dimension is required
convert -resize 80  abbeyparkarch.gif s_abbeyparkarch.gif

#respects ratio width 80
convert -resize x40  abbeyparkarch.gif s_abbeyparkarch.gif
respects ratio height 40
# batch conversion of images
for i in *.jpg ; convert -resize 800 $i $i
for i in **/*.gif; convert $i $i:r.jpg
------------------------------------------------------------------------------
# git version control
git init    # in directory you wish have version control
git add .   # add all files in directory
git commit cygwintips.txt -m "testing git for cygwintips.txt"
cygcheck -c cygwin git gitk tcl tcl-tk
-----------------------------------------------------------------------------
iconv -t UTF-8 -f ISO-8859-1 Tel.txt > TelNew.txt # text files appearing as binaries to grep
-----------------------------------------------------------------------------
additions to standard install : zip,unzip,ssh,rar,git,wget,whois,bc,top(procps),email, putclip, getclip (in cygutils-extra) dos2unix (gets unix2dos), antiword, pdftotext (poppler) ,curl
------------------------------------------------------------------------------
__END__
------------------------------------------------------------------------------
" : commands to neutralise < for HTML display and publish
" use yy@" to execute following commands
:w!|sav! %:r.php |:/^__BEGIN__/,/^__END__/s#<#\<#g|:w!|:!cygtipsftp %
