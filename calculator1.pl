#!/usr/bin/perl

chomp ($num1 = <STDIN>);
chomp ($operator = <STDIN>);
chomp ($num2 = <STDIN>);

$result;

if ($operator eq "+"){
	$result = $num1+$num2;

}elsif ($operator eq "-"){
	$result = $num1-$num2;

}elsif ($operator eq "*"){
	$result = $num1*$num2;

}elsif ($operator eq "/"){
	$result = $num1/$num2;

}elsif ($operator eq "%"){
	$result = $num1%$num2;

}elsif ($operator eq "x"){
	$result = $num1 x $num2;

}elsif ($operator eq "."){
	$result = $num1.$num2;

}

print "The result is: ", $result, "\n";