#!/usr/bin/perl

foreach $num (1..10) {
	@randomNumbers[$num] = int (rand (10));
}

print "@randomNumbers";


print "\n\n";
foreach $num (sort @randomNumbers) {
	print "$num ";
}
print "\n";
