#!/Users/darrylpace/localperl/bin/perl

$_ = "The litle girl screamed , \"weeeeee\", as she slid down the sliding board.\n";

if (/(we{2,5})\b/) {
	print "$1 is a common exclamation when utilizing a sliding board.\n";
}
