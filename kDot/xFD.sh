#! /bin/sh
#
# xFD.sh
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#



# fd -e jpg -x chmod 644 {}

The above will find all files with extension jpg and will run chmod 644 <path-to-file>.

Here is some useful explanation and usage of the brackets:

    {} – A placeholder which will be changed with the path of the search result (wp-content/uploads/01.jpg).
    {.} – similar to {}, but without using the file extension (wp-content/uploads/01).
    {/}: A placeholder that will be replaced by the basename of the search result (01.jpg).
    {//}: Parent directory of the discovered path (wp-content/uploads).
    {/.}: Only the basename, without the extension (01).

fd -e zip -x unzip 

Dieses Kommand konvertiert alle JPG-Dateien in PNGs:

fd -e jpg -x convert {} {.}.png
