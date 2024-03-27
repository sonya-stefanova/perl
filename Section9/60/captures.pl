#!/usr/bin/perl

use strict;

while (<>) {
   if (/^(text)  (.*)/isx) {
	print "EDIT --> The text$2\n";
   }else{
   print "No match\n";}
}
