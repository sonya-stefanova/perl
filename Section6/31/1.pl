#!/usr/bin/perl

$num = &getNumber;
$divisor = &getSmallestDivisor($num);

print "The smallest divisor of $num is $divisor\n";

sub getNumber {
	print "What number do you want the smallest divisor of?\n";
	chomp ($num = <STDIN>);
	return $num;
}


sub getSmallestDivisor {
	$remainder = 1;
	$divisor = 2;
	while ($remainder) {
		$remainder = $num % $divisor;
		if ($remainder) {
			$divisor++;
		}
	}
	return $divisor;
}
