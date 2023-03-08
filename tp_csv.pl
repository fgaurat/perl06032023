#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;


open(LEFICHIER,"<","MOCK_DATA.csv");
my @h;
my @f;
my @o;

while(my $ligne = <LEFICHIER>)
{
    my @cols = split(",",$ligne);
    # id,first_name,last_name, gender
    
    my %data = ("id"=>$cols[0],"first_name"=>$cols[1],"last_name"=>$cols[2],"gender"=>$cols[4]);
    
    if($data{'gender'} eq "Male")
    {
        push @h,\%data;
    }
    elsif($data{'gender'} eq "Female")
    {
        push @f,\%data;
    }
    else
    {
        push @o,\%data;
    }
}
close(LEFICHIER);

print(Dumper(@h));
# foreach my $ref_h (@h)
# {
#     print($ref_h->{'last_name'}."\n")
# }



