#!/usr/bin/perl

print "Is it hot, cold, or warm where you are?\n";
chomp (my $temp = <STDIN>);

if ($temp =~ /hot/) {
	print "It's getting $temp in here!\n";
} else {
	print "That's too bad...\n";;;
}
