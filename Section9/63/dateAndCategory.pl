#!/usr/bin/perl

use strict;

my @categories;

while (<>) {
	if (/^(\d{4}\/\d{2}\/\d{2})\s(\d{2}:\d{2}:\d{2})\s\-\s(\d{4}\/\d{2}\/\d{2})\s(\d{2}:\d{2}:\d{2})\s\-\sSN:(\d+)/) {
		print "Start Date:\t$1\nStart Time:\t$2\nEnd Date:\t$3\nEnd Time:\t$4\nSerial Number:\t$5\n";
	} elsif (/^----\s(.*)\s----/) {
		push @categories, $1;
	}
}

print "\nData Categories\n";
foreach (@categories) {
	print "\t$_\n";
}
