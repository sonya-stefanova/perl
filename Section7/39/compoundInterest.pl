#!/usr/bin/perl

$answer = "y";
while ("$answer" eq "y") {
	($principal, $intRate, $num, $years) = &getInfo;

	$value = &compoundInterest($principal, $intRate, $num, $years);

	printf "\nThe value of your investment after $years years will be \$%.2f\n", $value;
	printf "That is \$%.2f above your principal investment or loan.\n\n", $value - $principal;
	print "\nWould you like to run another compound interest calulation (y/n)?\n";
	chomp ($answer = <STDIN>);
}

sub getInfo {
	print "What is the principal investment amount?\n";
	chomp ($principal = <STDIN>);
	print "What is the annual interest rate?\n";
	chomp ($intRate = <STDIN>);
	print "How many times is the interest compounded per year?\n";
	chomp ($num = <STDIN>);
	print "How many years is the money invested or borrowed for?\n";
	chomp ($years = <STDIN>);

	($principal, $intRate, $num, $years);
}

sub compoundInterest {
#print "Num of entries in \@_ array is $#_\n";
	my $P = shift;
	my $r = shift;
	my $r = $r/100;
	my $n = shift;
	my $t = shift;

	$P*(1 + $r/$n)**($n*$t);
}
