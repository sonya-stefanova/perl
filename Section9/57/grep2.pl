#!/usr/bin/perl

use strict;

my $word;
my $file;
my $modifier;

if (@ARGV == 3) {
	$modifier = 1;
	shift @ARGV;
} 

print "\n";
$word = shift @ARGV;
if ($modifier) {
	while (<>) {
		if (/$word/i) {
			print;
		}
	}
} else {
	while (<>) {
		if (/$word/) {
			print;
		}
	}
}
print "\n";
