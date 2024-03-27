#!/usr/bin/perl

use strict;

my @values;

if (@ARGV == 1 and "$ARGV[0]" =~ /listOf(Numerical)?Values/) {
	while (<>) {
		if (/^X\d+/ or /^\d+/) {
			push @values, $_;
		}
	}
} else {
	print "syntax: ./sortListOfValues.pl <listOfNumericalValues | listOfValues>\n";
	exit;
}

print sort by_numbers (@values), "\n";

sub by_numbers {

(my $a1, my $a2) = split /\-/, $a;
(my $b1, my $b2) = split /\-/, $b;

if ($a1 =~ /^\d/ and $b1 =~ /^X/) {
	$a1 cmp $b1;
} elsif ($a1 =~ /^\d/ and $b1 =~ /^\d/) {
	if ($a1 == $b1) {
		$a2 <=> $b2;
	} else {
		$a1 <=> $b1;
	}
} elsif ($a1 =~ /^X/ and $b1 =~ /^\d/) {
	$a1 cmp $b1;
} elsif ($a1 =~ /^X/ and $b1 =~ /^X/) {
	# strip leading ‘X’ from a_ch and b_ch
	$a1 =~ s/^X(\d+)/$1/;
	$b1 =~ s/^X(\d+)/$1/;
	if ($a1 == $b1) {
		$a2 <=> $b2;
	} else {
		$a1 <=> $b1;
	}
}
}
