#!/usr/bin/perl

use strict;

print "\nEnter lines of input.  Once you're finished, enter ctl-d if you're on a Linux/Unix host.\n";
print "Enter ctl-c if you're on a Windows computers.\n\n";


#foreach (reverse <>) {
#	print ;
#}

my @lines = reverse <STDIN>; 


while (@lines) {
    print(shift @lines);
}