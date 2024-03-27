#!/usr/bin/perl

# Goal: The Calculate_numbers subroutine aims to calculate the sum of positive and negative numbers in two resultative variables initially set to be 0;
#
# Params:
#   @list_of_numbers: List of numbers to calculate the positive and the negative sums;
#
# Returns:
#   ($sum_positive_nums, $sum_negative_nums): Returns a tuple of both resultative variables
#

  
#Define the subroutine (function) that calculates the positive and negative numbers in separate variables (private)
sub Calculate_numbers {
    my @list_of_numbers = @_;
    my $sum_positive_nums = 0;
    my $sum_negative_nums = 0;

    #Iterating over every number in the list_of_numbers and checking if the current number is positive or not. 
    #If positive, the respective sum_positive_nums variable should be increased with the value of the current number;
    #If not positive, the sum_negative_nums variable should be increased with the value of the current number;
    # We should envisage that the list may include 0 as a number which neither positive nor negative and report this respectively;
    foreach my $num (@list_of_numbers) {
        if ($num == 0) {
            # If the number zero is past to the list, it is nor a positive, neither a negative values, so we can skip it
            print("Note that 0 is not a positive/negative value\n");
            next;
        } elsif ($num > 0) {
            $sum_positive_nums += $num;
        } elsif ($num < 0) {
            $sum_negative_nums += $num;
        }
    }
    #The function returns the pair of positive and negative sum
    return ($sum_positive_nums, $sum_negative_nums);
}

#Initialise a variable holding the list of numbers
my @list_of_numbers = ();

#Calling the Calculate_numbers function with the above list argument
my ($sum_positive_nums, $sum_negative_nums) = Calculate_numbers(@list_of_numbers);

#Print statements for negative and positive sum calculations:
print "Calculated sum of positive numbers: $sum_positive_nums\n";
print "Calculated sum of negative numbers: $sum_negative_nums\n";
