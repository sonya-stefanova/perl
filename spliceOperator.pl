#!/usr/bin/perl

@numbers = (1, 2, 3, 4, 5, 6);

splice @numbers, 2, 4, 55..59;
print "\@numbers  = @numbers\n";

splice @numbers, 0, 1, "hello";
print "\@numbers  = @numbers\n";

splice @numbers, 4, 1, "bla";
print "\@numbers  = @numbers\n";

splice @numbers, 4, 1;
print "\@numbers  = @numbers\n";

splice @numbers, 2, 2;
print "\@numbers  = @numbers\n";

splice @numbers, 2;
print "\@numbers  = @numbers\n";

$hello = @numbers[0];
print "$hello\n" ;

$last = $#numbers;
print "The last index is $last\n";
print "The last element is $numbers[-1]\n";
print "The last element is $numbers[$#numbers]\n";
$popp = pop @numbers;
print "$popp\n";
print @numbers;