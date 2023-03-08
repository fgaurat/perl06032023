#!perl.exe
use strict;
use warnings;


# $ => scalaire
# @ => liste
# % => table hashtable

my %h = ("DURAND" => "Jean", "MARTIN" => "Louis" ,"DUPONT" => "Robert");

print("\n");
print(%h);
print("\n");
print("%h");
print("\n");
print( $h{'DURAND'});
print("\n");
$h{'DURAND'} = "Jacques";
print( $h{'DURAND'});
print("\n");
$h{'TOTO'} = "Titi";

my @names = keys %h;
my @names1 = keys %h;

my @first_name = values %h;

print("names : @names");
print("\n");
print("first_name : @first_name");
print("\n");

# my $t = %h;
my $t = @names;
print($t);
print("\n");
print("%h");
print("\n");


foreach my $n (@names) # ["MARTIN","TOTO","DURAND","DUPONT"]
{
    print( "Bonjour $n $h{$n}\n");
}

