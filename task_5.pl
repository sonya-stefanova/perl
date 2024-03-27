#!/usr/bin/perl

# Goal: The sub convert_binary_to_decimal aims to convert binary number/string to a decimal. 
# It should consider that the string should be 32-chars long, pack it into 32-bit binary representation 
# and inpack it to interpret it as an unsigned long integer, which effectively turns it into a decimal number;
# Params:

#   $binary_num: input from the console
#
# Returns:
#   $decimal_number: decimal number as a result from the binary conversion
#


# A subroutine is defined to convert an input binary number into a decimal number
sub convert_binary_to_decimal {
    my ($binary) = @_; # the subroutine receives a binary string as an argument
    
    # Ensure that the input string is 32 characters long. Complete the string with zeros up to the 32-chars length by concatenation with the originally entered string/number
    $transformed_binary_string = ("0" x (32 - length($binary))) . $binary;
    
    # Pack the transformed string into a 32-bit binary representation. Then, use the unpack function to convert the binary-packed string to its decimal form.
    my $decimal_number = unpack("N", pack("B32", $transformed_binary_string));
    
    return $decimal_number; # Return the decimal number
}

#Enter a valid binary number as an input from the console:
print 'Enter a binary number of your choice: ' ;
chomp ( my $binary_num = <> ); #clean the code from trailing \n;

#define the resultative decimal value:
my $decimal_num;

#Call the subroutine implementing the logic and assign it to the $decimal_number
$decimal_num = convert_binary_to_decimal($binary_num);

#Print the output containing the input value, transformed value, and the decimal output for testing purposes:
print("$binary_num was transformed to $transformed_binary_string 32-bit binary string and converted to decimal number: $decimal_num\n");
