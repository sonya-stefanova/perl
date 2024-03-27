#!/usr/bin/perl

use strict;

if (@ARGV != 1) {
	print "./unlink.pl <file>\n";
	exit;
}

$file = pop @ARGV;

unlink $file or die "Couldn't unlink $file: $!";

