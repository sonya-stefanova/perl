#!/usr/bin/perl

@numbers = (1, 2, 5, 7, 9);

splice @numbers, 2, 3, 3..12;
print "\@numbers = @numbers\n";

splice @numbers, 0, 1, "partridge";
print "\@numbers = @numbers\n";

splice @numbers, 4, 1, "golden rings";
print "\@numbers = @numbers\n";

splice @numbers, 11, 1, "drummers drumming";
print "\@numbers = @numbers\n";

splice @numbers, 0, 12, 1..12;
print "\@numbers = @numbers\n";
