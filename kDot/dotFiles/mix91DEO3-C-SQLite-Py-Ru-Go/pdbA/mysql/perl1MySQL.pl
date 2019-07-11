#! /usr/bin/env perl
#
# Short description for perl1MySQL.pl
#
# Author red <red@red-Swift-SF113-31>
# Version 0.1
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
# Modified On 2019-03-14 19:05
# Created  2019-03-14 19:05
#
use strict;
use warnings;


#!/usr/bin/perl

# PERL MODULES
use Mysql;

# MYSQL CONFIG VARIABLES
$host = "localhost";
$database = "adb";
$tablename = "atest";
$user = "root";
$pw = "mypass";

# PERL CONNECT()
$connect = Mysql->connect($host, $database, $user, $pw);

# LISTDBS()
@databases = $connect->listdbs;
foreach $database (@databases) {
	print "$database<br />";
}


