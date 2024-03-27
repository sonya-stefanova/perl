#!/usr/bin/perl

use strict;

while (<>) {
	if (/^(\d{4}\/\d{2}\/\d{2})\s(\d{2}:\d{2}:\d{2})\s\-\s(\d{4}\/\d{2}\/\d{2})\s(\d{2}:\d{2}:\d{2})\s\-\sSN:(\d+)/) {
		print "Start Date:\t$1\nStart Time:\t$2\nEnd Date:\t$3\nEnd Time:\t$4\nSerial Number:\t$5\n";
	}
}
