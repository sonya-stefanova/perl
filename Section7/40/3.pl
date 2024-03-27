#!/usr/bin/perl

use strict;

my $i = 1;
my @array;

while ($i <= 20) {
	my $random_number = int(rand(20)) + 1;
	push @array, $random_number;
	$i++;
}

print "12345678901234567890\n";

foreach my $num(@array) {
	my $format = $num;
	printf "%${format}d\n", $num;
}
