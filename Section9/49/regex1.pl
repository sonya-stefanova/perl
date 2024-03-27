#!/usr/bin/perl

use strict;

my $i = 1;
while (<>) {
	print "$i) ";
	if (/Perl is (so,? *)+ cool!/) {
		print "Successful match!-->", $_;
	} else {
		print "There is no match\n";
	}
	$i++;
}
