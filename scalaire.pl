#!perl.exe
use strict;
use warnings;


# scalaire int, float
my $a = 1.23;
my $b = 2_000_000.4_812;
my $c = $a+$b;
my $d = 1E3;
print $d;
print "\n";


print $a;
print "\n";
print $c;
print "\n";


# scalaire chaîne de caractère

my $s1 = "Bonjour";
print $s1;
print "\n";
print "$s1 $a\n";
# print '$s1\n';


my $name = "Fred";
print "Bonjour $name\n";


my $say_hello = 'Bonjour $ @ % '.$name;
print "\n";
print "\n";
my $say_hello3 = "Bonjour \$ \@ \% ".$name;
print $say_hello3;
print "\n";

my $path ="c:\\program files\\toto\\nunu\\$name";
my $path2 ='c:\program files\toto\nunu\\'.$name;
print $path;
print "\n";
print $path2;
print "\n";
my $o = 'L\'orage gronde'; 
print $o;
print "\n";

# 3 variables nom, prenom, age => affiche Bonjour Robert DUPONT 46 ans

my $name="DUPONT";
my $first_name="Robert";
my $age=46;

print "Bonjour $first_name $name $age ans";
print "\n";

$_ = "Bonjour";

print;