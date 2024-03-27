#!usr/bin/perl

use strict;
my @products_prices;


while (<>){
	chomp;
	push products_prices, $_;
}

print "@products_prices\n";