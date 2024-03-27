#!/usr/bin/perl

@values = split /,/, "5,4,3,2,1";
print "@values\n";

my $add = join "+", @values;
print "$add\n";
