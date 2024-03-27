#!/usr/bin/perl

use strict;

my @numbers = (0..40);
my @numbersAscending = (sort { $a <=> $b } @numbers);
my @numbersDescending = (sort { $b <=> $a } @numbers);

for (my $i = 0; $i <= $#numbersAscending; $i++) {
	print "$numbersAscending[$i]\t$numbersDescending[$i]\n";
}
