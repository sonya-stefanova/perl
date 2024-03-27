#!/usr/bin/perl

$_ = "all caps\n";
s/(.*)/\U$1/;
print;

$_ = "LOWER CASE\n";
s/(.*) +(.*)\n/\L$1 \E$2/;
print;

print "\n";
$_ = "mr. mike masters\n";
s/(.*)/\u$1/g;
print;

s/(.*)/\l$1/g;
print;
