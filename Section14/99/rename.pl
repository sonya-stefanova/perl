#!/usr/bin/perl

use strict;

if (@ARGV != 2) {
	print "./unlink.pl <old_filename>  <new_filename>\n";
	exit;
}

$file = pop @ARGV;

unlink $file or die "Couldn't unlink $file: $!";

