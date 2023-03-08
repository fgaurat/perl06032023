#!perl.exe
use strict;
use warnings;

# perl add.pl 12 24 => @ARGV = [12,24]

my $cpt =0;
$cpt++; # ++ : $cpt incrémenté de 1
$cpt--; # -- : $cpt décrémenté de 1

if (scalar(@ARGV) >= 2)
{
    my $result = 0;
    my $show_operation = "";
    foreach my $value (@ARGV)
    {
        
        $result += $value; #$result = $result+$value;
        $show_operation .= "$value+"; # $show_operation = $show_operation."$value+";
    }

    # my $a = $ARGV[0];
    # my $b = $ARGV[1];
    # my $c= $a+$b;
    # print("$a+$b = $c");
    chop($show_operation);
    print($show_operation."=$result");
    print("\n");
}
else
{
    print "Il manque des paramètres ! (au moins 2 paramètres attendus)";
}
