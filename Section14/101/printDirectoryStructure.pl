#!/usr/bin/perl

use strict;
use Cwd;

my $directory;

if (! @ARGV) {
	$directory = '.';
} elsif (@ARGV == 1) {
	$directory = $ARGV[0];
} else {
	print "./printDirStructure.pl <directory>\n";
	exit;
}

&printDirStructure($directory);

sub printDirStructure
{
my $dir = pop @_;

chdir "$dir" or die "Couldn't chdir into $dir: $!";
print getcwd(), "\n";
opendir my $dh, '.' or die "opendir failed to open '.': $!";

while (readdir $dh) {
	if (/^\.{1,2}\Z/) {		# Skip . and .. directories.
		next;
	} elsif (-d) {
		&printDirStructure($_);	# Recursive call.
		next;
	}
}
chdir '..';	# Go back to working directory you started in.
}
