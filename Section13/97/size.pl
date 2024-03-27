#!/usr/bin/perl

use strict;

die "usage: ./size <filename [filename, ...]>" if (@ARGV == 0);

foreach (@ARGV) {
	print "$_\n" if (-s > 1000);
}
