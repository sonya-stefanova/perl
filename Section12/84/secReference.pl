#!/usr/bin/perl

@secEast = ( "Florida", "Georgia", "Kentucky", "Missouri", "South Carolina", "Tennessee", "Vanderbilt" );

@secWest = ( "Alabama", "Arkansas", "Auburn", "LSU", "Mississippi State", "Ole Miss", "Texas A&M" );

@sec = ( \@secEast, \@secWest );

print "${$sec[0]}[0]\n";
