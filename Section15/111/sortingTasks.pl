#!/usr/bin/perl

use strict;

my @nums = (1..20);
my @numbersAscending = (sort { $a <=> $b } @nums);
my @numbersDescending = (sort { $b <=> $a } @nums);

print "\@sortedAsc => ",  join("--", @numbersAscending), "\n";
print "\@sortDesc => ", join("--", @numbersDescending), "\n"; 


for (my $i = 0; $i <= $#numbersAscending; $i++) {
	print "$numbersAscending[$i]-->$numbersDescending[$i]\n";
}


while ((my $i, my $value) = each @numbersAscending) {
    print "the value of ascending: $value corresponds to: $numbersDescending[$i]\n";
}