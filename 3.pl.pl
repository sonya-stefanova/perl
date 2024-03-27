#!/usr/bin/perl

# Goal: The goal of the programme is to tranform a list of numbers into two separate hash data structures with positive and negative values where the following logic is valid:
#   %positive_numbers_hash = (‘0' => 5, '2' => 3, ‘3' => 10, '4' => 8) ;
#   %negative_numbers_hash = ( '1' => -2, '5' => -12.7, '6' => -142.97) ;
# hash keys should be the list index of the current number;
# hash value should be the list value of the current number;
#
# Params:
#   @list_of_numbers: predefined list containing the following numbers: 5   -2   3   10   8   -12.7   -142.97
#
# Returns:
#   %positive_numbers_hash = (‘0' => 5, '2' => 3, ‘3' => 10, '4' => 8)
#   %negative_numbers_hash = ( '1' => -2, '5' => -12.7, '6' => -142.97) 
#

  
#Define the subroutine (function) that returns two hash structures with key: $list_of_numbers[current_index] - value: list of numbers value:
sub transform_list_into_hashes {
    my @list_of_numbers = @_; #setting the arguments in the body of the subroutine;
    my %positive_numbers_hash = (); #declare empty hash for positive numbers
    my %negative_numbers_hash = (); #declare empty hash for negative numbers
    
    
   #While looping through every number of the list by shifting each one. This is a condition to avoid an infinite loop. 

    my $num_index = 0;     #Declaring variable num_index starting from 0 (corresponding to the index) and increasing with 1 after each iteration
    my $number_status;     # Declaring number_status scalar storing the status of the current number shifted from the list - positive or negative number
    

    while (@list_of_numbers){
        my $num = shift @list_of_numbers; #$num stores the first number of the list of numbers

        $number_status = ($num > 0) ? "positive" : "negative"; #$number_status stores the status of the current number shifted from the list - positive or negative number for the particular iteration

        # Distribute the key=>value pairs according to the number_status:
    
        if ($number_status eq "positive") {
                $positive_numbers_hash{$num_index} = $num;  
        } else {
                $negative_numbers_hash{$num_index} = $num;
        }
        $num_index++; # increase the index with 1 to keep track of the number position
    }
    return (\%positive_numbers_hash, \%negative_numbers_hash); # The function returns two hashes consisting of positive / negative numbers  extracted from a predefined list
}
# Initialise an array variable holding a predefined set of numbers
my @list_of_numbers =  (5, -2, 3, 10, 8, -12.7, -142.97);    


# Calling the lists_of_positives_negative_numbers function
my ($positive_numbers_hash_ref, $negative_numbers_hash_ref) = transform_list_into_hashes(@list_of_numbers);
my %positive_numbers_hash = %$positive_numbers_hash_ref;
my %negative_numbers_hash = %$negative_numbers_hash_ref;


# Print statements to test for correct output:
while (($key, $value) = each (%positive_numbers_hash))
{
  print "$key is the index of positive $value\n";
}

while (($key, $value) = each (%negative_numbers_hash))
{
  print "$key is the index of negative $value\n";
}



#Test the sum of sizes of each hash is equal to the size of the initial list. The test case asserts that all numbers from the list_of_numbers have been properly processed.

$size_positive_numbers_hash = keys %positive_numbers_hash;
$size_negative_numbers_hash = keys %negative_numbers_hash;
$total = $size_positive_numbers_hash + $size_negative_numbers_hash; 

$test_size_status = ($total == scalar(@list_of_numbers)) ? "Test met" : "Test is not met"; 
print "Test size status: $test_size_status\n"; 


