#!/usr/bin/perl

#Jane	92
#William	92
#Evan	90
#Leanne	88
#Johnny	83
#Sharon	80

my %grades = (
	Sharon => 80,
	Jane => 92,
	Leanne => 88,
	William => 92,
	Evan => 90,
	Johnny => 83,
);

foreach (sort hash_values keys %grades) {
	print "$_\t $grades{$_}\n";
}

sub hash_values {
	$grades{$b} <=> $grades{$a}
}
