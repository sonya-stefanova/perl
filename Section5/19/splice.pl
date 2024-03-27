#!/usr/bin/perl

@numbers = (1, 2, 5, 7, 9);
@others = splice @numbers, 2, 2;

print "\@others = @others\n";


@numbers = (1, 2, 5, 7, 9);
splice @numbers, 2, 3, 3..9;
print "\@numbers = @numbers\n";
