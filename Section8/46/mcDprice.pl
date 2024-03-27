#!/usr/bin/perl

use strict;

my $i = 0;
my $key;
my $value;
my @mcDsPrices;
my %mcDsPrices;

while (<>) {			# Read in the mcDs1perLine file
	chomp;
	$mcDsPrices[$i] = $_;
	$i++;
}

%mcDsPrices = (@mcDsPrices);

while (($key, $value) = each %mcDsPrices) {
	print "The price of $key is $value\n";
}
