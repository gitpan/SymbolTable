#!/usr/local/bin/perl

	package OtherPackage;
	our $our_scalar=13;

	package MyPackage;
	use SymbolTable;

	my $st = SymbolTable->New('SCALAR', 'main::OtherPackage');

	# using a reference to a CONSTANT.
	$st->{our_scalar}=\42;

	# can still be read
	print "OtherPackage::our_scalar is ";
	print $OtherPackage::our_scalar ."\n";

	# assignment causes error:
	# "Modification of a read-only value attempted"
	$OtherPackage::our_scalar = 3;

