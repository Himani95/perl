#!/usr/bin/perl

use warnings;
use strict;

my $file = 'input.txt';
open(FH, "< $file") or die "Can't open file $!";
my @lines;
while (<FH>)
{       
#push @lines, $_;
#foreach $file(@lines){
if($_ =~m/hi/)
{
	print $_, "Does not contain";
}
if($_ =~ tr/aeiou//==1)
{
	print $_, "contains vowels\n";
}
my $char = "l";
my $count = () = $_ =~ /\Q$char/g;
if($count >= 2)
{
	print $_, "contains 2 or more l\n";
}
if($_ =~m/^h.t$/)
{
	print $_, "begins with h and ends with t\n";
}
}
#}
close(FH);      
