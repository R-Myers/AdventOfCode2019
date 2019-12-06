#!usr/bin/perl -l
use warnings;
use strict;

open my $handle, '<', 'day1input.txt';
chomp(my @lines = <$handle>);
close $handle;

my $sum = 0;
foreach(@lines){
	my $mass = $_;
	$mass = ($mass/3);
	$mass = int($mass);
	$mass -= 2;
	$sum += $mass;
}

print $sum;
