#!/usr/bin/perl

use strict;

my $team;
my $conference;
my $division;
my %d1;

if (@ARGV < 1) {
	print "./d1Conferences.pl <d1Conferences>\n";
	die;
}


while (<>) {
	chomp;
	if (/^Conference,(.*)$/) {
		$conference = $1;
	} elsif (/^Division,(.*)/) {
		$division = $1;
	} elsif (/^Teams,(.*)/) {
		@{$d1{$conference}{$division}} = split /,/, $1;
	}
}

&printConferenceInfo(\%d1);


sub printConferenceInfo {

my $i;
my $d1confRef = $_[0];
my $conference;
my $division;
my $team;

foreach $conference (sort keys %{$d1confRef}) {
	print "$conference\n";
	foreach $division (keys %{${$d1confRef}{$conference}}) {
		print "    $division\n";
			for ($i = 0; $i <= $#{${${$d1confRef}{$conference}}{$division}}; $i++) {
				print "\t${${${$d1confRef}{$conference}}{$division}}[$i]\n";
			}
	}
print "\n";
}
}
