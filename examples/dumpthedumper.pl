#!/usr/local/bin/perl

	use Data::Dumper;
	use DumpTheDumper;

	my $test_var = [ qw ( alpha bravo charlie delta ) ];

	print Dumper $test_var;
