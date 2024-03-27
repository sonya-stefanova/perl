#!/usr/bin/perl


@d1 = ( [ "SEC",
	  [ "SEC East", "Florida", "Georgia", "Kentucky", "Missouri", "South Carolina", "Tennessee", "Vanderbilt" ], 
          [ "SEC West", "Alabama", "Arkansas", "Auburn", "LSU", "Mississippi State", "Ole Miss", "Texas A&M" ]
	],
	[ "Big 10",
	  [ "Big 10 East", "Penn State", "Ohio State", "Michigan", "Indiana", "Maryland", "Michigan State", "Rutgers" ],
          [ "Big 10 West", "Wisconsin", "Iowa", "Nebraska", "Minnesota", "Northwestern", "Illinois", "Perdue" ] 
	], 
	[ "ACC",
	  [ "ACC Atlantic", "Clemson", "Louisville", "Florida State", "NC State", "Wake Forest", "Syracuse", "Boston College" ],
          [ "ACC Coastal", "Virginia Tech", "North Carolina", "Miami", "Pittsburgh", "Georgia Tech", "Virginia", "Duke" ]
	]

 );

print "$d1[2][1][5]\n";
