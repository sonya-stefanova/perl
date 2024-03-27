#!/usr/bin/perl

# Goal: The sub convert_binary_to_decimal aims to convert binary number/string to a decimal. It should consider that the string should be 32-chars long, pack it into 32-bit binary representation 
# and inpack it to interpret it as an unsigned long integer, which effectively turns it into a decimal number;
# Params:

#   $binary_num: input from the console
#
# Returns:
#   $decimal_number: decimal number as a result from the binary conversion
#


sub convert_binary_to_decimal {
    my ($binary) = @_; # The subroutine receives a binary string as an argument
    
    my $decimal_number = 0; # Initialize the decimal number to 0
    
    # Iterate over each character in the binary string
    foreach my $bit (split //, $binary) {
        # Multiply the current decimal number by 2 and add the value of the current bit
        $decimal_number = $decimal_number * 2 + $bit;
    }
    
    return $decimal_number; # Return the decimal number
}

# Prompt the user to enter a binary number
print 'Enter a binary number of your choice: ';
chomp(my $binary_num = <>); # Read input from the console and remove newline characters

# Call the subroutine to convert the binary number to decimal
my $decimal_num = convert_binary_to_decimal($binary_num);

# Print the result
print "Decimal representation of $binary_num is: $decimal_num\n";