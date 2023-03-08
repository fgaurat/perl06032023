use strict;
use warnings;

package MesFonctions;

sub add_1
{
    scalar(@_)>=2 or die("2 params mini");
    
    (my $value1,my $value2) = @_;

    # my $value1 = $_[0];
    # my $value2 = $_[1];

    print("Fonction add\n");
    print("@_");
    print("\n");
    my $result = $value1+$value2;
    return $result;

}

# (10,20,30)
# (@values,@values1)
sub add_2
{
    (my $ref_value1,my $ref_value2) = @_;
    
    my @value1 = @$ref_value1;
    my @value2 = @$ref_value2;
    
    print('@_ : '."@_"); # (@values)
    print("\n");
    print(@value1);
    print("\n");
    print(@value2);
    print("\n");

    return 0;
}

sub say_hello
{
    print('@_ : '."@_"); # (@values);
    print("\n");
    my %params = @_;
    
    print($params{'name'});
    print("\n");
    print($params{'firstname'});
    print("\n");

    return "Bonjour $params{'name'} $params{'firstname'}";
}


1;