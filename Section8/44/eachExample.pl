#!/usr/bin/perl

my %sb_champs = ("1967"=> "Green Bay",
		"1968"=> "Green Bay",
		"1969"=> "New York Jets",
		"1970"=> "Kansas City");


while ((my $year, my $team) = each %sb_champs) {
	print "In $year, the Super Bowl champion was $team.\n";
}
