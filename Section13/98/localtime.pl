#!/usr/bin/perl

use strict; 

my @months = qw(Jan Fed Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
my @weekdays = qw(Sunday Monday Tuesday Wednesday Thursday Friday Saturday);

die "./bitwise.pl <file_name>" if (@ARGV == 0);

my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks) = stat ($ARGV[0]);

my($asec, $amin, $ahour, $aday, $amon, $ayear, $awday, $ayday, $aisdst) = localtime ($atime);
my($msec, $mmin, $mhour, $mday, $mmon, $myear, $mwday, $myday, $misdst) = localtime ($mtime);
my($csec, $cmin, $chour, $cday, $cmon, $cyear, $cwday, $cyday, $cisdst) = localtime ($ctime);

print "atime = $ahour:$amin.$asec on $weekdays[$awday], $months[$amon] $aday, ", 1900+$ayear, "\n";
print "mtime = $mhour:$mmin.$msec on $weekdays[$mwday], $months[$mmon] $mday, ", 1900+$myear, "\n";
print "ctime = $chour:$cmin.$csec on $weekdays[$cwday], $months[$cmon] $cday, ", 1900+$cyear, "\n";
