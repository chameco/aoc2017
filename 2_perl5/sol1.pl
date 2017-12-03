#!/usr/bin/env perl

use v5.10.0;
use strict;
use warnings;

my $sum = 0;
while (<>) {
	chomp;
	my @values = split("\t");
	my $max = 0;
	my $min = 2 ** 32 - 1;
	foreach my $val (@values) {
		if ($val > $max) { $max = $val; }
		if ($val < $min) { $min = $val; }
	}
	$sum += $max - $min;
}

say $sum;
