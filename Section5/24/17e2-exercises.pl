#!/usr/bin/perl

@array = (1..25);
@array = reverse @array = (1..25);

print "\@array contains ", scalar @array, " elements.  They are\n@array\n";
