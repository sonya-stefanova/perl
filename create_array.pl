#!/usr/bin/perl
use strict;
use warnings;

my @num = reverse(18..20);
my $size = scalar @num;
print "The size of the array is: $size and the items are as follows:\n@num\n";