#!/usr/bin/perl

use strict;

my @values;

if (@ARGV == 1 and "$ARGV[0]" =~ /listOf(Numerical)?Values/) {
	while (<>) {
		if (/^\d+/) {
			push @values, $_;
		}
	}
} else {
	print "syntax: ./sortListOfValues.pl <listOfNumericalValues | listOfValues>\n";
	exit;
}

foreach (sort by_ch_and_sec (@values)) {
	print "$_";
}


sub by_ch_and_sec {

(my $a1, my $a2) = split /\-/, $a;
(my $b1, my $b2) = split /\-/, $b;

if ($a1 == $b1) {
	$a2 <=> $b2;
} else {
	$a1 <=> $b1;
}
}
