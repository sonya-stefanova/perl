#!/usr/bin/perl

use strict;

my %grades = (
	"Johnny" => 83,
	"Jane" => 92,
	"Leanne" => 88,
	"Evan" => 90,
	"William" => 92,
	"Sharon" => 80,
);

foreach (sort hash_sort keys %grades) {
	print "$_\t\t$grades{$_}\n";
}

# If grades are the same, alphabetically sort by name:

sub hash_sort {
	$grades{$b} <=> $grades{$a} or
		$a cmp $b
}
