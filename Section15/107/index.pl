#!/usr/bin/perl

use strict;

my $string = "friendly freckled face";

my $place = index ($string, "f");		# $place == 0
print "place = $place\n";

my $place = index ($string, "f", $place + 1);	# $place == 9
print "place = $place\n";

my $place = index ($string, "f", $place + 1);	# $place == 18
print "place = $place\n";

my $place = index ($string, "f", $place + 1);	# $place == -1
print "place = $place\n\n";

# The rindex function begins its search from the end of a string.

$string = "the end of time";
my $when = rindex ($string, "e");	# $when == 14
print "when = $when\n";
