#!/usr/bin/perl

use strict;

my @lines;

print "Enter a series of strings, each on a separate line.\n\n";
while (<>) {
	chomp;
	push @lines, $_;
}

print "0123456789012345678901234567890123456789\n";
foreach my $line(@lines) {
	printf "This is the string: %15s\n", $line ;
}
