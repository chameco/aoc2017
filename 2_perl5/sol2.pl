#!/usr/bin/env perl

use v5.10.0;
use strict;
use warnings;

my $sum = 0;
while (<>) {
	chomp;
	my @values = sort { $b <=> $a } split "\t";
	OUTER: for (my $i = 0; $i < @values; $i++) {
		for (my $j = $i + 1; $j < @values; $j++) {
			if ($values[$i] % $values[$j] == 0) {
				say "Adding $values[$i] / $values[$j]";
				$sum += $values[$i] / $values[$j];
				last OUTER;
			}
		}
	}
}

say $sum;
