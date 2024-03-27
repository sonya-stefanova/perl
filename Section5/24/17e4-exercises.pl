#!/usr/bin/perl

@array = (1..25);
@reverseArray = reverse @array = (1..25);

while (($index, $num) = each @array) {
	print "Index $index.\t", $num * $reverseArray[$index], "\n";
}
