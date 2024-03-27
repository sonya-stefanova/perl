#!/usr/bin/perl

@array = &createArray;
@array = sort @array;
print "\@array = @array\n\n";

@array = &removeDuplicates (@array);
print "\@array = @array\n\n";


sub createArray {
	foreach $num (1..10) {
		@randomNumbers[$num] = int (rand(10));
	}
	return @randomNumbers;
}


sub removeDuplicates {
	my @array = @_;
	my $i = 0;
	while ($i <= $#array) {
		if ($array[$i] == $array[$i+1]) {
			splice @array, $i, 1;
		} else {
			$i++;
		}
	}
	@array;
}
