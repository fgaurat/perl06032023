#!perl.exe
use strict;
use warnings;

my $v = 2;

# if($v==1){
#     print("bonjour");
# }
# print("\n");

print "bonjour if" if 1 == $v;
print("\n");
print "bonjour unless" unless $v ==1;
print("\n");

# my $v2 = "";
# if($v==1){
#     $v2 = "OK";
# }
# else{
#     $v2 = "KO";
# }
# print($v2);

my $v2 = $v == 1?"OK":"KO"; # notation ternaire SI(CONDITION;RESULTAT_VRAI;RESULTAT_FAUX)
print($v2);
print("\n");