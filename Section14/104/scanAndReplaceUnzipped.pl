#!/usr/bin/perl

use strict;
use Cwd;

my $directory;

if (! @ARGV) {
	$directory = '.';
} elsif (@ARGV == 1) {
	$directory = $ARGV[0];
} else {
	print "./scanAndReplace.pl <directory>\n";
	exit;
}

&scanAndReplace($directory);

sub scanAndReplace
{
my $dir = pop @_;

chdir "$dir" or die "Couldn't chdir into $dir: $!";
opendir my $dh, '.' or die "opendir failed to open '.': $!";

print "CWD is ", getcwd(), "\n";

while (readdir $dh) {
	if (/^\.{1,2}\Z/) {		# Skip . and .. directories.
		next;
	} elsif (/\.csv/) {
		&changeSerialNumber($_);
	} elsif (-d) {
		&scanAndReplace($_);	# Recursive call.
		next;
	} else {
		print "Skipping file '$_' in directory $dir.\n";
		next;
	}
}
chdir '..';	# Go back to working directory you started in.
}

#========================================================================
sub changeSerialNumber
{
$ARGV[0] = pop @_;
my $file = $ARGV[0];

#open my $fh, "$file" or die "Couldn't open file '$file' in changeSerialNumber subroutine: $!";

$^I = ".bak";		# Perl's special little trick
while (<>) {
	s/(^Serial number\s:\s)\S{5,6}(\(RAID\d+\))/$1xxxxx$2/;
	print;
}
unlink "$file.bak" or die "Failed to unlink $file.bak: $!";
}
