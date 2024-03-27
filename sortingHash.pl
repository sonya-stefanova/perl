my %common_word_count = (
    the => 54,
    and => 98,
    a   => 29,
);
# use sort with keys to sort the keys of a hash
foreach my $key (sort keys %common_word_count){
   print "$key\n";
}
#a
#and
#the

# to sort values use keys to lookup the values and a compare block to compare them
foreach my $key (sort {$common_word_count{$a} <=> $common_word_count{$b}} keys %common_word_count){
       print "$key: $common_word_count{$key}\n";
}
#a: 29
#the: 54
#and: 98