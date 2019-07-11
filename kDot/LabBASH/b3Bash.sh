#! /bin/sh
#
# b3Bash.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#


printf "%-5s %-10s %-4s\n" No Name Mark        
printf "%-5s %-10s %-4.2f\n" 1 Sarath 80.3456
printf "%-5s %-10s %-4.2f\n" 2 James 90.9989
printf "%-5s %-10s %-4.2f\n" 3 Jeff 77.564

echo -e "\e[1;31m This is red text \e[0m"
echo -e "\e[1;42m Green Background \e[0m"

cat /proc/$PID/environ
cat /proc/12501/environ

cat /proc/12501/environ | tr '\0' '\n'


fruit=apple
count=5
echo "We have $count ${fruit}(s)"

#====================================================
#===LENGTH===========================================
var=12345678901234567890
echo ${#var}
#====================================================
echo $SHELL
echo $0
#====================================================
if [ $UID -ne 0 ]; then
        echo Non root user. Please run as root.
else
        echo "Root user"
fi
#====================================================
cat ~/.bashrc | grep export
#====================================================
let no=10
let no+=6
let no-=6

fruit=apple
count=5
echo "We have $count ${fruit}(s)"
#====================================================
no=10
echo "no $no"
result=$no 
result=$(( no + 50 ))
echo "$result"
result=`expr 3 + 4`
echo "$result"
result=$(expr $no + 5)
echo "$result"
#====================================================
echo "sqrt(100)" | bc #Square root
echo "10^10" | bc #Square
#====================================================
cmd 2>stderr.txt 1>stdout.txt
cmd 2>&1 output.txt
or an alternate approach:
cmd &> output.txt
some_command 2> /dev/nul

#====================================================
cat b* | tee out.txt | cat -n

By default, the tee command overwrites the file, but it can be used with appended options by
providing the -a option, for example:
cat a* | tee –a out.txt | cat –n.
#====================================================
echo who is this | tee - | less
#====================================================

#====================================================

array_var=(1 2 3 4 5 6)
array_var[0]="test1"
array_var[1]="test2"
array_var[2]="test3"
array_var[3]="test4"
array_var[4]="test5"
array_var[5]="test6"

echo ${array_var[0]}
echo ${!array_var[*]}
echo ${!array_var[@]}


#====================================================
ass_array=([index1]=val1 [index2]=val2)
index=5
index1=7
index2=9
ass_array[index1]=val1
ass_array[index2]=val2

#====================================================
alias instoll='sudo apt-get install'
#====================================================
alias rrm so that it will delete the original and keep a copy in a backup directory:
alias rrm='cp $@ ~/backup; rm $@'
#====================================================
tput longname
#====================================================
The epoch time can be printed as follows:
date +%s
date --date "Thu Nov 18 08:07:21 IST 2010" +%s
date --date "Jan 20 2001" +%A
date --date "May 07 1979" +%A
#====================================================
date "+%d %B %Y"
#====================================================
find . -regex ".*\(\.py\|\.sh\)$"
#====================================================
find . -iregex ".*\(\.py\|\.sh\)$"
#====================================================
find . ! -name "*.txt" -print
#====================================================
find . -maxdepth 1 -type f -print
#====================================================
find . -mindepth 2 -type f -print
#====================================================
find . -type d -print
#====================================================
find . -type f -print
#====================================================
find . -type l -print
#====================================================
find . -maxdepth 1 -type l -print
#====================================================
find . -type f -atime -7 -print
#====================================================
find . -type f -atime +7 -print
#====================================================
find . -type f -amin +7 -print
#====================================================
find . -type f -newer file.txt -print
#====================================================
find . -type f -size +2k
# Files having size greater than 2 kilobytes
find . -type f -size -2k
# Files having size less than 2 kilobytes
find . -type f -size 2k
# Files having size 2 kilobytes
#====================================================
find . -type f -name "*.swp" -delete
#====================================================
find . -type f -perm 644 -print
#====================================================
find . –type f –name "*.php" ! -perm 644 –print
#====================================================
find . -type f -user alf -print
#====================================================
find . -type f -name "*.c" -exec cat {} \;>all_c_files.txt

#====================================================
ls
find . -type f -mtime +10 -name "*.txt" -exec cp {} OLD \;
ls
ls OLD/
#===LOG-It================================================
find . -type f -name "*.txt" -exec printf "Text file: %s\n" {} \;
#====================================================
find . \( -name ".git" -prune \) -o \( -type f -print \)
#====================================================
cat example.txt | xargs
#====================================================
cat example.txt | xargs -n 3
cat example.txt
#====================================================
echo "splitXsplitXsplitXsplit" | xargs -d X
#====================================================
echo "splitXsplitXsplitXsplit" | xargs -d X -n 2
#====================================================
find . -type f -name "*.txxt" -print | xargs rm -f
#====================================================
find . -type f -name "*.txxt" -print0 | xargs -0 rm -f
#===COUNT=================================================
find . -type f -name "*.txt" -print0 | xargs -0 wc -l
#====================================================
echo "HELLO WHO IS THIS" | tr 'A-Z' 'a-z'
#====================================================
echo 12345 | tr '0-9' '9876543210'
echo 87654 | tr '9876543210' '0-9'
#====================================================
echo hello 1 char 2 next 4 | tr -d -c '0-9 \n'
echo "Hello 123 world 456" | tr -d '0-9'
#====================================================

echo "Hello 11111 world 22222" | tr -s '0-9'
#====================================================
md5deep -rl . > dotDir.md5
ls
#====================================================
The following command removes all the files, with filenames read from files.txt :
uniq –z file.txt | xargs -0 rm
#====================================================
In order to recursively move all the .mp3 files to a given directory, use:
find path -type f -name "*.mp3" -exec mv {} target_dir \;
#====================================================
Recursively rename all the files by replacing space with " _" character as follows:
find path -type f -exec rename 's/ /_/g' {} \;
#====================================================
ls /usr/share/dict/
#====================================================
look android
#====================================================
mkdir -p /home/red/test/hello/child
#====================================================
chmod u+x filename
chmod u-x filename
chmod 764 filename
chmod 777 . –R

#====================================================
In order to set the sticky bit, +t is applied on a directory with chmod as follows:
chmod a+t directory_name
#====================================================
for name in {1..100}.txt
do
touch $name
done
#====================================================
ln -s target symbolic_link_name
ln –l -s /var/www/ ~/web
web -> /var/www = that web points to /var/www
#====================================================
ls -l  ~/ | grep "^l" | awk '{ print $8 }'
ls -l  | grep "^l" | awk '{ print $8 }'
ls -l ~/ | awk '{ print $10 }'
ls -l | awk '{ print $10 }'
#====================================================
find ~/ -type l -print
#====================================================
tree path -P PATTERN
tree . -P "*.sh"
tree .
tree . -P "*.txt"
tree -h
tree PATH -H http://localhost -o out.html

#====================================================
echo this is a line. | egrep -o "[a-z]+\."
It should be noted that -c counts only the number of matching lines, not the number of times
a match is made. For example:
echo -e "1 2 3 4\nhello\n5 6" | egrep -c "[0-9]"
#====================================================
In order to count the number of matching items in a file, use the following hack:
echo -e "1 2 3 4\nhello\n5 6" | egrep -o "[0-9]" | wc -l
grep linux -n sample1.txt
grep linux -n *.sh
To recursively search for a text over many directories of descendants use:
grep "text" . -R -n
echo hello world | grep -i "HELLO"
echo this is a line of text | grep -e "this" -e "line" -o
To search only .c and .cpp files recursively in a directory by excluding all other file types, use:

grep "main()" . -r --include *.{c,cpp}

grep "tree" . -r --include *.{sh,c,cpp}
grep "linux" . -r  *.sh
grep "tree" . -r  *.{sh,c,cpp}
#====================================================

seq 10 | grep 5 -A 3

seq 10 | grep 5 -B 3

echo -e "a\nb\nc\na\nb\nc" | grep a -A 1

echo this is an example | sed 's/\w\+/[&]/g'

echo | awk '{ var1="v1"; var2="v2"; var3="v3"; \ print var1,var2,var3 ; }'

#====================================================
awk '{ print v1,v2 }' v1=$var1 v2=$var2 filename

#====================================================
seq 5 | awk 'BEGIN { getline; print "Read ahead first line", $0 } { print $0 }'

#====================================================


ls -l | awk '{ print $1" = "$2" ="$3 "  = "$6 " = " $8 }' 

ls -l | awk '{ print $1" = "$2" ="$3 " = "$4 " = " $5" = " $6" = " $7" = " $8 }' 

#====================================================

cat b2Bash.sh | awk 'NR==M, NR==N'
#====================================================
We will remove the sentence containing the words "mobile phones". Use the following sed
expression for this task:
sed 's/ [^.]*mobile phones[^.]*\.//g' sentence.txt

#====================================================
wget --mirror exampledomain.com
wget –-user username –-password pass URL


#====================================================
lynx -dump http://google.com > plain_text_page.txt
You can see the plain text version of text by using the cat command as follows:
cat plain_text_page.txt
curl http://slynux.org/index.html --silent -O
curl -u user:pass http://test_auth.com
#====================================================

Let's go through the shell script to parse the RSS feeds for Gmail to display the unread mails:
#!/bin/bash
Filename: fetch_gmail.sh
#Description: Fetch gmail tool
username="PUT_USERNAME_HERE"
password="PUT_PASSWORD_HERE"
SHOW_COUNT=5 # No of recent unread mails to be shown
echo
curl -u $username:$password --silent "https://mail.google.com/mail/
feed/atom" | \
tr -d '\n' | sed 's:</entry>:\n:g' |\
sed 's/.*<title>\(.*\)<\/title.*<author><name>\([^<]*\)<\/
name><email>
\([^<]*\).*/Author: \2 [\3] \nSubject: \1\n/' | \
head -n $(( $SHOW_COUNT * 3 ))
#The output will be as follows:
$ ./fetch_gmail.sh
#====================================================
#In this command, -c stands for "create file" and –f stands for "specify filename".
tar -cf output.tar file1 file2 file3 folder1 ..
#Append: In order to append a file into an already existing archive use:
tar -rvf original.tar new_file

#List the files in an archive as follows:
tar -tf archive.tar
tar -tvvf archive.tar
tar -xf archive.tar -C /path/to/extraction_directory
#We can also extract only a few files by specifying
#them as command arguments:
tar -xvf file.tar file1 file4
#Tar-Append:
tar -Af file1.tar file2.tar

#===!!!TAR-Test!!!==============================================
rm archive.*
ls
tar -cf archive.tar *
#List .tar
tar -tf archive.tar
tar -tvvf archive.tar
#DIFF
tar -df archive.tar b3Bash.sh
#append filea only if filea has newer modification
tar -uvvf archive.tar b3Bash.sh
ls *.tar
gzip archive.tar
tar -tvvf archive.tar.gz
tar -uvvf archive.tar.gz b3Bash.sh
#---!!!UPDATE-TAR!!!---------------------------------------
tar -uvvf archive.tar *
ls -la
cat archive.tar
ccat b2Bash.sh
less archive.tar:b3Bash.sh

#----------------------------------------------------------
tar -cvvf --lzma arc2.tar.lzma *
zip -r arc.zip *
zip -r arc2.zip *
zip -r arc3.zip *
zip -r arc-12-30.zip *
zip -r arc-01-06.zip *
zip -r arc-01-41.zip *
zip -r arc-02-01.zip *
zip -r arc-03-11.zip *
zip -r arc-14-40.zip *

zip -d arc.zip *
lzma arc2.zip
crontab -l | tee crontab.backup.txt

#----------------------------------------------------------
tar -cvvf --lzma archive.tar.lzma [FILES]
tar -cavvf archive.tar.lzma [FILES
#First, create the tarball:
tar -cvvf archive.tar [FILES]
#Compress it after tarballing:
lzma archive.tar




#=========================================================
In order to append filea only if filea has newer modification time than filea inside
archive.tar , use:
tar -uvvf archive.tar filea

Diff For example:
tar -df archive.tar afile bfile
afile: Mod time differs
afile: Size differs
#====================================================
tar -f archive.tar --delete file1 file2
tar -f archive.tar --delete file1 file2
tar -cf arch.tar * --exclude "*.txt"
tar -cf arch.tar * -X file.list
tar --exclude-vcs -czvvf source_code.tar.gz eye_of_gnome_svn
tar -czvvf archive.tar.gz [FILES]
tar -cvvf archive.tar [FILES]
Compress it after tarballing as follows:
gzip archive.tar
zip -d arc.zip file.txt
Unzip:
tar -xavvf archive.tar.gz -C extract_directory
tar -xvvf --lzma archive.tar.lzma -C extract_directory

#====================================================
du -h archive.tar
du -sh archive.tar
du -c .
du -hc ..
du -c *.txt
du -sh ..

#List 10 lagest files 
du -ak .. | sort -nrk 1 | head
du -akhm .. | sort -nrk 1 | head -n 4

#====================================================
zip -r archive.zip folder1 file2
#Update
zip file.zip -u newfile
#Delete a file from a zipped archive, by using –d as follows:
zip -d arc.zip file.txt
#In order to list the files in an archive use:
unzip -l archive.zip
#====================================================
rsync -av source_path destination_path
In this command:
f f -a stands for archiving
f f -v (verbose) prints the details or progress on stdout

find . -type f -exec du -k {} \; | sort -nrk 1 | head

df -h

#====================================================


rsync -av source_path destination_path
In this command:
-a stands for archiving
-v (verbose) prints the details or progress on stdout

In order to back up data to a remote server or host, use:
$ rsync -av source_dir username@host:PATH

Restore the data from remote host to localhost as follows:
$ rsync -av username@host:PATH destination

#==========================================================================
We can specify a wildcard pattern of files to be excluded. For example:
$ rsync -avz /home/code/some_code /mnt/disk/backup/code --exclude "*.txt"

#==========================================================================
A sample is as follows:
crontab -e

Add the following line:
0 */10 * * * rsync -avz /home/code user@IP_ADDRESS:/home/backups
#==========================================================================

In order to copy a partition into a file use:
# dd if=/dev/sda1 of=sda1_partition.img
Here /dev/sda1 is the device path for the partition.
Restore the partition using the backup as follows:
# dd if=sda1_partition.img of=/dev/sda1
#==========================================================================

Check-pointing or marking backup points.
We can mark checkpoints for the backup with a message using the following command:
git commit -m "Commit Message"

We need to update the backup at the remote location at regular intervals. Hence, set
Create a file crontab entry with lines:
0 */5 * * * /home/data/backup.sh


#==========================================================================
/home/data/backup.sh as follows:

#!/bin/ bash
cd /home/data/source
git add .
git commit -am "Commit - @ $(date)"
git push

#==========================================================================
tail -n 9 /var/log/syslog
ps -eo comm,pcpu --sort -pcpu | head
ps -f
ps -eo comm,pid,pcpu,pmem | grep zsh
ps -C zsh -o pid=
#==========================================================================

ps -eo cmd e
ps -e w
ps -e u
ps -ef

cat /proc/cpuinfo

#==========================================================================
Removing the cron table
We can remove the crontable for the current user using the –r option:
crontab –r


#==========================================================================
du -hsc * ; df -h
grep CRON /var/log/syslog

