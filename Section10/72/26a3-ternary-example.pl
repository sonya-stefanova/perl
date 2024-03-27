#!/usr/bin/perl

use strict;

print "Are you full?  If you are, enter a 1.  If you're hungry, enter a 0.\n";
chomp (my $full = <STDIN>);

print "\n";
if (! $full) {
	&eatFood;
} else {
	print "Cool\n\n";
}

sub eatFood {

  print "Hamburger\nFries\nMilkshake\nDown the hatch!\n\n";
}
