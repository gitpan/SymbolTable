	package DumpTheDumper;

	sub import
		{
		use SymbolTable;

		my $caller=caller;

		print "caller is '$caller'\n";

		my $st=SymbolTable->New('CODE', $caller);

		$st->{Dumper}= sub 
			{return "sorry, Dumper cant come to the phone now...";};

		}

	1;
