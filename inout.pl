#!/usr/bin/perl
use strict;
use warnings;

# print("Votre nom : ");

# # STDIN = entrée standard => clavier
# # STDOUT = sortie standard => écran
# # STDERR = sortie d'erreur => écran/fichier/log
# my $value = <STDIN>;

# print STDOUT "Bonjour $value";
# print "Bonjour $value";

# open(LEFICHIER,">","lefichier.txt"); Ecriture
# open(LEFICHIER,">>","lefichier.txt"); Ajout 

open(LEFICHIER,">>","lefichier.txt");
print LEFICHIER "Hello\n";
close(LEFICHIER);

open(LEFICHIER,"<","lefichier.txt");

# my $ligne = <LEFICHIER>;
# print($ligne);

# my @ligne = <LEFICHIER>;
# print("@ligne");

my %ligne = <LEFICHIER>;
print(%ligne);
# while(my $ligne = <LEFICHIER>)
# {
#     print($ligne);
# }

close(LEFICHIER);
