#!usr/bin/perl -l
use warnings;
use strict;
use v5.10;

open my $handle, '<', 'day2input.txt';
chomp(my $data = <$handle>);
close $handle;

my @values = split(',', $data);

for(my $noun = 0; $noun <= 99; $noun++)
{
	for(my $verb = 0; $verb <= 99; $verb++)
	{
		my @valuesCopy = @values;

		my $result = instructions(\@valuesCopy, $noun, $verb);
		
		if($result == 19690720)
		{
			print ((100*$noun)+$verb);
		}
	}
}

sub instructions{

	my $values = $_[0];
	my $noun = $_[1];
	my $verb = $_[2];

	$values->[1] = $noun;
	$values->[2] = $verb;

	for (my $i = 0; $i < scalar @{$values}; $i+=4){
		
		if($values->[$i] == 1)  { 
			$values->[$values->[$i+3]] = $values->[$values->[$i+1]] + $values->[$values->[$i+2]];
		}
		if($values->[$i] == 2) {  
			$values->[$values->[$i+3]] = $values->[$values->[$i+1]] * $values->[$values->[$i+2]];
		}
		if($values->[$i] == 99) {  
			last;
		}
		
	}
	return $values->[0];
}