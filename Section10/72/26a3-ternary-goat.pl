#!/usr/bin/perl

use strict;

my $brady = 'Tom Brady';
my $montana = 'Joe Montana';

my $goat = $brady gt $montana ? $brady : $montana;

print "The G.O.A.T. is $goat!\n";
