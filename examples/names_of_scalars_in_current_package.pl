#!/usr/local/bin/perl

 

	# print the names of all scalars in the current package
	package MyPackage;
	use SymbolTable;

	our $our_scalar=0; $our_scalar++;

	my $st = SymbolTable->New('SCALAR');
	foreach my $scalar (keys(%$st))
		{
		print "MyPackage contains scalar '$scalar'\n";
		}
