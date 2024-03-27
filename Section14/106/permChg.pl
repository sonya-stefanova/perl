#!/usr/bin/perl

use strict;
use Cwd;

my $arg;
my $file;
my $directory;

if (@ARGV != 1) {
	print "./permChg.pl <starting dir>\n";
	exit;
} else {
	$directory = $ARGV[0];
	&chgPerms($directory);
}

sub chgPerms
{
my $dir = shift @_;

chdir "$dir" or die "Couldn't chdir into $dir: $!";
opendir my $dh, '.' or die "opendir failed to open '.': $!";

while (readdir $dh) {
	if (/^\./) {
		next;
	} elsif (-f && /\.csv/) {
		chmod 0664, "$_";
	} elsif (-d) {
print "Checking directory, '$_'\n";
		&chgPerms($_);		# Recursive call.
		next;
	}
}
chdir '..';	# Go back to working directory you started in.
}
