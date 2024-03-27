#!/usr/bin/perl
use strict;


foreach (<>){
	chomp;
	printf "This is the string: %15s\n", $_ ;
}