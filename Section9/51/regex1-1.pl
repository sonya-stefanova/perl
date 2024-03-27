#!/usr/bin/perl

my $lineno = 1;
while (<>) {
	print "$lineno) ";
	if (/Te(.)\1e(s)\2(.)\3/) {
		print;
		next;
	} else {
		print "\n";
	}
	$lineno += 1;
}
