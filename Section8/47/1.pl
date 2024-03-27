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

foreach my $key (sort keys (%mckDs)) {
	printf "%${width}s\t$mckDs{$key}\n", $key;
}
