#!/usr/local/bin/perl


   	use SymbolTable;
 	my $st_pkg = SymbolTable->New('PACKAGE', 'main');

	foreach my $subpkg (keys(%$st_pkg))
		{
		print "package main contains package '$subpkg'\n";
		}
