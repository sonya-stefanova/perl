#!/usr/bin/perl

use strict;

my @numbers = (1..40);

foreach (sort @numbers) {
	print "$_\n";
}
