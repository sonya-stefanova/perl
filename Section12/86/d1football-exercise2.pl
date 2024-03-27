#!/usr/bin/perl

@secEast = ( "SEC East", "Florida", "Georgia", "Kentucky", "Missouri", "South Carolina", "Tennessee", "Vanderbilt" );

@secWest = ( "SEC West", "Alabama", "Arkansas", "Auburn", "LSU", "Mississippi State", "Ole Miss", "Texas A&M" );

@sec = ( \@secEast, \@secWest );

@big10East = ( "Big 10 East", "Penn State", "Ohio State", "Michigan", "Indiana", "Maryland", "Michigan State", "Rutgers" );

@big10West = ( "Big 10 West", "Wisconsin", "Iowa", "Nebraska", "Minnesota", "Northwestern", "Illinois", "Perdue");

@big10 = ( \@big10East, \@big10West );

@accAtlantic = ( "ACC Atlantic", "Clemson", "Louisville", "Florida State", "NC State", "Wake Forest", "Syracuse", "Boston College");

@accCoastal = ( "ACC Coastal", "Virginia Tech", "North Carolina", "Miami", "Pittsburgh", "Georgia Tech", "Virginia", "Duke");

@acc = (\@accAtlantic, \@accCoastal);

@d1 = ( \@sec, \@big10, \@acc );

print "\nIn the ";
print "$d1[0]->[0]->[0] ";
print "conference, $d1[0]->[0]->[1] is the second team alphabetically\n\n";
