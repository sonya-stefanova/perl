#!/usr/bin/perl

use strict;

my @arguments;
my @arg;
my $global;
my $phrase;
my $newPhrase;
my $s;

$_ = shift @ARGV;	# Place first command line argument into $_
s/'//g;			# Get rid of single quotes, which leaves: s/phrase/newPhrase/

($s, $phrase, $newPhrase, $global) = split /\//, $_;	# Split the command line argument to get phrase and newPhrase

while (<>) {
	if (($global eq "gi") || ($global eq "ig")) {
		s/$phrase/$newPhrase/gi;
	} elsif ($global eq "g") {
		s/$phrase/$newPhrase/g;
	} else {
		s/$phrase/$newPhrase/;
	}
	print;
}
