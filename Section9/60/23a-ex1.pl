#!/usr/bin/perl

use strict;

while (<>) {
   if (/^(hide)(.*)/) {
	print "slide$2\n";
   }
}
