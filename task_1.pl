#!/usr/local/bin/perl


sub Calculate_numbers{
	
	my @mubers_list = @_;
	my $sum_positive_numbers = 0;
	my $sum_negative_numbers = 0;
	
	foreach my $num (@mubers_list) {
		if ($num >0){
			$sum_positive_numbers += $num;
		} elsif ($num >0){
			$sum_negative_numbers+=$num;
		} else {
			print("0 is nor a positive neither a negative number);
			next
		}
	}
	

my @list_of_numbers = (-1, 1, 2, 3, -3, 0);

#Call the function
my ($sum_positive_numbers, $sum_negative_numbers) = Calculate_numbers(@list_of_numbers);

Print the results:
print("Calculated sum are as follows:\n $sum_positive_numbers\n $sum_negative_numbers\n\n");