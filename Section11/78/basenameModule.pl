#!/usr/bin/perl

use strict; 
use File::Basename ();

my $file = '/Users/darrylpace/OCS/courses/Udemy/PerlCourse/programs/part12/filetastic';

my $dir = File::Basename::dirname($file);
my $basename = File::Basename::basename($file);

print "\nDirectory name:\t$dir\nFilename:\t$basename\n";
