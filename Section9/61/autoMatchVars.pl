#!/Users/darrylpace/localperl/bin/perl

$_ = "one two three";

if (/\s\w+\s/) {
	print "Before match:($`)\nMatch: ($&)\nAfter match: ($')\n";
}
