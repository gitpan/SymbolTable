#!/usr/local/bin/perl

	package OtherPackage;
	our $our_scalar=13;

	package MyPackage;
	use SymbolTable;

	my $st = SymbolTable->New('SCALAR', 'main::OtherPackage');
	my $val = $st->{our_scalar};
	print "val is $$val\n";


