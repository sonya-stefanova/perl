#!/usr/bin/perl

$_ = "Popeye loves spinach and Olive Oyl\n";

s/ oyl /oil/ix;		# Notice the 'i' and 'x' modifiers that ignore case and pattern white space.
print;

s/olive oil/more spinach/i;
print;

s/spinach/Olive Oyl/i;	# Popeye love Olive Oyl and more spinach.
print;

s/spinach/Olive Oyl/i;	# Popeye loves Olive Oyl and more Olive Oyl.
print;

s/Olive Oyl/squash/g;	# 'g' modifier modifies all matches on a line.
print;			# $_ now say, "Popeye loves squash and more squash.
