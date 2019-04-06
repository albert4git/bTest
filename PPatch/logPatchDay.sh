#! /bin/sh
#
# logPatchDay.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#


diff -Naur cc.txt dd.txt 
diff -Naur cc.txt dd.txt >myfixes.patch


To create patch for single file your command may look like

diff -Naru file_original file_updated > file.patch

where
-N: treat absent files as empty
-a: treat all files as text
-r: recursively compare any subdirectories found
-u: output NUM (default 3) lines of unified context

To create patch for whole directory:

diff -crB dir_original dir_updated > dfile.patch

where
-c: output NUM (default 3) lines of copied context
-r: recursively compare any subdirectories
-B: ignore changes whose lines are all blank

patch -p1 --dry-run < dfile.patch

where switch p instructs patch to strip the path prefix so that files will be
identified correctly. In most cases it should be 1.

Remove --dry-run if you are happy from the result printed on the screen.

#############################################################################
patch foo.c < patch.diff

#Undo
patch -R foo.c < patch.diff

To create a patch, one could run the following diff command:
diff -u oldfile-name-here newfile-name-here > patch.diff 

First, make a copy of the source tree:
## Original source code is in lighttpd-1.4.35/ directory ##
cp -R lighttpd-1.4.35/ lighttpd-1.4.35-new/

Cd to lighttpd-1.4.35-new directory and make changes as per your requirements:
$ cd lighttpd-1.4.35-new/
$ vi geoip-mod.c
$ vi Makefile

Finally, create a patch with the following command:
cd ..
diff -rupN lighttpd-1.4.35/ lighttpd-1.4.35-new/ > my.patch

You can use my.patch file to patch lighttpd-1.4.35 source code on a different
computer/server using patch command as discussed above:

patch -p1 < my.patch
