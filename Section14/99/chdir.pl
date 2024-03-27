#!/usr/bin/perl

use strict;

use Cwd;

print "Current Working Directory: ", getcwd(), "\n";

chdir '..' or die "Could not change to the .. directory: $!";
print "Current Working Directory is now: ", getcwd(), "\n";

my $newDir = "/tmp";

chdir "$newDir" or die "Could not change to the $newDir directory: $!";
print "Current Working Directory is now: ", getcwd(), "\n";
