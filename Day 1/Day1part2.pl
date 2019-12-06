#!usr/bin/perl -l
use warnings;
use strict;

open my $handle, '<', 'day1input.txt';
chomp(my @modules = <$handle>);
close $handle;

my $fuelRequired = 0;
foreach(@modules){
	my $moduleFuel = int($_/3) - 2;
	$fuelRequired += $moduleFuel;
	
	my $fuelFuel = int($moduleFuel/3) - 2;
	$fuelRequired += $fuelFuel;
	
	do{
		$fuelFuel = int($fuelFuel/3) - 2;
		$fuelRequired += $fuelFuel
	}while ((int($fuelFuel/3) - 2) > 0 )

	
}

print $fuelRequired;