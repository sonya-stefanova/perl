#!/usr/bin/perl
use strict;
use warnings;

my @nums = (1..20);
my @evens = ();
my @odds = ();

foreach my $num(@nums){
	if ($num %2 ==0){
		push @evens, $num;
	}else{
		push @odds, $num;
	}
}

print "@evens", "\n";
print "@odds", "\n";