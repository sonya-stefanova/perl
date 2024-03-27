#!/usr/bin/perl

my @grades = qw( 97 83 100 62 78 85 72 93 89 65 );

my $grades = \@grades;

if (@{ $grades } == @grades) {
	print "the first grade is ${$grades}[0]\n";
}
