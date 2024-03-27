#!/usr/bin/perl

use strict;

$_ = "Peter Piper picked a peck of pickled peppers.";

if (m|Peter|) {
	print "That matched!\n";
}

$_ = "http://optimalcomputersinc.com";
if (m<http://>) {
	print "That matched too!\n";
}
