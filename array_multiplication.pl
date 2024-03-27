#!/usr/bin/perl
use strict;
use warnings;

my @numbers = (1..25);
my @reversed = reverse @numbers;

while ((my $idx, my $num) = each @numbers){
	print ("Index", $idx-1, " ==> result: ", ($num * $reversed[$idx]), "\n");
}