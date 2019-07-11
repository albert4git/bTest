#! /bin/sh
#
# kTar.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#
rsync -a –link-dest=prevbackup src dst
grep CRON /var/log/syslog
git log –graph –oneline

ncdu
apropos "list dir"
man -k "find files"

crontab -l | tee crontab.backup.txt
Incron
% find . −name \*.o −print
% find . −name '*.o' −print
% find . −name "[a−zA−Z]*.o" −print

Rather than giving a command like tar c /home/mike, do something like:
% cd /home/mike
% tar c .
Or, even more elegant, use −C on the tar command line:
% tar c −C /home/mike .
This command tells tar to cd to the directory /home/mike before creating the archive. If you want to archive
several directories, you can use several −C options:
% tar c −C /home/mike ./docs
−C /home/susan ./test
This command archives mike's docs directory and susan's test directory.

#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!
#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!

#!!!===1.)===-Dry--Run-========================================================
rsync -anv ~/git/bTest/ /media/red/124Black/git/124Test/
#!!!===2.)=====================================================================
rsync -avz --delete ~/git/bTest/ /media/red/124Black/git/124Test/
#!!!===3.)=====================================================================
rsync -avz --delete ~/git/bTest/ /media/red/pink/125Black/git/pinkTest/

grep CRON /var/log/syslog
#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!
#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!

#################################################################################
###---------------------------------------------------------------------------###
#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!

tar --listed-incremental=/media/backup/snapshot.file -cJpf /media/backup/home-backup-`date +%d-%m-%Y`.tar.xz /home/user/{Documents,Downloads,Pictures,Music,.config,.Xresources,.xinitrc,.i3,.mozilla,.zshrc}
#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!

tar --listed-incremental=/media/red/124Black/SNAR/snapshot.file -cJpf /media/red/124Black/SNAR/home-backup-`date +%M-%H-%d-%m-%Y`.tar.xz /home/red/Downloads
tar --listed-incremental=/media/red/124Black/SNAR/bTestSnap.file -cJpf /media/red/124Black/SNAR/bTestBackup-`date +%M-%H-%d-%m-%Y`.tar.xz /home/red/git/bTest/

#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!

tar --listed-incremental=/dev/null -xvf home-backup-08-01-07-07-2019.tar.xz
tar --listed-incremental=/dev/null -xvf home-backup-* -C ../TMP/

#---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!!!!---!!!

$ sudo apt-add-repository ppa:hollywood/ppa
$ sudo apt-get update
$ sudo apt-get install hollywood

$ hollywood


#################################################################################
for i in bin boot etc home lib opt root sbin sys usr var ; do
tar -clzf /mnt/backup/backup-$i-full.tgz “/$i“ 2>/dev/null
done
#################################################################################
Using this script, I can restore any file or directory using tar . For example,
to restore the /home/nealk/book3 directory, I would use:
cd /
sudo tar -xzvf /mnt/backup/backup-home-full.tgz home/nealk/book3
sudo tar -xzvf /mnt/backup/backup-home-inc.tgz home/nealk/book3
#################################################################################

BACKUPTIME=`date +%b-%d-%y` #get the current date
DESTINATION=/home/usr/path/backup-$BACKUPTIME.tar.gz #create a backup file using the current date in it's name
SOURCEFOLDER=/home/usr/path/data_folder #the folder that contains the files that we want to backup
tar -cpzf $DESTINATION $SOURCEFOLDER #create the backup


c: create
v: verbose mode, verbosely list files processed
p: preserve permissions for the new files
z: compress the files in order to reduce the size
f: use archive file or device ARCHIVE
#################################################################################


If you wanted to run it at 3:30AM every time instead, it would look like this.

30 3 * * * /home/user/home-backup.sh

#################################################################################
bakthat backup --help

If you don’t specify a filename/dirname, bakthat will backup the current working directory.

$ cd /dir/i/want/to/bak
backup to S3
$ bakthat backup
or
$ bakthat backup /dir/i/want/to/bak

$ bakthat backup /my/dir -t "tag1 tag2"

you can also backup a single file
$ bakthat backup /home/thomas/mysuperfile.txt

backup to Glacier
$ bakthat backup myfile -d glacier

set the password with BAKTHAT_PASSWORD environment variable
$ BAKTHAT_PASSWORD=mypassword bakthat backup myfile

disable password prompt
$ bakthat backup myfile --prompt no
####################################
bakthat restore --help
usage: bakthat restore [-h] [-d DESTINATION] [-p PROFILE] [-c CONFIG]
                           filename

positional arguments:
  filename

optional arguments:
  -h, --help            show this help message and exit
  -d DESTINATION, --destination DESTINATION
                        s3|glacier|swift
  -p PROFILE, --profile PROFILE
                        profile name (default by default)
  -c CONFIG, --config CONFIG
                        path to config file

When restoring a backup, you can:

    specify filename: the latest backups will be restored
    specify stored filename directly, if you want to restore an older version.

$ bakthat restore bak

if you want to restore an older version
$ bakthat restore bak20120927
or
$ bakthat restore bak20120927.tgz.enc

restore from Glacier
$ bakthat restore bak -d glacier
####################################

show everything
$ bakthat show

search for a file stored on s3:
$ bakthat show myfile -d s3
####################################
$ bakthat delete bak

$ bakthat delete bak -d glacier

Delete older than¶

Delete backup older than the given string interval, like 1M for 1 month and so on.

    s seconds
    m minutes
    h hours
    D days
    W weeks
    M months
    Y Years

$ bakthat delete_older_than bakname 3M

$ bakthat delete_older_than bakname 3M2D8h20m5s

$ bakthat delete_older_than bakname 3M -d glacier

Backup rotation¶

If you make automated with baktaht, it makes sense to rotate your backups.

Bakthat allows you to rotate backups using Grandfather-father-son backup rotation, you can set a default rotation configuration.

$ bakthat configure_backups_rotation

Now you can rotate a backup set:

$ bakthat rotate_backups bakname
####################################

Configuration¶

Bakthat stores configuration in YAML format, to have the same configuration handling for both command line and Python module use.

You can also handle multiples profiles if you need to manage multiple AWs account or vaults/buckets.

By default, your configuration is stored in ~/.bakthat.yml, but you can specify a different file with the -c/--config parameter.

To get started, you can run bakthat configure.

$ bakthat configure

Here is what a configuration object looks like:

access_key: YOUR_ACCESS_KEY
secret_key: YOUR_SECRET_KEY
region_name: us-east-1
glacier_vault: myvault
s3_bucket: mybucket

The region_name key is optionnal is you want to use us-east-1.
Managing profiles¶

Here is how profiles are stored, you can either create them manually or with command line.

default:
  access_key: YOUR_ACCESS_KEY
  secret_key: YOUR_SECRET_KEY
  region_name: us-east-1
  glacier_vault: myvault
  s3_bucket: mybucket
myprofile:
  access_key: YOUR_ACCESS_KEY
  secret_key: YOUR_SECRET_KEY
  region_name: us-east-1
  glacier_vault: myvault
  s3_bucket: mybucket

To create a profile from command line with bakthat:

$ bakthat configure --profile mynewprofile

$ bakthat configure -h
usage: bakthat configure [-h] [-p PROFILE]

optional arguments:
  -h, --help            show this help message and exit
  -p PROFILE, --profile PROFILE
                        profile name (default by default)

Once your profile is configured, you can use it with --profile/-p argument.

$ bakthat backup -p myprofile
$ bakthat show -p myprofile

file:///media/red/124Black/2019DocLink/Html-Documents/BACK-UP/Use%20These%20Python%20Based%20Tools%20for%20Secured%20Backup%20and%20Recovery%20of%20Data.html

Python 3, you can run
python3.1 or idle3.1 . In Windows, the different versions are installed in separate locations and have separate menu entries.
