#!/usr/bin/perl

use strict;

if (@ARGV == 0) {
	print "./sprintf.pl <string.txt>\n";
	exit;
}

while (<>) {
	chomp;
	my $amount = substr ($_, index($_, 3), rindex($_, 6) + 1 - index($_, 3));
	$amount = sprintf "%5.2f\n", $amount;
	print "\$amount = $amount\n";
}

