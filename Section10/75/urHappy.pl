#!/usr/bin/perl

print "If you're happy, enter a '1'.  If not, enter a '0'\n\n";
chomp(my $urHappy = <STDIN>);

print "If you're absolutely SURE of your answer, enter a '1'.  Otherwise, enter a '0'\n\n";

chomp(my $uKnowIt = <STDIN>);

#if (($urHappy) && ($uKnowIt)) {
#	&clapUrHands;
#	exit;
#}

if (($urHappy) || ($uKnowIt)) {
	&stompUrFeet;
}

sub clapUrHands {
	print "\a\a\a\a\a\a\a";
}

sub stompUrFeet {
	print "\a\a\a\a\a\a\a\a\a\a\a\a\a\a";
}


my $value = $first || (2 + 3);

$weight > $goal && &diet;
$weight > $goal and &diet;
($weight > $goal) && (&diet);


