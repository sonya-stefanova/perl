#!/usr/bin/perl

use strict; 

while (<>) {
	if (/([a-zA-Z])\1/) {
		print;
	}
}
