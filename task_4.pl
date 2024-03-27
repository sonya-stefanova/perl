#!/usr/bin/perl

use strict;
use warnings;

# Goal: The pick_shortest_longest_string subroutine checks the lenght of predifined list of strings and find which is the shortest as well as the longest one. 
#	If there are strings with the same lenght as the longest and the shortest one, they are stored in separate lists returned all at the end
# Params:

#   @list_of_strings: List of strings with different or the same length
#   %output_hash: Hash with two keys to store the longest- and the shortest-lenght strings 
# Output: key-value pairs:Example:
#       longest -> hello_wordl
#       shortest -> tea

# Define a subroutine that finds both the shortest and the longest strings;
sub pick_shortest_longest_string {
    my ($list_of_strings_ref, $output_hash_ref) = @_; # Unpacking the arguments as references;
    
    # Check if there is only one word in the list
    if (scalar(@$list_of_strings_ref) <= 1) {
        $$output_hash_ref{'error'} = "Invalid input - Equal to or less than one string added into the list";
        return;
    }
    
    # Initialize empty string scalars for longest and shortest strings, initially set to the first string in the list
    my $longest_string = $$list_of_strings_ref[0]; 
    my $shortest_string = $$list_of_strings_ref[0]; 

    # Initialize lengths counter hash with key = "curr_length"
    my %lengths_counter;

    # Iterate over the list of strings and find out the longest and shortest one
    foreach my $curr_string (@$list_of_strings_ref) {
        
        # Check if the current string is longer than the longest and if so, assign the current string to the $longest_string scalar
        if (length($curr_string) > length($longest_string)) {
            $longest_string = $curr_string;
        }
        # Check if the current string is shorter than the $shortest_string and if so, assign the current string to the $shortest_string scalar
        if (length($curr_string) < length($shortest_string)) {
                $shortest_string = $curr_string;
           }

        # Increment the counter for the current string length
        $lengths_counter{length($curr_string)}++;
    }

    # Check if there are multiple strings with length equal to the length of the shortest/longest string
    my $error_message;
    
    if ($lengths_counter{length($longest_string)} > 1 || $lengths_counter{length($shortest_string)} > 1) {
        $error_message = "Error: No longest/shortest string detected. There are more than 1 word with the same longest/shortest length";
    }
    
    if ($error_message) {
        $$output_hash_ref{'error'} = $error_message;
    } else {
        # Assign the shortest/longest strings to the dereferenced output hash keys
        $$output_hash_ref{'longest'} = $longest_string;
        $$output_hash_ref{'shortest'} = $shortest_string;
    }
}

# Input data:
# Initialize a variable @list_of_strings with a random input of strings:
my @list_of_strings = ("tea", "coffee", "hello_wordl");
#my @list_of_strings = ("tea", "mea");
#my @list_of_strings = ("tea", "me");
#my @list_of_strings = ("tea");
#my @list_of_strings = ();

# Initialise an %output_hash that will store the output
my %output_hash;


# Call the subroutine to find out which are the longest and the shortest strings within the initialised @list_of_strings with arguments: reference to the list and to the resultative hash;
pick_shortest_longest_string(\@list_of_strings, \%output_hash);

# Print the contents of the hash
foreach my $key (keys %output_hash) {
    print "$key -> $output_hash{$key}\n";
}
