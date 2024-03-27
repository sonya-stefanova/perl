#!/usr/bin/perl

if (@ARGV == 0) {
	print "Usage: ./daysSinceMod.pl <filename [filename...]>\n";
	die;
}

foreach (@ARGV) {
	print "$_ was modified ", -M, " days ago.\n";
}
