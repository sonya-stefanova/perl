#!/usr/bin/perl

use strict; 

die "./bitwise.pl <file_name>" if (@ARGV == 0);

my $file = $ARGV[0];

foreach (@ARGV) {
	my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks) = stat ($_);

	printf "mode in octal = %o\n", $mode;
	printf "mode in binary = %b\n", $mode;
#	printf "mode in hex = %X\n", $mode;

	if ($mode & 000001) {
		print "$_ is world executable.\n";
	}

	if ($mode & 000002) {
		print "$_ is world writable.\n";
	}

	if ($mode & 000004) {
		print "$_ is world readable.\n";
	} 

	if ($mode & 000010) {
		print "$_ is group executable.\n";
	}

	if ($mode & 000020) {
		print "$_ is group writable.\n";
	}

	if ($mode & 000040) {
		print "$_ is group readable.\n";
	} 
}
