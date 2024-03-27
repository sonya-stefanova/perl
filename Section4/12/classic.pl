#!/usr/bin/perl

print "Please input two integer values where each value is followed by a  return.\n";

chomp ($a = <STDIN>);
chomp ($b = <STDIN>);

print "\$a = $a\t\$b = $b\n";

$a = $a + $b;
$b = $a - $b;
$a = $a - $b;

print "\$a = $a\t\$b = $b\n";
