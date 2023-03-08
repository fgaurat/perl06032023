#!perl.exe
use strict;


$var1 = "Bonjour";

my $test = 1;

if ($test==1)
{
    print "Dans le test $var1\n"; # Bonjour
    my $var1 = "toto";
    print "Dans le test $var1\n"; # toto
}

print "Après le test $var1\n"; # Bonjour

print"\n";