#! /usr/bin/env perl
#
# Short description for test2DO.pl
#
# Author red <red@red-Swift-SF113-31>
# Version 0.1
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
# Modified On 2019-03-24 04:04
# Created  2019-03-24 04:04
#

#!/usr/bin/perl -w
use DBI;
use strict;
use warnings;

my $db = DBI->connect("dbi:SQLite:test.db", "", "", {RaiseError => 1, AutoCommit => 1});

# $db->do("CREATE TABLE n (id INTEGER PRIMARY KEY, f TEXT, l TEXT)");
$db->do("INSERT INTO n VALUES (NULL, 'john', 'smith')");

my $all = $db->selectall_arrayref("SELECT * FROM n");


foreach my $row (@$all) {
        my ($id, $first, $last) = @$row;
        print "$id|$first|$last \n";
}


