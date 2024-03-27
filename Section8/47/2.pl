#!/usr/bin/perl

use strict;

my @array;
my %mckDs;
my $width;
my $length;

while (<>) {
	chomp;
	$length = length $_;
	if ($length > $width) {
		$width = $length;
	}
	push @array, $_;
}

my %mckDs = @array;

while (my($key, $value) = each %mckDs) {
	printf "%${width}s\t$value\n", $key;
}
