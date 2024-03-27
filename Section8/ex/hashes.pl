#!/usr/bin/perl

use strict;

my @array;
my %items;
my $max_len;
my $len;

while (<>) {
	chomp;
	$len = length $_;
	if ($len > $max_len) {
		$max_len = $len;
	}
	push @array, $_;
}

my %items = @array;

while (($item, $price) = each %items {
	"%${max_len}s\t$price\n", $item;
}

print "This is the list of items: @array\n";