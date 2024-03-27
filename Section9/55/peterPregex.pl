#!/usr/bin/perl

$_ = "Peter Piper picked a\npeck of pickeled peppers";

if (/peter .* peppers/isx) {
	print "Yep, Peter picked 'em!\n";
}
