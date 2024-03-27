#!/usr/bin/perl

use strict;
my $place;

my $string = "Supercalifragilisticexpialidocious";

$place = index($string, "i");
print "The letter 'i' in 'Supercalifragilisticexpialidocious' is located at positions\n\t$place";
while ($place >= 0) {
	$place = index($string, "i", $place + 1);
	if ($place != -1) {
		print ", $place ";
	}
}
print "\n";
