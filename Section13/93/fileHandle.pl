#!/usr/bin/perl

use strict;

my $i;

$i++ if (-e -f -x -o "testfile$i.txt");
open FILE, ">testfile$i.txt" or die "Could not open testfile$!";

print FILE "NEW\n";
