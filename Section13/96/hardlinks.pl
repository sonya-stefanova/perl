#!/usr/bin/perl

use strict; 

die "./bitwise.pl <file_name>" if (@ARGV == 0);

my $file = $ARGV[0];

foreach (@ARGV) {
	my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks) = stat ($_);

	if ($nlink == 1) {
		print "There is $nlink hardlink for $_.\n";
	} else {
		print "There are $nlink hardlinks for $_.\n";
	}
	printf "The device and inode numbers for $_ are $dev and $ino, respectively\n";

}
