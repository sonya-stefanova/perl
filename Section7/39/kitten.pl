#!/usr/bin/perl
use strict;

my $outputFile;
my $inputFile = $ARGV[0];

#print "\@ARGV = @ARGV\n\n\n";

if (! open INPUT, "<", "$inputFile") {
	die "Couldn't open \"$inputFile\" for input: $!";
}

if (@ARGV >= 2) {
	$outputFile = $ARGV[1];
	if (! open OUTPUT, ">", "$outputFile") {
		die "Couldn't open \"$inputFile\" for input: $!";
	}
	while (<INPUT>) {
		print OUTPUT "$_";
	}
} else {
	while (<INPUT>) {
		print;
	}
	
}

