#!/usr/bin/perl

use strict;

print "Enter an integer somewhere in the range of 8 to 15.\n";
chomp(my $seed = <STDIN>);

my $num = int(rand($seed));

print "\$num = $num\n"; 
