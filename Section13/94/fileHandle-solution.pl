#!/usr/bin/perl

use strict;

my $i;

while (-e "testfile$i") {
	$i++;
}
open FILE, ">testfile$i" or die "Could not open testfile $!";

print FILE "This is a test.\n";
