#!/usr/local/bin/perl


	package MyPackage::SubPackageOne;
	package MyPackage::SubPackageTwo;
	package MyPackage;
	use SymbolTable;

	my $st = SymbolTable->New;
	foreach my $subpkg (keys(%$st))
		{
		print "MyPackage contains package '$subpkg'\n";
		}
