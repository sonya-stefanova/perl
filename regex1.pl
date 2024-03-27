#!/usr/bin/perl

$_ = "Hello, hello there, Sonya\n";

if (m|sonya|xi){
	print;

}else{
	print "No match here\n";
	
}


if (m|Hello .*  sonya  |xsi){
	print "Yes, the sentence matches";

}else{
	print "Sorry, no match!\n";
	
}
