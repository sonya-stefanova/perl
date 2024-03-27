#!/usr/local/bin/perl

use strict;
use warnings;

# Goal: local_time_formatter subroutine formats the current local time in the following date format: ‘DD-MM-YYYY HH:mm:SS‘
# Example: ‘19-01-2024 19:20:06’.

# Params:

#   ($sec,$min,$hour,$mday,$mon,$year) - the seconds, minutes, hoirs, days, months, and the year as components of the localtime function;
#

# Returns: $formatted_local_time: formatted date


# Define a subroutine format_local_time to format the current local time:
sub format_local_time {
    my ($sec,$min,$hour,$mday,$mon,$year) = @_; #unpack the arguments of the local time
    
    #Correct the year and the month so to show current data:
    $year += 1900; # $year contains the number of years since 1900;
    $mon++; # Months are 0-based; that's why increase with 1 is needed;
    
    # Data string formatting
    my $formatted_local_time = sprintf("%02d-%02d-%04d %02d:%02d:%02d", $mday, $mon, $year, $hour, $min, $sec);
    
    return $formatted_local_time; # returns the formatted local time;
}

# Get the attributes of local time by using the function localtime();
my ($sec,$min,$hour,$mday,$mon,$year) = localtime(); 

# Call the format_local_time subroutine to format the local time;
my $formatted_time = format_local_time($sec,$min,$hour,$mday,$mon,$year);

# Print the formatted time
print "Local time is: $formatted_time\n\n";