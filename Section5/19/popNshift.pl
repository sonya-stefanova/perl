#!/Users/darrylpace/localperl/bin/perl

@family = qw( Bill Sarah Johnny );
$oldest = shift @family;

print "\$oldest is $oldest.\n";

unshift @family, "Bill";  unshift @family, "Grandma";
$oldest = shift @family;

print "\n\$oldest is $oldest.\n";
