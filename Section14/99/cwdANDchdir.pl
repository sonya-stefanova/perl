#!/usr/bin/perl

use strict;
use Cwd;

print "The CWD is: ", getcwd(), "\n";

while (1) {
	print "\nWould you like to change the CWD?  If so, enter the desired CWD.  Else, just hit the 'enter' key.\n";

	chomp(my $answer = <STDIN>);

	if ($answer) {
		chdir "$answer" or die "Couldn't change to directory '$answer': $!";
		print "The CWD is now: ", getcwd(), "\n\n";
	} else {
		last;
	}
}
