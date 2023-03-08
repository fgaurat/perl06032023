#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
use Text::CSV qw( csv );


my $file = "MOCK_DATA.csv";
my $aoh = csv (in => $file,headers => "auto");   # as array of hash

print(Dumper($aoh));
