#!perl.exe
use strict;
use warnings;



my $a = "toto";
print $a;
print "\n";
my $b = $a;
print $b;
$a="tutu";
print "\n";
print $a;
print "\n";
print $b;
print "\n";
print "Avec Reference sur scalaire\n";
my $ref_a = \$a;
print $a;
print "\n";
print "ref_a : $ref_a";
print "\n";
print '${$ref_a} : '.${$ref_a};
print "\n";
print $$ref_a;
print "\n";
print "Avec Reference sur liste\n";

my @list = (10,20,30);
my $ref_list = \@list;
print($ref_list);
print "\n";
print(@$ref_list);
print "\n";
print($ref_list->[0]);
print "\n";

my @list2 = (10,20,30,40);
my $ref_list2 = [100,200,300,400];

print($ref_list2->[0]);
print "Avec Reference sur hastable\n";
my %h = ("DURAND" => "Jean", "MARTIN" => "Louis" ,"DUPONT" => "Robert");
my $ref_h = \%h;
print $ref_h;
print "\n";
print $$ref_h{'DURAND'};
print "\n";
print $ref_h->{'DURAND'};
print "\n";
print "Liste 2 dimensions\n";

my @list1 = (10,20,30);
my @list2 = (100,200,300);
my @list3 = (1000,2000,3000);

my @the_list =(\@list1,\@list2,\@list3);
print $the_list[1]->[1];
print "\n";

print "Liste de hash table\n";
my %h1 = ("name"=>"DURAND","first_name" => "Jean","age"=>42);
my %h2 = ("name"=>"MARTIN","first_name" => "Louis","age"=>32);
my %h3 = ("name"=>"DUPONT","first_name" => "Robert","age"=>62);

@the_list =(\%h1,\%h2,\%h3);

# print $the_list[0]->{"first_name"};
print $the_list[1]->{"first_name"};
# print $the_list[2]->{"first_name"};
print "\n";

foreach my $h (@the_list)
{
    print $h->{'name'}." ".$h->{'first_name'}."\n";
}

print "\n";

