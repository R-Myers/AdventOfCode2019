#!usr/bin/perl -l
use warnings;
use strict;

open my $handle, '<', 'day2input.txt';
chomp(my $data = <$handle>);
close $handle;

my @values = split(',', $data);

for (my $i = 0; $i < scalar @values; $i+=4){
	
	if($values[$i] == 1)  { 
		
		$values[$values[$i+3]] = $values[$values[$i+1]] + $values[$values[$i+2]];
	}
	if($values[$i] == 2) {  
		$values[$values[$i+3]] = $values[$values[$i+1]] * $values[$values[$i+2]];
	}
	if($values[$i] == 99) {  
		last;
	}
	
}

print $values[0];
