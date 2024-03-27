#!/usr/bin/perl

use strict;
use Cwd;

my $arg;
my $file;
my $directory;

if (@ARGV != 3) {
	print "./find.pl <starting dir> <[-f <filename> | -d directory name]>\n";
	exit;
} elsif ("$ARGV[1]" eq "-f" or "$ARGV[1]" eq "-d") {
	$directory = $ARGV[0];
	$arg = $ARGV[1];
	$file = $ARGV[2];
	print "Directory to begin search in: '$directory'\n";
	&find($directory, $arg, $file);
} else {
	print "Incorrect flag.\n";
}

sub find
{
my $dir = shift @_;
my $arg = shift @_;
my $file = shift @_;
my $relativePath .= $dir;

chdir "$dir" or die "Couldn't chdir into $dir: $!";
#opendir my $dh, '.' or die "opendir failed to open '.': $!";

#while (readdir $dh) {
foreach (glob '*') {
	if (/^\./) {
		next;
	} elsif ("$arg" && /$file/) {
		print getcwd(), "/$_\n";
#		exit;
	} elsif (-d) {
#print "Checking directory, '$_'\n";
		&find($_, $arg, $file);	# Recursive call.
		next;
	}
}
chdir '..';	# Go back to working directory you started in.
}
