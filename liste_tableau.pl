#!perl.exe
use strict;
use warnings;

my @tab = (1,"toto",3.2);

print $tab[0];
print "\n";
print $tab[1];
print "\n";

my @tab1= ("toto","tutu"," titi");

@tab1= qw#toto tutu titi#;
print(@tab1);
print "\n";
print($tab1[0]);
print "\n";

my @tab2= (0..10); # (0,1,2,3,4,5,6,7,8,9,10)
my @tab21=("a".."z");
print("tab2 @tab2\n");
print("tab21 @tab21\n");

print "\n";

my @tab3= ((0..10),"toto",(11..15));
print("@tab3");
print "\n";

my @tab4 = @tab2;
$tab4[0] = 1000;
print "tab4 ".$tab4[0];
print "\n";
print "tab2 ".$tab2[0];
print "\n";


# (1000,1,2,3,4,5,6,7,8,9,10)
@tab4 = ("toto","tutu","tata","titi");
#          0      1       2      3
print(@tab4);
print "\n";
print($tab4[-1]);
print "\n";

print "-" x 50;
print "\n";
print($tab4[-1]);
print "\n";
my $l = @tab4;
print("taille de tab4 ".$l);
print "\n";
push @tab4, "toto";
print "\n";

my $last = pop @tab4;
print("last $last\n");
$l = @tab4;
print("taille de tab4 ".$l);
print "\n";

print "\n";
print(@tab4);
print "\n";

my $s = "@tab4"; # $s => les éléments de @tab4 séparés par des espaces
my $taille = @tab4; # $taille => taille de la liste @tab4

print($s);
print "\n";

print "\n";

my @tmp = @tab4[1..3];
print("tmp : @tmp");
print "\n";
print("tab4 : @tab4");
print "\n";

print "-" x 50;
print "\n";
my @tab5 = (10,20,30,40);
(my $a,my $b) =  @tab5;
print($a);
print "\n";
print($b);
print "\n";
print "-" x 50;
(my $c,my @d) =  @tab5;
print "\n";
print $c;
print "\n";
print "@d";
print "\n";
print "-" x 50;
print "\n";
(my @e,my $f) = @tab5; # ne fonctionne pas

my @tab6 = (1,2,3);
my @tab7 = ("toto","tutu");

(@tab7,@tab6) = (@tab6,@tab7); # ne fonctionne pas

print("tab6 : @tab6");
print("\n");
print("tab7 : @tab7");
print "-" x 50;
print "\n";

@tab5 = (10,20,30,40);
($a,$b,my @last) =  @tab5;
print($a);
print "\n";
print($b);
print "\n";
print("@last");
print "\n";

print scalar(@tab5);
print "\n";




