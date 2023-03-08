#!perl.exe
use strict;
use warnings;

my @t = ("Valeur 1","Valeur 2","Valeur 3","Valeur 4");

my $cpt = 0;
# print($t[0]);
# print($t[1]);
# print($t[2]);
# print($t[3]);

my $taille = @t;
while($cpt < $taille )
{
    print("while ".$t[$cpt]);
    print("\n");
    $cpt++;
}

$cpt = 0;
do
{
    print("do while ".$t[$cpt]);
    print("\n");
    $cpt++;
}
while($cpt < $taille );

$cpt = 0;
until($cpt == $taille )
{
    print("until ".$t[$cpt]);
    print("\n");
    $cpt++;
}

for(my $i = 0; $i<10; $i++)
{
    print("$i\n");
}


foreach my $v (@t)
{
    print("foreach $v\n");
}
