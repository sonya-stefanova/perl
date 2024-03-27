#!/usr/bin/perl

for (1..300000) {
@array = (1..25);

foreach $element (@array) {
	if ($element % 2 == 0) {
		print "$element  ";
	}
}
print "\n";

foreach $element (@array) {
	if ($element % 2 == 1) {
		print "$element  ";
	}
}
}
print "\n";
