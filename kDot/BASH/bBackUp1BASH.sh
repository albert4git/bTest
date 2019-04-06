#! /bin/sh
#
# bBackUp1BASH.sh

# Executing with cron

# # m h dom mon dow   command

#     m: minute the command executes on, between 0 and 59.
#     h: hour the command executes on, between 0 and 23.
#     dom: day of month the command executes on.
#     mon: the month the command executes on, between 1 and 12.
#     dow: the day of the week the command executes on, between 0 and 7. Sunday may be specified by using 0 or 7, both values are valid.
#     command: the command to execute.

# To add or change entries in a crontab file the crontab -e command should be used. Also, the contents of a crontab file can be viewed using the crontab -l command.
# To execute the backup.sh script listed above using cron. Enter the following from a terminal prompt:
# sudo crontab -e
# Using sudo with the crontab -e command edits the root user's crontab. This is necessary if you are backing up directories only the root user has access to.
# Add the following entry to the crontab file:

# # m h dom mon dow   command
# 0 0 * * * bash /usr/local/bin/backup.sh

# The backup.sh script will now be executed every day at 12:00 am. 

###########################################################################################

#     To see a listing of the archive contents. From a terminal prompt type:
#     tar -tzvf /mnt/backup/host-Monday.tgz
#     To restore a file from the archive to a different directory enter:
#     tar -xzvf /mnt/backup/host-Monday.tgz -C /tmp etc/hosts
#     The -C option to tar redirects the extracted files to the specified directory. The above example will extract the /etc/hosts file to /tmp/etc/hosts. tar recreates the directory structure that it contains.
#     Also, notice the leading "/" is left off the path of the file to restore.
#     To restore all files in the archive enter the following:
#     cd /
#     sudo tar -xzvf /mnt/backup/host-Monday.tgz


#!/bin/bash
####################################
#
# Backup to NFS mount script.
#
####################################

# What to backup. 
backup_files="/home /var/spool/mail /etc /root /boot /opt"

# Where to backup to.
dest="/mnt/backup"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest
