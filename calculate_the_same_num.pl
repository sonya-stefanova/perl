#!/usr/bin/perl
use strict;
use warnings;

chomp ($num1 = <STDIN>);
chomp ($operator = <STDIN>);

$result;

if ($operator eq "+"){
	$result = $num1+$num1;

}elsif ($operator eq "-"){
	$result = $num1-$num1;

}elsif ($operator eq "*"){
	$result = $num1*$num1;

}elsif ($operator eq "/"){
	$result = $num1/$num1;

}elsif ($operator eq "%"){
	$result = $num1%$num1;

}elsif ($operator eq "x"){
	$result = $num1 x $num1;

}elsif ($operator eq "."){
	$result = $num1.$num2;

}

print "The result is: ", $result, "\n";