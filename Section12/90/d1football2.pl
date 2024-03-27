#!/usr/bin/perl

@accAtlantic = ( "ACC Atlantic", "Clemson", "Louisville", "Florida State", "NC State", "Wake Forest", "Syracuse", "Boston College");
@accCoastal = ( "ACC Coastal", "Virginia Tech", "North Carolina", "Miami", "Pittsburgh", "Georgia Tech", "Virginia", "Duke");
@acc = (\@accAtlantic, \@accCoastal);


@big10East = ( "Big 10 East", "Penn State", "Ohio State", "Michigan", "Indiana", "Maryland", "Michigan State", "Rutgers" );
@big10West = ( "Big 10 West", "Wisconsin", "Iowa", "Nebraska", "Minnesota", "Northwestern", "Illinois", "Perdue");
@big10 = ( \@big10East, \@big10West );


@big12Teams = ( "Big 12", "Oklahoma", "Oklahoma State", "West Virginia", "Kansas State", "TCU", "Texas", "Texas Tech", "Baylor", "Iowas State", "Kansas" );
@big12 = ( \@big12Teams );


@conferenceUSAeast = ( "Conference USA East", "Western Kentucky", "Old Dominion", "Middle Tennessee", "Florida Intl", "Charlotte", "Florida Atlantic", "Marshall" );
@conferenceUSAwest = ( "Conference USA West", "Louisiana Tech", "Texas San Antonio", "Southern Mississippi", "North Texas", "Rice", "UTEP" );
@conferenceUSA = ( \@conferenceUSAeast, \@conferenceUSAwest );


@secEast = ( "SEC East", "Florida", "Georgia", "Kentucky", "Missouri", "South Carolina", "Tennessee", "Vanderbilt" );
@secWest = ( "SEC West", "Alabama", "Arkansas", "Auburn", "LSU", "Mississippi State", "Ole Miss", "Texas A&M" );
@sec = ( \@secEast, \@secWest );


@d1 = ( \@acc, \@big10, \@big12, \@conferenceUSA, \@sec );

foreach $conference (@d1) {
	foreach $division (@{$conference}) {
		print "${$division}[0]\n";
		for ($i = 1; $i <= $#$division; $i++) {
			print "\t$$division[$i]\n";
		}
	}
	print "\n";
}
