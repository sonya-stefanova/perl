#!/usr/bin/perl

use strict;

my $numTries;

print "Enter an integer somewhere in the range of 10 to 20.\n";
chomp(my $seed = <STDIN>);

print "I'm thinking of a number between 0 and $seed.  Guess what it is!\n";
my $num = int(rand($seed));

#print "The number was $num\n";
while (1) {
	chomp (my $guess = <STDIN>);
	$numTries++;

	$guess == $num || print "Nope.  Guess again.\n";
	$guess == $num && last;
}

print "Correct! You guesed in $numTries ", $numTries > 1 ? "tries" : "try", "\n"; 
