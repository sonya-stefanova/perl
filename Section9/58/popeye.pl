#!/Users/darrylpace/localperl/bin/perl

$_ = "Spinach is Popeye's favorite food.";

if (/^(\w+)\s+.*\s+(\w+).$/) {
	print "Popeye ate his favorite $2 for dinner -- $1!\n";
}
