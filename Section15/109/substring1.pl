#!/usr/bin/perl

use strict;

my $string = 'Supercalifragilisticexpialidocious';
my $subString = substr ($string, index($string, "c"), 4);
print "I'm goin' back to $subString!\n";

my $last_c = rindex ($string, "c");
my $ending = substr($string, $last_c);
print "Was the food atro$ending or deli$ending?\n";
