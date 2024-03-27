foreach $num(1..9){
	print "The current number from the iteration is: $num\n";
	
}

@numbers = (18..20);
$len = scalar @numbers;
print "$len\n";

while ((my $index, my $num) = each(@numbers)){
	
	print "Index: $index ==> Values is: $num\n";
}