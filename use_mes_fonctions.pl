#!perl.exe
use strict;
use warnings;

# push @INC,"./";

require "mes_fonctions.pl";
# use -> compilation
# require -> exec


sub add_1{
    print("add_1");
}

# print("@INC");
my $c = MesFonctions::add_1(1,2);
add_1();
print($c);