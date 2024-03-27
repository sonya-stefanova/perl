#!/usr/bin/perl

use strict;

my %ticker_to_company;

$ticker_to_company{aapl} = 'Apple Inc.';
$ticker_to_company{orcl} = 'Oracle Corporation';
$ticker_to_company{fb} = 'Facebook, Inc.';
$ticker_to_company{dis} = 'The Walt Disney Company';
$ticker_to_company{amzn} = 'Amazon.com, Inc.';

print "The company name for ticker symbol 'fb' is $ticker_to_company{fb}\n";
