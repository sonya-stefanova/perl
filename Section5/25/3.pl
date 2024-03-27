#!/usr/bin/perl

$val;
$highest;

while ($val = <STDIN>) {
	chomp $val;
	if ($val > $highest) {
		$highest = $val;
	}
}

print "The highest value you input is: $highest.\n";
