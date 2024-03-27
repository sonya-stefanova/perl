#!/usr/bin/perl

use strict;
my $place;

my $string = "Supercalifragilisticexpialidocious";

$place = rindex($string, "c");
print "The letter 'c' in 'Supercalifragilisticexpialidocious' is located at positions\n\t$place";
while ($place >= 0) {
	$place = rindex($string, "c", $place - 1);
	if ($place != -1) {
		print ", $place ";
	}
}
print "\n";
