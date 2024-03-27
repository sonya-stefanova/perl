#!/usr/bin/perl

my $word;

print "What word would you like to search for in the file?\n";
chomp ($word = <STDIN>);

while (<>) {
	if (/$word/) {
		print;
	}
}
