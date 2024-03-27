#!/usr/bin/perl

while (1) {
	chomp ($num1 = <STDIN>);
	if ($num1 eq 'q') {
		exit;
	}

	chomp ($operator = <STDIN>);
	if ("$operator" eq 'q') {
		exit;
	}

	chomp ($num2 = <STDIN>);
	if ("$num2" eq 'q') {
		exit;
	}

	if ($operator eq '+') {
		$result = $num1 + $num2;
	} elsif ($operator eq '-') {
		$result = $num1 - $num2;
	} elsif ($operator eq '*') {
		$result = $num1 * $num2;
	} elsif ($operator eq '**') {
		$result = $num1 ** $num2;
	} elsif ($operator eq '/') {
		$result = $num1 / $num2;
	} elsif ($operator eq '%') {
		$result = $num1 % $num2;
	} elsif ($operator eq '.') {
		$result = $num1 . $num2;
	} elsif ($operator eq 'x') {
		$result = $num1 x $num2;
	}

print "= $result\n\n\n";
}
