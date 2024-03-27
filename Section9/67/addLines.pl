#!/usr/bin/perl

use strict;

my $i;
my $sum = 0;
my @line;
my $lineNo;

if (! open OPFILE, ">outputFile") {
	die "Couldn't open \"outputFile\" file for writing: $!";
}

while (<>) {
	chomp;
	if (/^"\d+"/) {
		@line = split /,/, $_;
		$lineNo = $line[0];
		for ($i = 2; $i <= $#line; $i++) {
			$sum += $line[$i];
		}
		print OPFILE "$lineNo\t$sum\n";
		print "$lineNo\t$sum\n";
		$sum = 0;
	}
}
