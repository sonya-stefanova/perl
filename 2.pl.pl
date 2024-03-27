#!/usr/bin/perl

# Goal: The sub lists_of_positives_negative_numbers subroutine aims to check all numbers in the list whether they are positive or negative and push them in separate lists
#	containing the positive only and negative only numbers. Positive only numbers should be sorted in an ascending order. Negative only numbers should be sorted in descending number
# Params:

#   @list_of_numbers: List of numbers set as input from the terminal which should be iterated over to separate the positive and the negative numbers only in separate lists;
#
# Returns:
#   (\@sorted_positive_nums, \@sorted_negative_nums): Returns a tuple of sorted lists containing only positive or only negative numbers.
#

  
#Define the subroutine (function) that returns two sorted arrays of positive and negative numbers
sub lists_of_positives_negative_numbers {
    my @list_of_numbers = @_;
    my @positive_nums = (); #optional, used for clarity only
    my @negative_nums = (); #optional, used for clarity only

    #Iterating over every number in the list_of_numbers and checking if the current number is positive or not.  
    #A border-line case is the 0 number which is not positive/negative but could be added as an input;
    #If positive, the current number should be appended to the @positive_nums list
    #If negative, the current number should be appended to the @negative_nums list

    foreach my $num (@list_of_numbers) {
        if ($num == 0) {  # If the number zero is past to the list, it is nor a positive, neither a negative values, so we can skip it
            print("Note that 0 is nor a positive, neither a negative number\n");
            next;
        } elsif ($num > 0) { #If the current number in the list_of_numbers is positive, push it to the positive_nums list
            push(@positive_nums, $num);
        } else { #If the current number in the list_of_numbers is positive, push it to the negative_nums list
            push(@negative_nums, $num);
        }
    }

    #Sort the both lists of positive and negative nums
    my @sorted_positive_nums = sort { $a <=> $b } @positive_nums; #sorted ascending
    my @sorted_negative_nums = sort { $b <=> $a } @negative_nums; #sorted descending

    
    return (\@sorted_positive_nums, \@sorted_negative_nums); #The function returns a pair of sorted lists of positive and negative arrays (should be escaped as they will be flattened otherwise)
}

#Initialise an array holding input numbers from the console
print("Write down some positive and/ or negative numbers divided by space between them:...\n");
my $input = <STDIN>;
chomp($input);
@list_of_numbers = split(' ', $input);

print("Thank you!\n");  

# Calling the lists_of_positives_negative_numbers function
my ($sorted_positive_nums_reference, $sorted_negative_nums_reference) = lists_of_positives_negative_numbers(@list_of_numbers);

# Dereferencing the returned array references
my @sorted_positive_nums = @$sorted_positive_nums_reference;
my @sorted_negative_nums = @$sorted_negative_nums_reference;

# Print statements for negative and positive numbers:
if (scalar @sorted_positive_nums > 0){ #print statement for the case when there are positive numbers entered 
    print("Sorted list of positive numbers: " . join(", ", @sorted_positive_nums) . "\n");
} else {
    print("No positive numbers entered\n");#print statement for the case when there are no positive numbers entered 
}

if (scalar @sorted_negative_nums > 0) { 
    print("Sorted list of negative numbers: " . join(", ", @sorted_negative_nums) . "\n"); #print statement for the case when there are negative numbers entered
} else {
    print("No negative numbers entered\n"); #print statement for the case when there are no negative numbers entered
}