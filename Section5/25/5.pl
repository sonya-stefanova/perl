#!/usr/bin/perl

foreach $num (1..10) {
	@randomNumbers[$num] = int (rand (10));
}

foreach $num (@randomNumbers) {
	print "$num ";
	while ($i < $num) {
		print "* ";
		$i++;
	}
	$i = 0;
	print "\n";
}
print "\n";
