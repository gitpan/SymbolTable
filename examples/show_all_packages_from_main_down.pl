#!/usr/local/bin/perl

	# print a representation of all package names current used.
  	use SymbolTable;

  	my $st = SymbolTable->New('PACKAGE', 'main');

	sub ShowPackages
	{
		my ($symbol_table, $indent)=@_;
	
		while( my($subpkgname, $subpkgsymtab)= each(%$symbol_table))
			{
			print $indent.$subpkgname."\n";
			ShowPackages($subpkgsymtab, $indent."\t");
			}
	}

	ShowPackages($st, "\t");
