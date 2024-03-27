#!/usr/bin/perl

use strict;

die "usage: ./size <filename [filename, ...]>" if (@ARGV == 0);

foreach (@ARGV) {
	my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks) = stat ($_);
	printf "The size of $_ using the '-s' file test is %g bytes.\n", -s;
	print "The size of $_ using stat's \$size is $size bytes.\n";

	print "The ideal I/O blocksize used for $_ is $blksize and the number of 512 byte blocks used for $_ is $blocks.\n";
}
