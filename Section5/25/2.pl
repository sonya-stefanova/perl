#!/usr/bin/perl

@arr = (100, 200, 300);

#splice @arr, 0, 2, (1..10);
splice @arr, 0, 2;
print "\@arr = @arr\n";
