#! /bin/sh
#
# TarBACKUP.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#



#! /bin/bash

#
# Home Directory Backup Script
#
tar --listed-incremental=/media/backup/snapshot.file -cJpf /media/backup/home-backup-`date +%d-%m-%Y`.tar.xz /home/user/{Documents,Downloads,Pictures,Music,.config,.Xresources,.xinitrc,.i3,.mozilla,.zshrc}

####################################################################################################
# What to backup. 
backup_files1="/home/wyzer/.config/google-chrome/Default/Local*/kbmfpngjjgdllneeigpgjifpgocmfgmb"
backup_files2="/home/wyzer/.config/google-chrome/Default/Favicons"
backup_files3="/home/wyzer/.config/google-chrome/Default/Google*.png"
backup_files4="/home/wyzer/.config/google-chrome/Default/Favicons-journal"

# Where to backup to.
dest="/home/wyzer/Downloads/Scripts/Test_Folder"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files1 to $dest/$archive_file"
echo "Backing up $backup_files2 to $dest/$archive_file"
echo "Backing up $backup_files3 to $dest/$archive_file"
echo "Backing up $backup_files4 to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files1 $backup_files2 $backup_files3 $backup_files4

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest
