#!/usr/bin/perl

use strict;
use warnings;

# Goal: The pick_shortest_longest_string subroutine checks the lenght of predifined list of strings and find which is the shortest as well as the longest one. 
#	If there are strings with the same lenght as the longest and the shortest one, they are stored in separate lists returned all at the end
# Params:

#   @list_of_strings: List of strings with different or the same length
#   %output_hash: Hash with two keys to store the longest- and the shortest-lenght strings 
#


# Define a subroutine that finds both the shortest and the longest strings;
sub pick_shortest_longest_string {
    my ($list_of_strings_ref, $output_hash_ref) = @_; # Unpacking the arguments as references;

    # Initialize empty string scalars for longest and shortest strings, initially set to the first string in the list
    my $longest_string = $$list_of_strings_ref[0]; 
    my $shortest_string = $$list_of_strings_ref[0];

    # To consider the cases when same-length words are present in the list, initialize lists to store strings of the same length as the longest and shortest strings
    my @array_of_longest;
    my @array_of_shortest;

    
    # Iterate over the list of strings and find out the longest and shortest one
    foreach my $curr_string (@$list_of_strings_ref) {
        # Check if the current string is longer than the longest
        if (length($curr_string) > length($longest_string)) {
            $longest_string = $curr_string;
            @array_of_longest = (); # When another longest string is found - reset the valuea as this list is no longer valid;
        } elsif (length($curr_string) == length($longest_string)) {
            push(@array_of_longest, $curr_string); # If the lenght of the current string eq the length of the longest one, push the $curr_string to the list
        }

        # Check if the current string is shorter than the shortest
        if (length($curr_string) < length($shortest_string)) {
            $shortest_string = $curr_string;
            @array_of_shortest = (); # Reset the list when a new shortest string is found since this is no longer relevant
        } elsif (length($curr_string) == length($shortest_string)) {
            # If the length of the current string equals the length of the shortest one and it's not already in the array, push it
            push(@array_of_shortest, $curr_string) unless grep { $_ eq $curr_string } @array_of_shortest;
        }
     }

    # Assign the results to the output hash while dereferencing and using anonymous array (flattening the list of the longest string and the longest/shortest list array)
    $$output_hash_ref{'longest'} = [$longest_string, @array_of_longest];
    $$output_hash_ref{'shortest'} = [$shortest_string, @array_of_shortest];
}
#Input data:
# Initialize a variable @list_of_strings with a random input of strings:
#my @list_of_strings = ("tea", "coffee", "beer", "wine", "water", "mo", "em", "picnic", "micnin");
my @list_of_strings = ("tea", "coffee", "largest_string");

# Initialise an %output_hash that will store the output
my %output_hash;


# Call the subroutine to find out which are the longest and the shortest strings within the initialised @list_of_strings with arguments: reference to the list and to the resultative hash;
pick_shortest_longest_string(\@list_of_strings, \%output_hash);


# Print the results as strings:
print "Longest string(s) ==> ";
print $output_hash{'longest'}[0]; # Print the longest string
if (scalar @{$output_hash{'longest'}} > 1) {
    print ", " . join(", ", @{$output_hash{'longest'}}[1..$#{$output_hash{'longest'}}]); # Print additional strings if present
}
print "\n";

print "Shortest string(s) ==> ";
print $output_hash{'shortest'}[0]; # Print the shortest string
if (scalar @{$output_hash{'shortest'}} > 1) {
    print ", " . join(", ", @{$output_hash{'shortest'}}[1..$#{$output_hash{'shortest'}}]); # Print additional strings if present
}
print "\n";
