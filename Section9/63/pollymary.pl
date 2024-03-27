#!/usr/bin/perl

use strict;

while (<>) {
	if (/mary.*polly|polly.*mary/i) {
		print;
	}
}
