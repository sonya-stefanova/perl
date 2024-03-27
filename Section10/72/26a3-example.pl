#!/usr/bin/perl

use strict;

my $i;
my $num;

while (<>) {
   chomp ($num = $_);
   for ($i = 0; $i <= $num; $i++) {
      if ($i == 2) {
	print "double the fun\n";
	next;
      }
      else {
	print "$i\n";
      }
   }
   last if ($i == 7);
   print "\n";
}
