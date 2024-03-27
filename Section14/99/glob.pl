#!/usr/bin/perl

use strict;

my @files = glob'.* *';
print "@files\n";

@files = <.* *>;
print "@files\n";

@files = glob '[cd]*';
print "@files\n";
