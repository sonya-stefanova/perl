#!/usr/bin/perl

use strict; 

die "./bitwise.pl <file_name>" if (@ARGV == 0);

my $file = $ARGV[0];


my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks) = stat ($file);

print "mode = $mode\n";
printf "mode in binary = %b\n", $mode;
printf "mode in octal = %o\n", $mode;
printf "mode in hex = %x\n", $mode;
printf "mode in hex = %X\n", $mode;

if ($mode & 0001) {
	print "$file is world executable.\n";
}

if ($mode & 0002) {
	print "$file is world writable.\n";
}

if ($mode & 0004) {
	print "$file is world readable.\n";
} 
