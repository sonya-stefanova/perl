#!/usr/bin/perl

use strict;
use Cwd;

if (@ARGV != 3) {
	print "./findAndLink.pl <starting dir> <[-f <filename> | -d directory name]>\n";
	exit;
} elsif ("$ARGV[1]" eq "-f" or "$ARGV[1]" eq "-d") {
	my $startingDir = $ARGV[0];
	my $arg = $ARGV[1];
	my $file = $ARGV[2];
	my $origCwd = getcwd();
	print "Directory to begin search in: '$startingDir'\n\n\n";
	&find($startingDir, $arg, $file, $origCwd, $startingDir);
} else {
	print "Incorrect flag.\n";
}

sub find
{
my $startingDir = shift @_;
my $arg = shift @_;
my $file = shift @_;
my $origCwd = shift @_;
my $relativePath = shift @_;

chdir "$startingDir" or die "Couldn't chdir into $startingDir: $!";
opendir my $dh, '.' or die "opendir failed to open '.': $!";

while (readdir $dh) {
	if (/^\./) {
		next;
	} elsif ("$arg" && /$file/) {
	print "\t******************************\n
	Got the \$arg ($arg) and the matching \$file ($_)\n
	******************************\n";
		print "$relativePath/$_\n";
		link "$_", "$origCwd/${_}_Link";
		exit;
	} elsif (-d) {
		$relativePath = "$relativePath/$_";
print "Checking directory, '$_' and \$relativePath = $relativePath.\n";
		$relativePath = &find($_, $arg, $file, $origCwd, $relativePath);	# Recursive call.
		next;
	}
}
chdir '..';	# Go back to working directory you started in.
$relativePath =~ s/(\.?.*)\/.*/$1/;
print "\$relativePath matches were: ($`)($&)($').\n";
print "Backing out to \$relativePath = $relativePath\n\n";
$relativePath;
}
